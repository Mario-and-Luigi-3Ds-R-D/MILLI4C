PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0]
SUB             SP, SP, #0x14
LDR             R1, [R0,#0x28]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_113A54
LDR             R0, [R4]
ADD             R1, R4, #0x34 ; '4'
LDR             R2, [R0,#4]
MOV             R0, R4
BLX             R2
LDR             R2, [R4,#0x10]
MOV             R0, #0xFFFFFFFF
MOV             R1, R0
STMEA           SP, {R0-R2}
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x20+var_18
ADD             R0, SP, #0x20+var_14
BL              sub_120250
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
MOV             R0, #1
STRB            R0, [R4,#0x14]
ADD             R0, R4, #0x10
BL              sub_1210EC
LDR             R0, [R4,#0x10]
ADD             R5, R4, #0x10
CMP             R0, #0
BEQ             loc_113A3C
SVC             0x23 ; '#'
MOV             R0, #0
STR             R0, [R5]
MOV             R0, R4
BL              sub_11CAC0
ADD             SP, SP, #0x14
ADD             R0, R4, #0xC
POP             {R4,R5,LR}
B               sub_11DDE8
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
