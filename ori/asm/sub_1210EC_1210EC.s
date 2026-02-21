PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#4]
SUB             SP, SP, #0x10
CMP             R0, #0
BNE             loc_121138
LDR             R2, [R4]
MOV             R0, #0xFFFFFFFF
MOV             R1, R0
STMEA           SP, {R0-R2}
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x18+var_10
ADD             R0, SP, #0x18+var_C
BL              sub_120250
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
MOV             R0, #1
STRB            R0, [R4,#4]
ADD             SP, SP, #0x10
POP             {R4,PC}
