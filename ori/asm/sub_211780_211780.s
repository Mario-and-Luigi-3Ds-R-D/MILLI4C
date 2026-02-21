PUSH            {R4,R5}
LDR             R4, =dword_65B104
LDRH            R3, [R2]
LDR             R12, =off_642190
LDR             R4, [R4]
SUB             R3, R3, R4
ADD             R3, R12, R3,LSL#3
LDR             R12, [R3]
LDR             R3, [R3,#4]
CMP             R12, #0
BNE             loc_2117BC
TST             R3, #1
BEQ             loc_2117E0
CMP             R3, #0
BEQ             loc_2117E0
TST             R3, #1
ADD             R0, R0, R3,ASR#1
BEQ             loc_2117D0
LDR             R3, [R0]
LDR             R12, [R3,R12]
CMP             R1, #0
POP             {R4,R5}
SUBNE           R1, R1, #4
BX              R12
POP             {R4,R5}
MOV             R0, #0
BX              LR
