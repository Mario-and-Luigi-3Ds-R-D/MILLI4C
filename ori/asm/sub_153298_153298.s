PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
LDR             R0, [R5,#0x204]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             locret_153324
LDR             R0, [R4,#0x34]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
MOV             R0, R5
BL              sub_14D83C
MOV             R0, #0
MOV             R2, #0
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_4E3CA0
LDR             R0, =off_6CE970
LDR             R5, [R0]
BL              sub_47FFCC
CMP             R0, #0
LDR             R0, =unk_63FC24
BNE             loc_15331C
LDR             R1, =byte_19CF30
LDRB            R1, [R1,R5]; byte_19CF30
CMP             R1, #0
BEQ             loc_153328
LDRD            R0, R1, [R0,#(dword_63FCF0 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
POP             {R3-R5,PC}
LDRD            R0, R1, [R0,#(off_63FCE8 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
POP             {R3-R5,PC}
