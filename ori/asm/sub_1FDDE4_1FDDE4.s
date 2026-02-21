LDR             R1, =off_6BB864
PUSH            {R4-R6,LR}
MOV             R5, #0
STR             R5, [R0,#4]
STR             R1, [R0],#8
STR             R5, [R0],#0x3C
BL              sub_14CB8C
MOV             R1, R0
LDR             R0, =off_6C351C
LDR             R2, =off_6CE970
LDR             R12, =0x109FF8
STR             R0, [R1]
STR             R5, [R1,#0x100]
LDR             R2, [R2]
ADD             R6, R12, #0xEC
ADD             R4, R6, #0xEC
ADD             R3, R4, #0xEC
ADD             R12, R12, R2; loc_109FF8
ADD             R6, R6, R2; loc_10A0E4
ADD             R4, R4, R2; loc_10A1D0
ADD             R2, R2, R3; loc_10A2BC
STR             R2, [R1,#0x110]
STR             R4, [R1,#0x10C]
STR             R5, [R1,#0x118]
STR             R6, [R1,#0x108]
STR             R12, [R1,#0x104]
ADD             R0, R1, #0x120
STR             R5, [R1,#0x11C]
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
BL              sub_5BA160
ADD             R0, R0, #0x290
BL              sub_14CB8C
LDR             R4, =off_6C3280
STR             R4, [R0],#0x100
BL              sub_2C2000
LDR             R1, =0x73D8
SUB             R0, R0, #0x100
STR             R5, [R1,R0]
ADD             R0, R0, #0x7000
ADD             R0, R0, #0x3DC
BL              sub_14CB8C
STR             R4, [R0],#0x100
BL              sub_2C2000
LDR             R1, =0x73D8
SUB             R0, R0, #0x100
SUB             R4, R0, #0xB000
SUB             R4, R4, #0x2E4
STR             R5, [R1,R0]
SUB             R0, R0, #0xB000
SUB             R0, R0, #0x2D4
MOV             R2, #0x34 ; '4'
MOV             R1, #0
BL              sub_110BE4
MOV             R0, R4
POP             {R4-R6,PC}
