PUSH            {R4,R5,LR}
MOV             R4, R1
LDM             R1, {R1-R3}
SUB             SP, SP, #0xC
ADD             R5, R0, #0x300
STMEA           SP, {R1-R3}
LDRH            R1, [R5,#0xA6]
LDRB            R2, [R4]
ADD             R1, R1, R2
STRB            R1, [SP,#0x18+var_18]
MOV             R1, SP
BL              sub_14B208
LDRB            R0, [R4]
STRH            R0, [R5,#0xA4]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
