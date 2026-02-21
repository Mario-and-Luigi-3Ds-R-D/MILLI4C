PUSH            {R2-R6,LR}
MOVS            R4, R1
MOVS            R5, R0
LDR             R0, [R1]
LDR             R0, [R0,#0x18]
CMP             R0, #0
BEQ             loc_10309A
MOV             R0, SP
NOP
NOP
MOVS            R2, R0
LDR             R0, [R4]
LDR             R1, [R0,#0x18]
MOVS            R0, R5
BL              sub_301578
POP             {R2-R6,PC}
ADD             R0, SP, #0x18+var_14
NOP
NOP
MOVS            R2, R0
ADR             R1, dword_1030A8
B               loc_103092
