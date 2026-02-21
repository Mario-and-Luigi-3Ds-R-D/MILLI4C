PUSH            {R4-R11,LR}
MOV             R5, R0
SUB             SP, SP, #0x34; int
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDRB            R1, [R0,#0x3E]
CMP             R1, #0
ADDEQ           R0, R5, #0x15000
ADDEQ           R0, R0, #0x24 ; '$'
BEQ             loc_166DA8
LDRSB           R0, [R0,#0x3C]
RSB             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#2
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x24 ; '$'
STR             R0, [SP,#0x58+var_40]
ADD             R0, R5, #0x13800
ADD             R0, R0, #0x314
BL              sub_127FD4
LDR             R0, [SP,#0x58+var_40]
NOP
BL              sub_2A84A0
ADD             R0, R5, #0x17000
ADD             R0, R0, #0xB8
BL              sub_233D78
ADD             R10, R5, #0x15000
MOV             R2, #0
LDR             R0, [R10,#0x20]
MOV             R1, R5
BL              sub_5AE780
LDR             R0, [R5]
LDR             R1, [R0,#0x280]
MOV             R0, R5
BLX             R1
LDR             R0, [SP,#0x58+var_40]
BL              sub_2A8520
LDR             R0, [R5]
MOV             R1, #2
LDR             R2, [R0,#0x70]
MOV             R0, R5
BLX             R2
LDR             R0, [R5]
LDR             R1, [R0,#0x5C]
MOV             R0, R5
BLX             R1
LDR             R0, [R5]
MOV             R1, #1
LDR             R2, [R0,#0x70]
MOV             R0, R5
BLX             R2
BL              sub_1164E4
LDR             R0, [SP,#0x58+var_40]
MOV             R1, #0
BL              sub_2A84DC
LDR             R0, [R10,#0x18]
MOV             R11, #0
LDRB            R1, [R0,#4]
CMP             R1, #0
BEQ             loc_166FB4
LDRB            R1, [R0,#6]
CMP             R1, #0xFF
BNE             loc_166FB4
MOV             R2, #0
LDR             R0, [R0,#0x1C]
LDR             R1, [R5,#0x210]
MOV             R3, R2
ADD             R4, R5, #0x154
BL              sub_59C660
LDR             R0, [R4,#0xBC]
ADD             R2, R4, #4
ADD             R1, R4, #0x6C ; 'l'
ADD             LR, R2, #0x88
LDR             R0, [R0,#0xA4]
ADD             R3, R0, #0x168
LDM             R3, {R3,R4,R6,R12}
STM             R1, {R3,R4,R6,R12}
LDR             R3, [R0,#0x1D0]
STR             R3, [R1,#0x10]
LDR             R3, [R0,#0x1D4]
STR             R3, [R1,#0x14]
LDR             R3, [R0,#0x1E0]
STR             R3, [R1,#0x18]
LDR             R3, [R0,#0x1E4]
STR             R3, [R1,#0x1C]
ADD             R1, R0, #0x148
LDM             R1, {R1,R3,R4,R6-R9,R12}
STM             LR, {R1,R3,R4,R6-R9,R12}
ADD             R1, R0, #0x168
LDR             R0, [R0,#0x174]
LDM             R1, {R1,R3,R12}
STR             R0, [R2,#0xB4]
ADD             R2, R2, #0xA8
STM             R2, {R1,R3,R12}
ADD             R12, SP, #0x58+var_28
STR             R11, [R5,#0x16C]
LDR             R0, [R10,#0x18]
LDR             R2, [R5,#0x210]
ADD             R1, R5, #0x158
ADD             R3, R0, #8
MOV             R0, #0
LDR             R4, [R3,#0x14]
LDR             R3, [R2,#0xA4]; int
LDR             R2, [R4,#0x30]; int
LDR             R4, [R4,#0x2C]
STR             R0, [SP,#0x58+var_50]; int
STMEA           SP, {R1,R12}
MOV             R1, R4; int
ADD             R0, SP, #0x58+var_38; int
BL              sub_63A9DC
ADD             R0, R5, #0x158
NOP
BL              sub_61F9CC
LDR             R0, [SP,#0x58+var_40]
NOP
BL              sub_2A8520
LDR             R0, [R5,#0x16C]
LDR             R4, [R5,#0x168]
ADD             R8, R5, #0x158
MOV             R7, #0xFF
ADD             R9, R4, R0,LSL#2
CMP             R4, R9
BEQ             loc_166FA0
LDR             R0, [R4]
LDRB            R6, [R0]
CMP             R6, R7
BEQ             loc_166F80
ADD             R0, R8, R6,LSL#2
LDR             R0, [R0,#0x18]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R7
BLX             R2
MOV             R7, R6
LDR             R0, [R4]
ADD             R1, R8, R7,LSL#2
LDR             R1, [R1,#0x18]
LDR             R2, [R0,#0x18]
BLX             R2
ADD             R4, R4, #4
CMP             R4, R9
BNE             loc_166F54
NOP
BL              sub_1164E4
LDR             R0, [SP,#0x58+var_40]
MOV             R1, #6
BL              sub_2A84DC
LDRB            R0, [R10,#3]
CMP             R0, #0
BEQ             loc_16711C
ADD             R6, R5, #0x16800
ADD             R6, R6, #0x268
MOV             R2, #0
LDR             R0, [R6]
LDR             R1, [R5,#0x210]
MOV             R3, R2
ADD             R4, R5, #0x154
BL              sub_59C660
LDR             R0, [R4,#0xBC]
ADD             R2, R4, #4
ADD             R1, R4, #0x6C ; 'l'
ADD             LR, R2, #0x88
LDR             R0, [R0,#0xA4]
ADD             R3, R0, #0x168
LDM             R3, {R3,R4,R7,R12}
STM             R1, {R3,R4,R7,R12}
LDR             R3, [R0,#0x1D0]
STR             R3, [R1,#0x10]
LDR             R3, [R0,#0x1D4]
STR             R3, [R1,#0x14]
LDR             R3, [R0,#0x1E0]
STR             R3, [R1,#0x18]
LDR             R3, [R0,#0x1E4]
STR             R3, [R1,#0x1C]
ADD             R1, R0, #0x148
LDM             R1, {R1,R3,R4,R7-R10,R12}
STM             LR, {R1,R3,R4,R7-R10,R12}
ADD             R3, R0, #0x168
LDR             R1, [R0,#0x170]
LDR             R0, [R0,#0x174]
LDM             R3, {R3,R12}
STR             R1, [R2,#0xB0]
STR             R0, [R2,#0xB4]
ADD             R2, R2, #0xA8
MOV             R0, #0
STM             R2, {R3,R12}
ADD             R12, R5, #0x158
STR             R11, [R5,#0x16C]
LDR             R1, [R5,#0x210]
LDR             R4, [R6]
LDR             R3, [R1,#0xA4]; int
LDR             R2, [R4,#0x30]; int
LDR             R4, [R4,#0x2C]
ADD             R1, SP, #0x58+var_44
STR             R1, [SP,#0x58+var_54]; float
STR             R0, [SP,#0x58+var_50]; int
MOV             R1, R4; int
ADD             R0, SP, #0x58+var_38; int
STR             R12, [SP,#0x58+var_58]; int
BL              sub_63A9DC
ADD             R0, R5, #0x158
NOP
BL              sub_61F9CC
LDR             R0, [SP,#0x58+var_40]
NOP
BL              sub_2A8520
LDR             R0, [R5,#0x16C]
LDR             R4, [R5,#0x168]
ADD             R8, R5, #0x158
MOV             R7, #0xFF
ADD             R9, R4, R0,LSL#2
CMP             R4, R9
BEQ             loc_167108
LDR             R0, [R4]
LDRB            R6, [R0]
CMP             R6, R7
BEQ             loc_1670E8
ADD             R0, R8, R6,LSL#2
LDR             R0, [R0,#0x18]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R7
BLX             R2
MOV             R7, R6
LDR             R0, [R4]
ADD             R1, R8, R7,LSL#2
LDR             R1, [R1,#0x18]
LDR             R2, [R0,#0x18]
BLX             R2
ADD             R4, R4, #4
CMP             R4, R9
BNE             loc_1670BC
NOP
BL              sub_1164E4
LDR             R0, [SP,#0x58+var_40]
MOV             R1, #1
BL              sub_2A84DC
LDR             R0, [SP,#0x58+var_40]
BL              sub_2A8520
LDR             R0, =off_6D1648
MOV             R1, #0x400
LDR             R0, [R0]
LDR             R0, [R0,#0xA4]
BL              sub_1C726C
NOP
NOP
BL              sub_1164E4
LDR             R0, [SP,#0x58+var_40]
MOV             R1, #2
BL              sub_2A84DC
LDR             R0, [R5]
LDR             R1, [R0,#0x60]
MOV             R0, R5
BLX             R1
LDR             R0, [SP,#0x58+var_40]
BL              sub_2A8520
LDR             R0, [R5]
LDR             R1, [R0,#0x64]
MOV             R0, R5
BLX             R1
BL              sub_1164E4
LDR             R0, [SP,#0x58+var_40]
MOV             R1, #4
BL              sub_2A84DC
LDR             R0, [SP,#0x58+var_40]
NOP
BL              sub_2A8520
LDR             R0, [R5]
LDR             R1, [R0,#0x68]
MOV             R0, R5
BLX             R1
LDR             R0, [R5]
MOV             R1, #0
LDR             R2, [R0,#0x70]
MOV             R0, R5
BLX             R2
BL              sub_1164E4
LDR             R0, [SP,#0x58+var_40]
MOV             R1, #3
BL              sub_2A84DC
LDR             R0, [SP,#0x58+var_40]
NOP
BL              sub_2A8520
LDR             R0, =0x13B10
LDR             R0, [R0,R5]
BL              sub_3A14F4
NOP
NOP
BL              sub_1164E4
LDR             R0, [SP,#0x58+var_40]
MOV             R1, #5
BL              sub_2A84DC
LDR             R0, [R5]
MOV             R1, #0x400
LDR             R2, [R0,#0x2F8]
MOV             R0, R5
BLX             R2
LDR             R0, [R5]
MOV             R1, #0x410
LDR             R2, [R0,#0x2F8]
ADD             SP, SP, #0x34 ; '4'
MOV             R0, R5
POP             {R4-R11,LR}
BX              R2
