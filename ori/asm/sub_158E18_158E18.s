PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
SUB             SP, SP, #8
ADD             R3, SP, #0x10+var_C
MOV             R2, SP
LDR             R12, [R0,#0x34]
MOV             R0, R4
BLX             R12
LDRB            R1, [SP,#0x10+var_C]
CMP             R1, #0
LDREQ           R0, [SP,#0x10+var_10]
BEQ             loc_158E80
MOV             R1, #0
STR             R0, [R4,#0x34]
STR             R1, [R4,#0x30]
STR             R4, [R4,#0x24]
LDR             R0, [R4,#0x18]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1,#4]
ADD             R1, R4, #0x1C
BLX             R2
ADD             R0, R4, #0x28 ; '('
BL              sub_120E7C
LDR             R0, [R4,#0x30]
ADD             SP, SP, #8
POP             {R4,PC}
