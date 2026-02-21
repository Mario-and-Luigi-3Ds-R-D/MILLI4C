MOVS            R2, R0
PUSH            {R4}
BEQ             loc_1CCF5C
LDR             R3, =unk_643138
MOV             R12, #1
MOV             R1, R12
MOV             R0, R3
ADD             R4, R3, #0x24 ; '$'
SUB             R3, R4, R3
ADD             R12, R12, R3,ASR#2
LDRB            R3, [R0]
CMP             R3, R2
BEQ             loc_1CCF60
ADD             R1, R1, #1
CMP             R12, R1
ADD             R0, R0, #4
BGT             loc_1CCF40
MOV             R0, #0
POP             {R4}
BX              LR
