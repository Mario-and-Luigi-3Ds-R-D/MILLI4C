PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R6, [R2,#0x70]
ADD             R0, R3, #8
ADD             R1, R3, #0x68 ; 'h'
MOV             R12, R2
MOV             R3, R6,LSL#25
MOV             R2, #4
CMP             R2, R3,LSR#29
LDREQ           R2, [R12,#0x80]
LDR             R3, =off_6D1648
ADD             R1, R1, #0xC
SUB             SP, SP, #0x18
LDRBEQ          R2, [R2,#0xDE]
LDR             R7, [R0]
ADD             R8, SP, #0x30+var_28
VLDM            R1, {S0-S2}
MOVEQ           R2, R2,LSL#30
MOVEQ           R2, R2,LSR#31
LDRBNE          R2, [R5,#0x14]
LDR             R5, [R3]
LDR             R3, [R4,#4]
LDR             R5, [R5,#0xBC]
CMP             R3, R5
ADD             R3, R3, R2,LSL#2
ADD             R3, R3, #0x13C00
ADD             R3, R3, #0xA4
LDR             R2, [R0,#4]
LDR             R3, [R3]
MOVNE           R5, #1
MOVEQ           R5, #0
ADD             R2, R3, R2,LSL#1
LDRH            R6, [R2]
VSTM            R8, {S0-S2}
LDR             R0, [R0,#8]
CMN             R0, #1
MOVEQ           R0, #0
BEQ             loc_183D8C
LDR             R1, [R4]
SXTB            R3, R0
LDR             R2, [R4,#4]
MOV             R0, R4
LDR             R8, [R1,#0x9C]
MOV             R1, R12
BLX             R8
ADD             R1, SP, #0x30+var_28
STRD            R0, R1, [SP,#0x30+var_30]
MOV             R3, R6
MOV             R2, R5
MOV             R1, R7
MOV             R0, R4
BL              sub_1834B4
ADD             SP, SP, #0x18
MOV             R0, #0
POP             {R4-R8,PC}
