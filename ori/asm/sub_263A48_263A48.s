PUSH            {R4-R8,LR}
MOV             R6, R2
MOV             R2, #0
STR             R1, [R0,#4]
LDR             R1, =off_6BBE28
STR             R1, [R0]
ADD             R1, R0, #0xC
STR             R2, [R0,#8]
STR             R1, [R0,#0x10]
STR             R1, [R0,#0xC]
ADD             R1, R0, #0x18
STR             R2, [R0,#0x14]
STR             R1, [R0,#0x1C]
STR             R1, [R0,#0x18]!
ADD             R0, R0, #8
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_2614E4
ADD             R0, R0, #0x58 ; 'X'
BL              sub_261970
SUB             R1, R0, #0x860
MOV             R8, #0
STR             R8, [R0,#0x54]!
MOV             R5, #1
STR             R5, [R0,#4]
STR             R8, [R0,#8]
STR             R8, [R0,#0xC]
STR             R8, [R0,#0x10]
STR             R8, [R0,#0x14]
ADD             R0, R1, #0x8D0
STR             R8, [R1,#0x8CC]
STR             R0, [R1,#0x8D4]
STR             R0, [R1,#0x8D0]
ADD             R0, R1, #0x800
ADD             R0, R0, #0xDC
STR             R6, [R1,#0x8D8]
BL              sub_14CB8C
MOV             R4, R0
LDR             R0, =off_6C357C
MOV             R1, #0xC0
VLDR            S0, =0.0
STR             R0, [R4]
STR             R1, [R4,#0x100]
VSTR            S0, [R4,#0x104]
VSTR            S0, [R4,#0x108]
STR             R8, [R4,#0x10C]
VLDR            S1, =50.0
STR             R8, [R4,#0x110]
VSTR            S0, [R4,#0x114]
VSTR            S1, [R4,#0x118]
VSTR            S0, [R4,#0x11C]
VLDR            S1, =-20.0
ADD             R1, R4, #0x120
VLDR            S2, =-140.0
ADD             R0, R4, #0x10C
VSTM            R1, {S0-S1}
VSTR            S0, [R4,#0x128]
VLDR            S1, =90.0
VSTR            S2, [R4,#0x12C]
VSTR            S1, [R4,#0x130]
VSTR            S0, [R4,#0x134]
STR             R5, [R0,#0x2C]
LDR             R1, =0xBDC
ADD             R0, R4, #0x13C
BL              sub_2FFE8C
LDR             R1, =sub_14F198
ADD             R0, R4, #0x13C
MOV             R3, #3
MOV             R2, #0x3F4
BLX             sub_1002F4
SUB             R5, R0, #0x800
SUB             R4, R0, #0x800
LDR             R0, =off_6CE970
MOV             R3, #0
SUB             R5, R5, #0x218
SUB             R4, R4, #0x204
LDR             R0, [R0]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
BEQ             loc_263BB0
LDR             R1, [R5,#4]
ADD             R1, R1, #0x98
STR             R1, [R0,#8]
STR             R6, [R0,#4]
STRB            R8, [R0]
LDR             R1, [R4,#8]
MOV             R7, R0
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_263BDC
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
NOP
NOP
B               loc_263BFC
ADD             R0, R4, #4
CMP             R1, R0
BEQ             loc_263BFC
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
MOV             R0, R5
STR             R7, [R4]
POP             {R4-R8,PC}
