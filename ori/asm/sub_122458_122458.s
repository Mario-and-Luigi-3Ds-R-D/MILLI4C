PUSH            {R4-R11,LR}
ADD             R6, R0, #0x1300
MOV             R4, R0
SUB             SP, SP, #0xAC
LDRB            R0, [R6,#0x18]
CMP             R0, #0
BNE             loc_122714
CMP             R1, #0
MOV             R7, #0
ADD             R5, R4, #0x1000
STRHEQ          R7, [SP,#0xD0+var_A0]
BEQ             loc_1224A4
MOV             R0, #2
STRH            R0, [SP,#0xD0+var_A0]
LDR             R0, [R5,#0xA8]
MOV             R2, #0x1080
ADD             R1, R4, #0x18
BL              sub_2FF3D8
MCR             p15, 0, R7,c7,c10, 4
MOV             R2, #4
ADD             R1, SP, #0xD0+var_A0
MOV             R0, #2
BL              sub_1284EC
MOV             R0, #0x4000
NOP
BL              sub_12848C
ADD             R0, R4, #8
MOV             R8, R0
BL              sub_13273C
LDR             R2, [R4]
MOV             R0, #0xFFFFFFFF
MOV             R1, R0
STRD            R0, R1, [SP,#0xD0+var_D0]
STR             R2, [SP,#0xD0+var_34]
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0xD0+var_34
ADD             R0, SP, #0xD0+var_2C
BL              sub_120250
MOV             R1, R0
MOVS            R0, R0,LSR#31
MOVNE           R0, R1
BLNE            sub_12107C
LDR             R0, [R4]
NOP
SVC             0x19
MOVS            R1, R0,LSR#31
NOP
BLNE            sub_12107C
LDRB            R0, [R6,#0x19]
ADD             R0, R0, #1
STRB            R0, [R5,#0x319]
MOV             R0, R8
BL              sub_1327BC
MOV             R2, #2
ADD             R3, SP, #0xD0+var_30
ADD             R1, SP, #0xD0+var_A8
MOV             R0, R2
BL              sub_128534
LDRH            R0, [SP,#0xD0+var_A8]
LDR             R1, =0xFFFF
ADD             R3, SP, #0xD0+var_30
AND             R2, R1, R0,LSL#1
ADD             R1, SP, #0xD0+var_60
MOV             R0, #2
BL              sub_128534
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x98
STR             R0, [SP,#0xD0+var_9C]
ADD             R0, SP, #0xD0+var_40
STR             R0, [SP,#0xD0+var_98]
ADD             R0, SP, #0xD0+var_B8
ADD             R1, R4, #0x1000
STR             R0, [SP,#0xD0+var_94]
ADD             R1, R1, #0xA0
ADD             R0, SP, #0xD0+var_B0
STRD            R0, R1, [SP,#0xD0+var_90]
ADD             R3, R4, #0x1000
ADD             R12, R4, #0x1000
ADD             R1, SP, #0xD0+var_80
ADD             R3, R3, #0x308
ADD             R12, R12, #0x310
ADD             R0, SP, #0xD0+var_C0
STM             R1, {R0,R3,R12}
ADD             R2, R4, #0x1000
ADD             R0, SP, #0xD0+var_88
ADD             R2, R2, #0xA8
STM             R0, {R2,R6}
ADD             R8, R4, #0x1400
ADD             R9, R4, #0x1400
ADD             R10, R4, #0x1400
ADD             R11, R4, #0x1400
ADD             LR, R4, #0x1400
ADD             R0, SP, #0xD0+var_74
ADD             R8, R8, #0x184
ADD             R9, R9, #0x18C
ADD             R10, R10, #0x194
ADD             R11, R11, #0x19C
ADD             LR, LR, #0x1A4
STM             R0, {R8-R11,LR}
MOV             R8, #0
LDRH            R0, [SP,#0xD0+var_A8]
CMP             R0, #0
ADDGT           R10, SP, #0xD0+var_60
ADDGT           R9, SP, #0xD0+var_9C
BLE             loc_122634
ADD             R11, R10, R8,LSL#1
LDR             R1, [R9,R8,LSL#2]
LDRH            R0, [R11]
BL              sub_128588
LDRH            R0, [R11]
LDR             R1, [R9,R8,LSL#2]
ORR             R0, R0, #0x10000
ADD             R1, R1, #4
BL              sub_128588
LDRH            R0, [SP,#0xD0+var_A8]
ADD             R8, R8, #1
CMP             R0, R8
BGT             loc_122600
LDR             R0, [SP,#0xD0+var_C0]
STR             R0, [R5,#0x2F0]
LDR             R0, [SP,#0xD0+var_C0]
ADD             R0, R0, #0xA00
STR             R0, [R5,#0x2F4]
LDR             R0, [SP,#0xD0+var_BC]
STR             R0, [R5,#0x2F8]
LDR             R0, [SP,#0xD0+var_BC]
ADD             R0, R0, #0xA00
STR             R0, [R5,#0x2FC]
MOV             R0, #0
LDR             R1, [SP,#0xD0+var_40]
ADD             R2, R0, R0,LSL#1
ADD             R3, R4, R0,LSL#2
ADD             R12, R1, R2,LSL#6
ADD             R1, R3, #0x1000
STR             R12, [R1,#0xB0]
LDR             R3, [SP,#0xD0+var_B8]
ADD             R3, R3, R2,LSL#2
STR             R3, [R1,#0x170]
LDR             R3, [SP,#0xD0+var_B0]
ADD             R3, R3, R0,LSL#5
STR             R3, [R1,#0x230]
LDR             R3, [SP,#0xD0+var_3C]
ADD             R3, R3, R2,LSL#6
STR             R3, [R1,#0x110]
LDR             R3, [SP,#0xD0+var_B4]
ADD             R2, R3, R2,LSL#2
STR             R2, [R1,#0x1D0]
LDR             R2, [SP,#0xD0+var_AC]
ADD             R2, R2, R0,LSL#5
ADD             R0, R0, #1
CMP             R0, #0x18
STR             R2, [R1,#0x290]
BLT             loc_122660
MOV             R0, #0x4000
BL              sub_12848C
MOV             R0, #4
STRB            R7, [R5,#0x319]
STRH            R0, [R6,#0x1A]
LDR             R1, [R5,#0x98]
STRH            R0, [R1]
LDRH            R0, [R6,#0x1A]
ADD             R0, R0, #1
STRH            R0, [R6,#0x1A]
LDR             R0, [R4,#4]
SVC             0x18
MOVS            R1, R0,LSR#31
NOP
BLNE            sub_12107C
LDRH            R0, [R6,#0x1A]
MOV             R1, #1
AND             R0, R0, #1
STRH            R0, [R6,#0x1E]
STRH            R0, [R6,#0x1C]
STRB            R1, [R5,#0x318]
ADD             SP, SP, #0xAC
POP             {R4-R11,PC}
