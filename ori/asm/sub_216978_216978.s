PUSH            {R4-R6,LR}
MOV             R5, R1
BL              sub_14F198
LDR             R2, =off_6B2B20
MOV             R6, #0
ADD             R1, R0, #0x300
STR             R2, [R0]
STRB            R6, [R0,#0x3F4]
STRB            R6, [R0,#0x3F5]
STRB            R6, [R0,#0x3F6]
STRB            R6, [R0,#0x3F7]
STRH            R6, [R1,#0xF8]
STRH            R6, [R1,#0xFA]
STRH            R6, [R1,#0xFC]
STRH            R6, [R1,#0xFE]
MOV             R4, R0
STR             R5, [R0,#0x400]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x400
LDR             R0, [R0,#8]
ADD             R3, R3, #4
STR             R0, [R4,#0x40C]
STM             R3, {R1,R2}
ADD             R0, R4, #0x410
STRB            R6, [R4,#0x410]
STRH            R6, [R0,#2]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x14
BL              sub_5931A8
VLDR            S0, =0.0
ADD             R0, R0, #0x104
BL              sub_5A1E10
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R2, R0, #0x18
STR             R2, [R0,#0x10]
MOV             R1, #1
SUB             R2, R0, #0x108
STRB            R1, [R0,#0x14]
ADD             R0, R0, #0x34 ; '4'
SUB             R4, R2, #0x410
STR             R0, [R0,#0x800]
STR             R0, [R0,#0x804]
MOV             R0, R4
BL              sub_14C450
MOV             R2, #0
MOV             R1, #1
MOV             R0, R4
BL              sub_14B798
MOV             R0, #0x6000
STRB            R6, [R4,#0xF6]
STRH            R0, [R4,#0x10]
MOV             R0, R4
POP             {R4-R6,PC}
