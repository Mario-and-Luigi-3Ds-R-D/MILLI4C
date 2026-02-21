PUSH            {R4-R8,LR}
ADD             R0, R0, #0x34 ; '4'
BL              sub_14CB8C
MOV             R1, R0
LDR             R0, =off_6C351C
LDR             R7, =off_6CE970
LDR             R4, =0x109FF8
MOV             R6, #0
STR             R0, [R1]
STR             R6, [R1,#0x100]
LDR             R2, [R7]
ADD             R5, R4, #0xEC
ADD             R12, R4, #0x1D8
ADD             R3, R4, #0x2C4
ADD             R4, R4, R2; loc_109FF8
ADD             R5, R5, R2; loc_10A0E4
ADD             R12, R12, R2; loc_10A1D0
ADD             R2, R2, R3; loc_10A2BC
ADD             R0, R1, #0x104
STR             R2, [R1,#0x110]
STM             R0, {R4,R5,R12}
ADD             R0, R1, #0x120
STR             R6, [R1,#0x118]
STR             R6, [R1,#0x11C]
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14F198
LDR             R1, =sub_14F198
ADD             R0, R0, #0x3F4
MOV             R3, #3
MOV             R2, #0x3F4
BLX             sub_1002F4
ADD             R0, R0, #0x800
LDR             R1, =sub_14F198
ADD             R0, R0, #0x3DC
MOV             R3, #3
MOV             R2, #0x3F4
BLX             sub_1002F4
ADD             R0, R0, #0x800
LDR             R1, =sub_5BA160
ADD             R0, R0, #0x3DC
MOV             R3, #3
MOV             R2, #0x290
BLX             sub_1002F4
ADD             R0, R0, #0x7B0
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14CB8C
LDR             R1, =off_6C33C0
STR             R1, [R0],#0x100
BL              sub_5B8A80
ADD             R0, R0, #0x190
BL              sub_14CB8C
LDR             R4, =off_6C3280
STR             R4, [R0],#0x100
BL              sub_2C2000
LDR             R1, =0x73D8
SUB             R0, R0, #0x100
STR             R6, [R1,R0]
ADD             R0, R0, #0x7000
ADD             R0, R0, #0x3DC
BL              sub_14CB8C
STR             R4, [R0],#0x100
BL              sub_2C2000
LDR             R1, =0x73D8
SUB             R0, R0, #0x100
SUB             R5, R0, #0xB000
SUB             R5, R5, #0x2D4
STR             R6, [R1,R0]
ADD             R0, R0, #0x7000
ADD             R0, R0, #0x3E0
MOV             R4, #0xA000
STR             R6, [R0],#4
ADD             R8, R4, #0xD
STR             R0, [R0,#4]
STR             R0, [R0]
LDR             R0, =0x126B0
STRB            R6, [R0,R5]
SUB             R0, R4, #0xA000
CMP             R0, #0xD
BCC             loc_26A14C
BL              sub_2FE484
ADD             R6, R5, R0,LSL#2
UXTH            R1, R4
LDR             R0, [R7]
BL              sub_52FACC
ADD             R4, R4, #1
CMP             R4, R8
STR             R0, [R6]
BCC             loc_26A13C
MOV             R0, R5
POP             {R4-R8,PC}
