PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R6, [R0,#0x18]
LDR             R0, [R6,#0x204]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
LDRLE           R0, =off_6CE970
LDRLE           R5, [R0]
BGT             locret_152B60
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_152B34
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]
CMP             R0, #0
BNE             loc_152B34
LDRB            R0, [R4,#0x19]
CMP             R0, #0
BEQ             loc_152B34
CMP             R0, #0x64 ; 'd'
BNE             locret_152B60
LDRB            R0, [R4,#0x14]
MOV             R3, #0x100
MOV             R2, #1
CMP             R0, #3
MOVEQ           R1, #0xE
MOVNE           R1, #0xA
MOV             R0, R6
BL              sub_14C548
LDR             R1, =unk_63FC24
LDRD            R0, R1, [R1,#(off_63FCD0 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R6,PC}
