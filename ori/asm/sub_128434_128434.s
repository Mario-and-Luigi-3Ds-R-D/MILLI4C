MOV             R0, #0
NOP
LDR             R3, =off_6D2538
PUSH            {R4,LR}
SUB             SP, SP, #8
MOV             R4, R0
LDR             R12, [R3]
CMP             R12, #0
BEQ             loc_128470
MOV             R1, #0
STR             R1, [R3]
STMEA           SP, {R1,R2}
MOV             R3, R1
MOV             R2, R1
BLX             R12
ADD             SP, SP, #8
MOV             R2, #0
MOV             R0, R4
POP             {R4,LR}
MOV             R1, R2
B               loc_13268C
