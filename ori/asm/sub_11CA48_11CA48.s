MOV             R2, R0
ADR             R0, dword_11CA90
SUB             SP, SP, #4
LDR             R1, [R0]
MOV             R0, #0
MOV             R3, SP
STR             R1, [SP,#4+var_4]
MOV             R1, R0
LDRB            R12, [R3,R0]
CMP             R12, R2
BHI             loc_11CA88
ADD             R0, R1, #1
AND             R1, R0, #0xFF
CMP             R1, #4
AND             R0, R0, #0xFF
BCC             loc_11CA68
ADD             SP, SP, #4
BX              LR
