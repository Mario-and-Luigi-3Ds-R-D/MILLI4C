LDR             R12, =unk_653EC8
PUSH            {R0,R4-R6}
MOV             R1, #4
LDRH            R4, [SP,#0x10+var_10]
ADD             R5, R12, #0x10
MOV             R0, R12
ADD             R2, R1, R1,LSR#31
MOV             R2, R2,ASR#1
ADD             R3, R0, R2,LSL#2
LDRH            R6, [R3]
CMP             R4, R6
SUBCS           R1, R1, R2
MOVCC           R1, R2
ADDCS           R0, R3, #4
SUBCS           R1, R1, #1
CMP             R1, #0
BGT             loc_148160
CMP             R0, R5
SUBEQ           R0, R5, #4
BEQ             loc_1481A0
CMP             R0, R12
SUBNE           R0, R0, #4
LDRH            R0, [R0,#2]
POP             {R3-R6}
BX              LR
