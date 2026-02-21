PUSH            {R4-R7,LR}
SUB             SP, SP, #0x14
MOV             R5, #1
LDR             R0, =byte_6D4940
LDR             R6, =dword_70D34C
STRB            R5, [R0]
LDR             R0, [R6]
SVC             0x18
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
LDR             R4, =dword_6D494C
MOV             R0, #0xFFFFFFFF
MOV             R1, R0
MOV             R3, #0
LDR             R2, [R4]
STMEA           SP, {R0-R2}
MOV             R2, #1
ADD             R1, SP, #0x28+var_20
ADD             R0, SP, #0x28+var_1C
BL              sub_120250
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
LDR             R0, =dword_6D494C
STRB            R5, [R4,#(byte_6D4950 - 0x6D494C)]
BL              sub_1210EC
LDR             R0, [R4]
LDR             R5, =dword_6D494C
MOV             R7, #0
CMP             R0, #0
BEQ             loc_12A148
SVC             0x23 ; '#'
STR             R7, [R5]
MOV             R4, #0
ADD             R5, R6, R4,LSL#2
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_12A164
SVC             0x23 ; '#'
STR             R7, [R5]
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_12A14C
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
