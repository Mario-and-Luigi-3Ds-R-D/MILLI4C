PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R1, R0, #0x368
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             locret_1D50B8
ADD             R0, R0, #0x3A0
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             locret_1D50B8
ADD             R0, R4, #0x19C000
VLDR            S0, =2.0
ADD             R0, R0, #0x1F40
BL              sub_4E64EC
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDR             R0, [R1,#(off_65419C - 0x653FC0)]; sub_1D50C4
LDR             R1, [R1,#(dword_6541A0 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R4,PC}
