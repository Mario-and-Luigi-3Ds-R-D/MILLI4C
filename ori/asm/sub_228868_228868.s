PUSH            {R4-R6,LR}
MOV             R5, R1
MOV             R1, #0
VPUSH           {D8}
STRB            R1, [R0,#1]
LDR             R1, =off_6CE970
LDR             R1, [R1]
ADD             R1, R1, #0x10C000
ADD             R1, R1, #0x214
STR             R1, [R0,#4]!
ADD             R0, R0, #0x1C
BL              sub_5A2BD0
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
MOV             R6, #1
STR             R1, [R0,#0x28]
STRB            R6, [R0,#0x2C]
ADD             R0, R0, #0x58 ; 'X'
BL              sub_5A1E2C
LDR             R4, =off_6B7BEC
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
STRB            R6, [R0,#0x14]
ADD             R0, R0, #0x38 ; '8'
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
STRB            R6, [R0,#0x14]
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
STRB            R6, [R0,#0x14]
SUB             R4, R0, #0xE4
STRB            R5, [R0,#0x34]
LDR             R0, =off_6CDA80
ADD             R5, R4, #0x20 ; ' '
LDR             R0, [R0]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R6, [R0]
MOV             R0, R5
BL              sub_5A26D0
ADD             R6, R6, #0x1D0
ADD             R3, R5, #0x1C
LDM             R6, {R0-R2}
ADD             R5, R5, #4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
ADD             R0, R4, #0x78 ; 'x'
BL              sub_5A18EC
VLDR            S16, =0.0
ADD             R0, R4, #0xE4
VSTR            S16, [R4,#0x84]
VSTR            S16, [R4,#0x7C]
BL              sub_5A18EC
VSTR            S16, [R4,#0xF0]
MOV             R0, #9
VSTR            S16, [R4,#0xE8]
STRB            R0, [R4]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x11C
LDR             R0, [R0,#8]
STR             R0, [R4,#0x124]
STM             R3, {R1,R2}
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,PC}
