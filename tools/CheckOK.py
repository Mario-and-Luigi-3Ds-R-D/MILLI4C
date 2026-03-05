# Made by user Moddimation, WIP on Building System.

print ("Enumerating and checking ...")
    
from colorama import Fore, Style
from Bin.parseMap import *
from Bin.parseELF import *
import multiprocessing
import threading
import argparse
import time
import shutil
import sys

is_skip_mode = False
is_sim_mode = False
is_silent = False
is_log = False
found_flag = False
csv_path = getFuncSymFile()
log_path = f"{getProjDir()}/data/ver/{get_ver}/.changes"

def rank_symbol(sym, decomp_sym):
    sym_size = int(sym[2])
    decomp_size = int(decomp_sym[1])

    if decomp_size == 0:
        decomp_size = sym_size

    out = str(subprocess.check_output(f'\"{sys.executable}\" "{Path(getProjDir()) / "tools" / "asm-differ" / "diff.py"}" --format json {sym[0] - 0x00100000} {decomp_sym[0] - 0x00100000} {sym_size} {decomp_size}', shell=True))

    if not "CURRENT" in out:
        raise RuntimeError(f"Unexpected output when running asm-differ:\n{out}")
    
    rank = 'O'
    if "diff_change" in out:
        rank = 'm'
    if "diff_add" in out or "diff_remove" in out:
        if out.count('diff_add') == out.count('diff_remove'):
            rank = 'm'
        else:
            rank = 'M'
    
    return rank

def getRankName(rank: str):
    match rank:
        case 'O':
            return Fore.GREEN + "OK" + Fore.RESET
        case 'm':
            return Fore.YELLOW + "Minor problems" + Fore.RESET
        case 'M':
            return Fore.RED + "Major problems" + Fore.RESET
        case 'U':
            return "Undecompiled"
    return '?'

def getRankMsg(prev, now):
    if now == 'O':
        if prev == 'U': return "Perfectly Ok."
        if prev in ('m','M'): return "Now Ok."
        return "Ok."
    if now == 'U':
        if prev == 'O': return "Completely Undefined."
        if prev in ('m','M'): return "Now Undefined."
        return "Not Decompiled."
    if now == 'M':
        if prev == 'O': return "Oops, Now Mismatching."
        if prev == 'U': return "Getting closer, now Mismatching."
        if prev == 'm': return "Made it worse, Mismatching."
        return "Still Mismatching."
    if now == 'm':
        if prev == 'O': return "Change it back, Minor Mismatch."
        if prev == 'U': return "Very close, Minor Mismatch."
        if prev == 'M': return "Getting close, Minor Mismatch."
        return "Still minor Mismatching."
    return '?'

def printf(str, end='\n'):
    if is_silent:
        return
    print(str, end=end)

def clear_line():
    printf (' ' * shutil.get_terminal_size((80, 20)).columns, end='\r')

def print_progress(name, prog, rank):
    printf (Fore.LIGHTRED_EX + f"[{prog}%] " + Fore.LIGHTCYAN_EX + name + Fore.RESET + Style.RESET_ALL + f" ({rank})", end='\r')

def check_syms():
    syms = read_sym_file()
    newsyms = []
    sym_addrs = []
    sym_sizes = []
    do_rewrite = False
    is_error = False
    sym_num = len(syms)
    if sym_num == 0:
        print ("No symbols found in csv.")
        return
    last_sym_addr = syms[sym_num-1][0]
    first_sym_addr = syms[0][0]
    last_name = ""
    log = []

    for sym in syms:
        size=sym[2]
        addr=sym[0]
        oldrank=sym[1]
        rank='U'
        name=sym[3]
        tag=sym[4]

        progress = ((addr-first_sym_addr) / (last_sym_addr-first_sym_addr)) * 100
        progress = round(progress, 1)

        # check addr dupl
        if addr in sym_addrs:
            print (f"0x{addr:08X} appears more than once!")

        sym_addrs.append(addr)
        sym_sizes.append(size)

        # check no name
        if is_skip_mode or not name or len(name) == 0:
            newsyms.append(sym)
            continue
        #continue
        # try get symbol from elf
        decomp_symbol = get_elf_symbol(name)
        if not decomp_symbol is None:
            rank = rank_symbol(sym, decomp_symbol)

        # main adding
        newsyms.append((addr, rank, size, name, tag))
        last_name = name
        clear_line()
        print_progress (last_name, progress, rank)
        if oldrank != rank:
            change = f"{name} {oldrank} -> {rank} ({getRankMsg(oldrank, rank)})"
            print (change)
            log.append(change)
            do_rewrite = True

    clear_line()

    # post check before writing
#    mySyms = [(int(sym_addrs[i]), int(sym_sizes[i])) for i in range(len(sym_addrs))]
#    mySyms.sort(key=lambda x: x[0])
#    for i in range(len(mySyms) - 1):
#        addr, size = mySyms[i]
#        next_addr = mySyms[i + 1][0]
#        if addr + size > next_addr:
#            print (f"MAP OVERLAP: 0x{addr:08X} overlaps with 0x{next_addr:08X}")
#            is_error = True
#
#    if is_error and do_rewrite:
#        print ("Errors detected, cannot update map. Please fix!")
#        if is_sim_mode or is_skip_mode:
#            print (r"... you ran in simulation mode anyways so \_(ツ)_/")
#        return

    if is_error:
        print ("Errors detected, but no changes. Please fix!")
        return

    if is_sim_mode or is_skip_mode:
        print ("Simulation mode, not updating map file")
        return

    if not do_rewrite:
        print ("Everything up to date")
        return

    if is_log:
        print ("Writing log")
        with open(log_path, 'w') as f:
            for line in log:
                f.write(f"{line}\n")

    else:
        print ("Updating map ...")
        # read
        with open(csv_path, 'r') as src, open(csv_path + '_b', 'w') as dst:
            dst.write(src.read())
        # write
        with open(csv_path, 'w') as f:
            f.write("Address,Rank,Size,Symbol,Tag\n")
            for sym in newsyms:
                f.write(f"0x{sym[0]:08X},{sym[1]},{sym[2]:06d},{sym[3]},{sym[4]}\n")
        

def check_sym(symbol_name):
    dec = get_elf_symbol(symbol_name)
    if dec is None:
        print (f"Symbol {symbol_name} not found in build.")
        return

    syms = read_sym_file()
    for sym in syms:
        if symbol_name != sym[3]:
            continue

        prevrank = sym[1]
        nowrank = rank_symbol(sym, dec)

        if found_flag and prevrank != nowrank:
            # update CSV
            file = open(csv_path, "r").readlines()
            newline = f"0x{sym[0]:08X},{nowrank},{sym[2]:06d},{sym[3]},{sym[4]}\n"
            for i, line in enumerate(file):
                if symbol_name == line.split(',')[3]:
                    file[i] = newline
                    break
            with open(csv_path, "w") as f:
                f.writelines(file)

            # Always print rank change in literal format for single symbol
            print (f"{prevrank} -> {nowrank} ({getRankMsg(prevrank, nowrank)})")
        else:
            # Print the normal message for unchanged single symbol
            printf (getRankMsg(prevrank, nowrank))
        break

def main():
    global found_flag
    global csv_path
    global is_skip_mode
    global is_sim_mode
    global is_silent
    global is_log

    parser = argparse.ArgumentParser()
    parser.add_argument("-f", action="store_true", help="Skip rank checking (fast)")
    parser.add_argument("-s", action="store_true", help="Simulation mode (don't write file)")
    parser.add_argument("-q", action="store_true", help="Dont print progress")
    parser.add_argument("-w", action="store_true", help="Log changes to file (No csv update)")
    parser.add_argument("sym", nargs="?", help="Only check this symbol")
    args = parser.parse_args()

    is_skip_mode = args.f
    is_sim_mode = args.s
    is_silent = args.q
    is_log = args.w

    with open(Path(getBuildPath()) / "compile_commands.json", "r") as f:
        if any("NON_MATCHING" in line for line in f): # check if we compiled for Matching-only build
            found_flag = True
    if not found_flag:
        csv_path = getFuncSymFile().rsplit('.csv', 1)[0] + '_test.csv'
        print("Info: TEST MODE. You need to compile without -m (only matching) to rebuild the functions map. This output will be written to data/*_test.csv")

    if args.sym:
        check_sym(args.sym)
    else:
        start = time.time()
        check_syms()
        clear_line()
        print(f"{int(time.time() - start)}s elapsed")

if __name__ == "__main__":
    main()