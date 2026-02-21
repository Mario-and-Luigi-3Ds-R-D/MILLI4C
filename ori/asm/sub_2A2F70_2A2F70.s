PUSH            {R4,LR}
BL              sub_14CB8C
LDR             R2, =off_6B3E70
MOV             R1, #0
ADD             R4, R0, #0x100
STR             R2, [R0]
STRB            R1, [R0,#0xFD]
BL              sub_4635D8
MOV             R1, R0
MOV             R0, R4
BL              sub_5A2B98
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R2, R0, #0x30 ; '0'
MOV             R1, #1
STR             R2, [R0,#0x28]
STRB            R1, [R0,#0x2C]
ADD             R1, R0, #0x58 ; 'X'
MOV             R0, #0xFFFFFF00
VLDR            S0, =0.0
REV             R2, R0
ADD             R0, R1, #0x1C
STR             R2, [R1]
STR             R2, [R1,#4]
STR             R2, [R1,#8]
VSTR            S0, [R1,#0xC]
VSTR            S0, [R1,#0x10]
VSTR            S0, [R1,#0x14]
VSTR            S0, [R1,#0x18]
BL              sub_5A2F28
ADD             R0, R0, #0x1C
BL              sub_5931A8
SUB             R4, R0, #0x190
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x294
LDR             R0, [R0,#8]
STR             R0, [R4,#0x29C]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x2A0
LDR             R0, [R0,#8]
STR             R0, [R4,#0x2A8]
STM             R3, {R1,R2}
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              sub_14B798
MOV             R0, R4
POP             {R4,PC}
