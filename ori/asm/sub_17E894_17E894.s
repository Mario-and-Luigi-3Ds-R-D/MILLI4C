PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R6, #4
LDR             R7, [R2,#0x70]
MOV             R5, R1
ADD             R12, R3, #8
ADD             R1, R3, #0x68 ; 'h'
MOV             R0, R7,LSL#25
LDR             R7, [R3,#8]
CMP             R6, R0,LSR#29
LDREQ           R0, [R2,#0x80]
LDR             R2, =off_6D1648
SUB             SP, SP, #0x24
LDRBEQ          R0, [R0,#0xDE]
LDR             R3, [R2]
LDR             R2, [R4,#4]
MOVEQ           R0, R0,LSL#30
LDR             R3, [R3,#0xBC]
MOVEQ           R0, R0,LSR#31
LDRBNE          R0, [R5,#0x14]
CMP             R2, R3
ADD             R3, SP, #0x38+var_30
MOVNE           R5, #1
ADD             R2, R2, R0,LSL#2
ADD             R2, R2, #0x13C00
ADD             R2, R2, #0xA4
LDR             R0, [R12,#4]
LDR             R2, [R2]
MOVEQ           R5, #0
ADD             R0, R2, R0,LSL#1
LDR             R2, [R1,#0xC]
LDRH            R6, [R0]
LDR             R0, [R1,#8]
LDR             R1, [R1,#0x10]
STR             R1, [SP,#0x38+var_28]
STM             R3, {R0,R2}
ADD             R1, SP, #0x38+var_24
LDR             R0, [R4,#4]
ADD             R0, R0, #8
BL              sub_5C7AE8
VLDR            S0, [SP,#0x38+var_30]
VLDR            S1, [SP,#0x38+var_24]
ADD             R1, SP, #0x38+var_30
MOV             R0, #0
VADD.F32        S0, S0, S1
MOV             R3, R6
MOV             R2, R5
VSTR            S0, [SP,#0x38+var_30]
VLDR            S0, [SP,#0x38+var_2C]
VLDR            S1, [SP,#0x38+var_20]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_2C]
VLDR            S0, [SP,#0x38+var_28]
VLDR            S1, [SP,#0x38+var_1C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_28]
STRD            R0, R1, [SP,#0x38+var_38]
MOV             R1, R7
MOV             R0, R4
BL              sub_1834B4
ADD             SP, SP, #0x24 ; '$'
MOV             R0, #0
POP             {R4-R7,PC}
