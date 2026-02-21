MOV             R12, R0
LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
ADD             R1, R3, #8
LDR             R3, [R3,#0x18]
LDR             R0, [R0]
ADD             R5, R1, #0x14
TST             R3, #1
LDM             R5, {R5,R6}
SUB             SP, SP, #0x20
LDR             R2, [R0,#0xC4]
VLDR            S1, [R1,#0x1C]
AND             R5, R5, #0xFF
LDR             R2, [R2,#4]
VLDREQ          S0, [R2,#4]
VLDRNE          S0, [R2,#8]
AND             R2, R3, #6
LDR             R3, =unk_6739D8
ADD             R3, R3, R2,LSR#1
LDR             R2, [R1,#0xC]
LDRSB           R4, [R3]
LDR             R3, [R12,#4]
AND             R12, R6, #0xFF
ADD             R6, SP, #0x30+var_24
ADD             R2, R3, R2,LSL#2
STM             R6, {R4,R5,R12}
ADD             R2, R2, #0x14000
VSTR            S1, [SP,#0x30+var_18]
LDR             R3, [R1,#8]
VLDR            S1, [R2,#0x184]
UXTH            R2, R3
STR             R2, [SP,#0x30+var_30]
VSTR            S1, [SP,#0x30+var_2C]
VSTR            S0, [SP,#0x30+var_28]
LDR             R12, [R0]
LDR             R3, [R1,#4]
LDR             R2, [R1]
MOV             R1, #1
LDR             R12, [R12,#0x38]
AND             R3, R3, #0xFF
BLX             R12
ADD             SP, SP, #0x20 ; ' '
MOV             R0, #3
POP             {R4-R6,PC}
