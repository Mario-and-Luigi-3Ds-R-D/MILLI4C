CMP             R1, #2
SUB             R12, R2, #1
LDR             R2, =0x51EB851F
SUB             R0, R0, #0x7D0
ADDLE           R3, R1, #9
SUBGT           R3, R1, #3
SUBLE           R0, R0, #1
PUSH            {R4-R7}
CMP             R0, #0
MOV             R1, #1
BGE             loc_128A28
SMULL           R5, R1, R2, R0
MOV             R4, #0xFFFFFFE7
MOV             R5, R1,ASR#7
SUB             R5, R5, R1,ASR#31
MUL             R4, R5, R4
ADDS            R4, R0, R4,LSL#4
BEQ             loc_128A9C
MOV             R6, R1,ASR#5
MOV             R5, #0xFFFFFFE7
SUB             R1, R6, R1,ASR#31
MOV             R4, R0
MUL             R1, R1, R5
ADDS            R1, R0, R1,LSL#2
BEQ             loc_128A28
TST             R4, #3
MOVNE           R1, #0
BEQ             loc_128A9C
SMULL           R4, R2, R2, R0
ADD             R3, R3, R3,LSL#4
LDR             R4, =0x66666667
ADD             R3, R3, R3,LSL#3
ADD             R7, R3, #2
MOV             R3, R2,ASR#5
LDR             R6, =0x23AB1
SUB             R3, R3, R2,ASR#31
SMULL           R2, R4, R4, R7
MOV             R5, #0xFFFFFFE7
MUL             R2, R3, R6
MUL             R3, R3, R5
LDR             R5, =0x5B5
ADD             R0, R0, R3,LSL#2
MOV             R3, R2,ASR#31
MUL             R0, R0, R5
ADD             R5, R2, R3,LSR#30
MOV             R2, R4,ASR#1
MOV             R5, R5,ASR#2
MOV             R3, R0,ASR#31
SUB             R2, R2, R4,ASR#31
ADD             R0, R0, R3,LSR#30
ADD             R0, R5, R0,ASR#2
ADD             R0, R0, R2
ADD             R0, R0, R12
ADD             R0, R0, R1
POP             {R4-R7}
ADD             R0, R0, #0x3B ; ';'
BX              LR
MOV             R1, #1
B               loc_128A28
