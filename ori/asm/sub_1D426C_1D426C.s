PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, R0, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R0, R0, #0x3A0
LDR             R1, =0x19DF78
ADD             R5, R4, #0x19C000
VLDM            R0, {S0-S1}
ADD             R5, R5, #0x1F40
ADD             R6, R4, R1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_1D42B8
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [R6]
STR             R0, [R5,#4]
STR             R0, [R5]
POP             {R4-R8,PC}
MOV             R0, #0xFF
REV             R7, R0
MOV             R0, R5
BL              sub_4E63E0
STR             R7, [R5,#4]
MOV             R0, #0xFF
STR             R7, [R5]
REV             R7, R0
MOV             R5, R6
MOV             R0, R6
BL              sub_4E63E0
LDR             R3, =off_6540C4
STR             R7, [R5,#4]
STR             R7, [R5]
ADD             R1, R4, #0x1A0000
LDM             R3, {R2,R3}
MOV             R0, #2
STRD            R2, R3, [R1,#0x5C]
LDR             R2, =dword_6E2378
STRB            R0, [R2,#(byte_6E238B - 0x6E2378)]
LDR             R1, [R1,#0x58]
STRB            R0, [R1,#0x10]
POP             {R4-R8,PC}
