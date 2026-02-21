PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
LDR             R1, =off_6982AC
MOV             R4, R0
MOV             R0, #0
STMEA           SP, {R1,R4}
STRB            R0, [SP,#0x18+var_10]
STRB            R0, [SP,#0x18+var_F]
MOV             R0, SP
BL              sub_118CF0
LDRB            R0, [SP,#0x18+var_F]
CMP             R0, #0
LDRSBNE         R0, [SP,#0x18+var_10]
BNE             loc_10E018
BL              sub_118B5C
MOV             R5, R0
BL              sub_118B04
CMP             R5, R4
ADD             R1, R0, R5
CMPLS           R4, R1
MOVCS           R0, #0
MOVCC           R0, #1
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
