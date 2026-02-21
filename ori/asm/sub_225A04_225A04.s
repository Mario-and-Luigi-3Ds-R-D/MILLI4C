LDR             R2, =off_6BB99C
PUSH            {R4-R7,LR}
SUB             SP, SP, #0xC
STR             R2, [R0]
STRB            R1, [R0,#4]
ADD             R0, R0, #8
BL              sub_14F198
ADD             R0, R0, #0x3FC
BL              sub_5A1E2C
LDR             R4, =off_6B7BEC
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
MOV             R7, #1
STR             R1, [R0,#0x10]
STRB            R7, [R0,#0x14]
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
SUB             R1, R0, #0x400
MOV             R2, #0
STRB            R7, [R0,#0x14]
STR             R2, [R0,#0x34]!
ADD             R0, R0, #4
SUB             R1, R1, #0x38 ; '8'
STR             R0, [R0,#4]
STR             R0, [R0]
ADD             R0, R1, #0x490
STR             R2, [R1,#0x480]
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
SUB             R4, R0, #0x490
STRB            R7, [R0,#0x14]
LDR             R1, =off_6CDA80
LDRB            R0, [R0,#-0x48C]
CMP             R0, #0
LDR             R0, [R1]
BEQ             loc_225B04
LDR             R5, [R0,#0x38]
BL              sub_4635D8
LDM             R0, {R1,R2}
MOV             R6, #0
LDR             R0, [R0,#8]
STR             R0, [SP,#0x20+var_18]
STMEA           SP, {R1,R2}
B               loc_225B20
LDR             R5, [R0,#0x34]
BL              sub_4635D8
LDM             R0, {R1,R2}
MOV             R6, #0
LDR             R0, [R0,#8]
STR             R0, [SP,#0x20+var_18]
STMEA           SP, {R1,R2}
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_14C450
MOV             R2, #0
MOV             R1, R5
ADD             R0, R4, #8
STRB            R7, [R4,#0xF9]
BL              sub_14E6E0
MOV             R1, SP
ADD             R0, R4, #8
BL              sub_14E984
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R6
ADD             R0, R4, #8
BL              sub_14C548
MOV             R1, #0
ADD             R0, R4, #8
BL              sub_14C3E8
LDRB            R0, [R4,#0xFE]
STRB            R0, [R4,#0x47C]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x38 ; '8'
BL              sub_5A18EC
VLDR            S0, =0.0
ADD             R0, R4, #0x400
VSTR            S0, [R0,#0x44]
VSTR            S0, [R0,#0x3C]
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4-R7,PC}
