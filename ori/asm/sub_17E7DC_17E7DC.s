PUSH            {R4,R5,LR}
ADD             R2, R3, #0x68 ; 'h'
LDRB            R5, [R1,#0x14]
LDR             R12, =0x13C8C
LDR             R4, [R0,#4]
ADD             R1, R3, #8
ADD             R12, R12, R5,LSL#2
SUB             SP, SP, #0x1C
LDR             R12, [R4,R12]
ADD             R4, R3, #0xC
LDM             R4, {R3,R4}
ADD             R3, R12, R3,LSL#1
ADD             R12, R12, R4,LSL#1
MOV             R4, #0
STR             R4, [SP,#0x28+var_20]
LDR             R5, [R0,#4]
LDR             R4, =off_6D1648
STR             R5, [SP,#0x28+var_28]
LDRB            R3, [R3,#1]
STRB            R3, [SP,#0x28+var_24]
LDRB            R3, [R12,#1]
STRB            R3, [SP,#0x28+var_23]
LDR             R3, [R2,#0xC]
STR             R3, [SP,#0x28+var_1C]
LDR             R3, [R2,#0x10]
STR             R3, [SP,#0x28+var_18]
LDR             R2, [R2,#0x14]
STR             R2, [SP,#0x28+var_14]
LDR             R2, [R1]
LDR             R1, [R4]
CMN             R2, #1
LDREQ           R0, [R0,#4]
ADDNE           R0, R1, R2,LSL#2
LDRNE           R0, [R0,#0xBC]
STR             R0, [SP,#0x28+var_20]
LDR             R0, [R1,#0xB4]
MOV             R1, SP
BL              sub_2D2E50
ADD             SP, SP, #0x1C
MOV             R0, #0
POP             {R4,R5,PC}
