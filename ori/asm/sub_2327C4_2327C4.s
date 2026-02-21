PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R6, [R0,#0x40]
CMP             R6, #0
BEQ             loc_2327F0
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
B               loc_232804
LDR             R0, [R5]
LDR             R1, [R0]
LDR             R1, [R1,#0x2D8]
BLX             R1
MOV             R6, R0
LDR             R7, [R5,#4]
MOV             R8, #0
CMP             R7, #0
LDRNE           R0, [R7]
CMPNE           R0, #0
LDR             R0, [R4,#0x40]
BEQ             loc_23282C
CMP             R0, #0
BEQ             loc_232848
B               loc_232868
CMP             R0, #0
BEQ             loc_232840
ADD             R0, R0, #0x104
BL              sub_58DD64
STR             R8, [R4,#0x40]
MOV             R0, #0
POP             {R4-R8,PC}
STR             R6, [R4,#0x40]
LDR             R0, [R5]
CMP             R6, #0
ADDNE           R1, R6, #0x104
ADD             R0, R0, #0x13800
MOVEQ           R1, #0
ADD             R0, R0, #0x368
BL              sub_2018EC
LDR             R0, [R4,#0x40]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R7
BLX             R2
LDRH            R1, [R5,#8]
LDR             R0, [R4,#0x40]
MOV             R3, #0x200
AND             R1, R1, #0xFF
MOV             R2, #0
BL              sub_11DCDC
LDR             R0, [R4,#0x120]
CMP             R0, #0
BEQ             loc_2328A8
BL              sub_533330
STR             R8, [R4,#0x120]
ADD             R1, R5, #0xC
ADD             R6, R4, #0x28 ; '('
LDM             R1, {R1-R3}
ADD             R0, R4, #0x100
STM             R6, {R1-R3}
ADD             R1, R5, #0x18
ADD             R6, R4, #4
LDM             R1, {R1-R3}
STM             R6, {R1-R3}
ADD             R1, R5, #0x24 ; '$'
ADD             R6, R4, #0x10
LDM             R1, {R1-R3}
STM             R6, {R1-R3}
ADD             R1, R5, #0x30 ; '0'
ADD             R6, R4, #0xF4
LDM             R1, {R1-R3}
STM             R6, {R1-R3}
ADD             R1, R5, #0x3C ; '<'
LDM             R1, {R1-R3}
STM             R0, {R1-R3}
MOV             R3, #0
LDR             R1, [R5,#0x48]
STR             R1, [R4,#0x10C]
LDR             R1, [R5,#0x4C]
STR             R1, [R4,#0x110]
LDR             R1, [R5,#0x50]
STR             R1, [R4,#0x114]
LDRH            R1, [R5,#0x54]
STRH            R1, [R0,#0x18]
LDRH            R1, [R0,#0x1A]
LDRH            R2, [R5,#0x56]
AND             R1, R1, #0x8000
BIC             R2, R2, #0x8000
ORR             R1, R1, R2
STRH            R1, [R0,#0x1A]
LDRH            R2, [R5,#0x56]
BIC             R1, R1, #0x8000
AND             R2, R2, #0x8000
ORR             R1, R1, R2
STRH            R1, [R0,#0x1A]
LDR             R0, [R5,#0x58]
STR             R0, [R4,#0x11C]
LDR             R0, =off_675FB4
LDM             R0, {R1,R2}
MOV             R0, R4
BL              sub_232B34
MOV             R0, #1
POP             {R4-R8,PC}
