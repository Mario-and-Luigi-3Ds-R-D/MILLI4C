PUSH            {R4-R8,LR}
VPUSH           {D8}
BL              sub_14CB8C
LDR             R1, =off_6ACE18
STR             R1, [R0],#0x100
LDR             R1, =unk_6E32E8
BL              sub_5A2B98
LDR             R4, =off_6B7BFC
LDR             R1, =sub_5A39D0
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R4, [R0],#0x30
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
MOV             R5, #1
STRB            R5, [R0,#0x2C]
LDR             R1, =unk_6E32F4
ADD             R0, R0, #0x58 ; 'X'
BL              sub_5A2B98
LDR             R1, =sub_5A39D0
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R4, [R0],#0x30
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
STRB            R5, [R0,#0x2C]
SUB             R4, R0, #0x158
ADD             R0, R0, #0x58 ; 'X'
ADD             R1, R0, #8
STR             R1, [R0]
MOV             R7, #3
MOV             R6, #2
MOV             R5, #0
STRB            R7, [R0,#4]
STRB            R6, [R0,#5]
STRB            R5, [R0,#6]
ADD             R0, R0, #8
MOV             R2, #0x24 ; '$'
MOV             R1, R5
BL              sub_110BE4
LDR             R1, =unk_6E32DC
ADD             R0, R4, #0x1DC
BL              sub_5A2B98
LDR             R4, =off_6B7C1C
LDR             R1, =sub_5A39D0
MOV             R3, #3
MOV             R2, #0x28 ; '('
STR             R4, [R0],#0x30
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
STRB            R7, [R0,#0x2C]
LDR             R1, =unk_6E32DC
ADD             R0, R0, #0xA8
BL              sub_5A2B98
LDR             R1, =sub_5A39D0
MOV             R3, #3
MOV             R2, #0x28 ; '('
STR             R4, [R0],#0x30
BLX             sub_1002F4
LDR             R2, =dword_6CEA7C
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
STRB            R7, [R0,#0x2C]
LDR             R3, [R2]
ADD             R1, R0, #0xA8
VLDR            S16, =0.0
STR             R3, [R0,#0xA8]
LDR             R2, [R2]
STR             R2, [R0,#0xAC]
STR             R2, [R0,#0xB0]
ADD             R0, R0, #0xB4
VSTR            S16, [R0]
VSTR            S16, [R0,#4]
VSTR            S16, [R0,#8]
VSTR            S16, [R0,#0xC]
ADD             R0, R1, #0x1C
BL              sub_5A2F28
LDR             R2, =dword_6CEA80
ADD             R1, R0, #0x1C
LDR             R3, [R2]
STR             R3, [R0,#0x1C]
LDR             R2, [R2]
STR             R2, [R0,#0x20]
STR             R2, [R0,#0x24]
ADD             R0, R0, #0x28 ; '('
VSTR            S16, [R0]
VSTR            S16, [R0,#4]
VSTR            S16, [R0,#8]
VSTR            S16, [R0,#0xC]
ADD             R0, R1, #0x1C
BL              sub_5A2F28
SUB             R0, R0, #0x380
ADD             R1, R0, #0x300
VSTR            S16, [R0,#0x39C]
VSTR            S16, [R0,#0x3A0]
STRH            R5, [R1,#0xA4]
STRH            R5, [R1,#0xA6]
STRB            R5, [R0,#0x3A8]
STRB            R5, [R0,#0x3A9]
STR             R5, [R0,#0x3AC]
STR             R5, [R0,#0x3B0]
STR             R5, [R0,#0x3B4]
STRB            R5, [R0,#0x3B8]!
LDR             R1, =sub_14E948
MOV             R3, #8
MOV             R2, #4
ADD             R0, R0, #2
BLX             sub_1002F4
SUB             R4, R0, #2
MOV             R2, #8
VSTR            S16, [R4,#0x24]
STR             R5, [R0,#0x26]
ADD             R0, R0, #0x2A ; '*'
MOV             R1, #0
BL              sub_110BE4
SUB             R4, R4, #0x3B8
ADD             R0, R4, #0x300
STR             R5, [R4,#0x3EC]
ADD             R0, R0, #0xAA
MOV             R2, R6
MOV             R1, #0
STR             R5, [R4,#0x3F0]
BL              sub_110BE4
VPOP            {D8}
MOV             R0, R4
POP             {R4-R8,PC}
