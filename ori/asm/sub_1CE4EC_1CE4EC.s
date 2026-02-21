PUSH            {R4-R9}
MOV             R6, #0
LDRB            R4, [R1]
CMP             R4, #0
BEQ             loc_1CE538
LDR             R5, =unk_643138
MOV             R7, #1
MOV             R12, R7
MOV             R3, R5
ADD             R8, R5, #0x24 ; '$'
SUB             R5, R8, R5
ADD             R5, R7, R5,ASR#2
LDRB            R7, [R3]
CMP             R7, R4
BEQ             loc_1CE53C
ADD             R12, R12, #1
CMP             R5, R12
ADD             R3, R3, #4
BGT             loc_1CE51C
MOV             R3, R6
LDRB            R3, [R3,#1]
POP             {R4-R9}
RSB             R3, R3, R3,LSL#4
ADD             R0, R0, R3,LSL#2
ADD             R0, R0, #4
B               sub_1CD618
