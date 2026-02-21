PUSH            {R4-R10,LR}
MOV             R4, R0
ADD             R6, R0, #0x300
CMP             R1, #5; switch 5 cases
LDR             R7, =off_6D1648
LDR             R9, =0xFFFF
LDR             R8, =off_68BBB8
MOV             R5, R2
LDR             R0, [R7]
LDRCC           PC, [PC,R1,LSL#2]; switch jump
POP             {R4-R10,PC}; jumptable 00198F74 default case
DCD loc_198F90; jump table for switch statement
LDR             R1, [R4,#0x120]; jumptable 00198F74 case 0
TST             R1, #5
BNE             def_198F74; jumptable 00198F74 default case
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0x90]
CMP             R0, #0
BNE             def_198F74; jumptable 00198F74 default case
VLDR            S0, [R4,#0xA4]
VLDR            S1, [R5,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             def_198F74; jumptable 00198F74 default case
VLDR            S0, [R4,#0xA8]
VLDR            S1, [R5]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             def_198F74; jumptable 00198F74 default case
VLDR            S0, [R4,#0xAC]
VLDR            S1, [R5,#0xC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             def_198F74; jumptable 00198F74 default case
VLDR            S0, [R4,#0xB0]
VLDR            S1, [R5,#8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             def_198F74; jumptable 00198F74 default case
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #0
BL              sub_19AD54
LDR             R0, [R4,#0x120]
BIC             R0, R0, #8
ORR             R0, R0, #1
STR             R0, [R4,#0x120]
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
MOV             R1, #1
STR             R4, [R0,#0x1CC]
MOV             R0, R4
STRH            R9, [R6,#0xCE]
BL              sub_1FF828
LDR             R0, [R4]
LDR             R1, [R0,#0xBC]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0xC4]
MOV             R0, R4
BLX             R1
LDRD            R0, R1, [R8,#(off_68BBD0 - 0x68BBB8)]
STRD            R0, R1, [R4,#4]
POP             {R4-R10,PC}
LDR             R1, [R4,#0x120]; jumptable 00198F74 case 1
TST             R1, #1
BNE             def_198F74; jumptable 00198F74 default case
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0x90]
CMP             R0, #0
BNE             def_198F74; jumptable 00198F74 default case
VLDR            S0, [R4,#0xA4]
VLDR            S1, [R5,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             def_198F74; jumptable 00198F74 default case
VLDR            S0, [R4,#0xA8]
VLDR            S1, [R5]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             def_198F74; jumptable 00198F74 default case
VLDR            S0, [R4,#0xAC]
VLDR            S1, [R5,#0xC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             def_198F74; jumptable 00198F74 default case
VLDR            S0, [R4,#0xB0]
VLDR            S1, [R5,#8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             def_198F74; jumptable 00198F74 default case
MOV             R0, R4
POP             {R4-R10,LR}
B               sub_197318
LDR             R0, [R4,#0x120]; jumptable 00198F74 case 2
TST             R0, #1
BEQ             def_198F74; jumptable 00198F74 default case
TST             R0, #4
BEQ             loc_199198
POP             {R4-R10,PC}
NOP; jumptable 00198F74 case 3
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
CMP             R0, R4
BNE             def_198F74; jumptable 00198F74 default case
LDR             R0, [R4,#0x120]
BIC             R0, R0, #3
STR             R0, [R4,#0x120]
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
MOV             R1, #0
STR             R1, [R0,#0x1CC]
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              sub_19AD54
ADD             R8, R8, #0x28 ; '('
MOV             R0, R4
LDM             R8, {R1,R2}
MOV             R3, #0
POP             {R4-R10,LR}
B               sub_1F3CE0
LDR             R0, [R4,#0x120]; jumptable 00198F74 case 4
TST             R0, #1
BEQ             def_198F74; jumptable 00198F74 default case
TST             R0, #4
BNE             def_198F74; jumptable 00198F74 default case
LDRH            R0, [R6,#0xCE]
CMP             R0, R9
BNE             def_198F74; jumptable 00198F74 default case
MOV             R0, R4
POP             {R4-R10,LR}
B               sub_1999E0
