PUSH            {R4-R11,LR}
MOV             R9, #0
LDR             R1, =off_6BB9AC
VPUSH           {D8}
SUB             SP, SP, #0xC
STRB            R9, [R0,#4]
STRB            R9, [R0,#5]
STRH            R9, [R0,#6]
STR             R1, [R0]
ADD             R1, R0, #0xC
STR             R9, [R0,#8]
STR             R1, [R0,#0x10]
STR             R1, [R0,#0xC]!
STR             R9, [R0,#0x14]!
ADD             R0, R0, #4
BL              sub_22AEF0
LDR             R1, =0x126E8
SUB             R0, R0, #0x24 ; '$'
ADD             R12, R1, #8
ORR             R2, R1, R1,ASR#11
STR             R9, [R1,R0]
ADD             R1, R1, #0xC
STR             R9, [R2,R0]
STR             R9, [R12,R0]
ADD             R2, R1, #4
STR             R9, [R1,R0]
ADD             R3, R1, #8
STR             R9, [R2,R0]
ADD             R12, R1, #0xC
STR             R9, [R3,R0]
ADD             R4, R1, #0x10
STR             R9, [R12,R0]
ADD             R2, R0, #0x12400
ADD             R1, R0, #0x12400
ADD             R2, R2, #0x3F8
ADD             R1, R1, #0x308
STR             R9, [R4,R0]
STR             R1, [R2]
STR             R1, [R2,#4]
ADD             R1, R0, #0x12000
ADD             R1, R1, #0x8F0
ADD             R2, R0, #0x12800
STR             R2, [R1]
STR             R2, [R1,#4]
ADD             R12, R0, #0x12800
ADD             R12, R12, #0xF8
ADD             R1, R0, #0x12800
ADD             R1, R1, #0x10C
STR             R9, [R12]
STR             R9, [R12,#8]
STR             R9, [R1]
STR             R9, [R1,#8]
ADD             R2, R3, #0x224
ADD             R1, R0, #0x12800
ADD             R1, R1, #0x124
STR             R1, [R2,R0]
STR             R1, [R1,#8]
ADD             R0, R0, #0x12800
STR             R1, [R1,#4]
LDR             R1, =sub_14F198
MOV             R3, #2
MOV             R2, #0x3F4
ADD             R0, R0, #0x134
BLX             sub_1002F4
ADD             R0, R0, #0x400
ADD             R0, R0, #0x3E8
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14F198
SUB             R4, R0, #0x13000
SUB             R4, R4, #0x510
MOV             R0, #0x700
BL              sub_6126B8
LDR             R0, =0x13908
LDR             R10, =off_6CE970
STR             R9, [R0,R4]
LDR             R0, [R10]
ADD             R5, R0, #0x19C000
MOV             R0, #0xFF
ADD             R5, R5, #0x1F40
REV             R6, R0
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, =0x1390C
LDR             R8, =off_6CDA80
STR             R6, [R5,#(loc_19DF44 - 0x19DF40)]
STR             R6, [R5]
STRB            R9, [R0,R4]
STR             R4, [R8]
LDR             R0, [R10]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x4AC
BL              sub_10A358
CMP             R0, #0
BLNE            sub_225DCC
ADD             R6, R4, #0x12400
ADD             R6, R6, #0x2F4
MOV             R1, SP
STR             R0, [R6]
LDR             R0, [R0,#0x2A4]
STR             R0, [SP,#0x38+var_38]
STR             R0, [SP,#0x38+var_34]
STR             R0, [SP,#0x38+var_30]
ADD             R0, R4, #0x13000
ADD             R0, R0, #0x510
MOV             R5, R0
BL              sub_14EA04
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
LDR             R0, [R10]
ADD             R5, R4, #0x12800
LDR             R11, =0x41C
LDR             R1, =0x5230
LDR             R2, [R0,#0x68]!
MOV             R7, #0x14
ADD             R5, R5, #0xF8
LDR             R3, [R2,#0xC]
MOV             R2, #0
BLX             R3
ADD             R1, R5, #4
STR             R0, [R5]
STM             R1, {R0,R7}
MOV             R2, R0
STR             R7, [R5,#0xC]
MOV             R1, #0
STRB            R9, [R5,#0x10]
ADD             R3, R0, R11
ADD             R1, R1, #1
STR             R3, [R0]
CMP             R1, R7
MOV             R0, R3
BCC             loc_227794
SUB             R0, R7, #1
LDR             R1, =0x51E0
MLA             R0, R11, R0, R2
MOV             R11, #1
MOV             R7, #0x14
STR             R9, [R0]
STRB            R11, [R5,#0x10]
LDR             R0, [R10]
ADD             R5, R4, #0x12800
ADD             R5, R5, #0x10C
LDR             R2, [R0,#0x68]!
LDR             R3, [R2,#0xC]
MOV             R2, #0
BLX             R3
ADD             R3, R5, #4
STR             R0, [R5]
STM             R3, {R0,R7}
MOV             R1, R0
LDR             R2, =0x418
STR             R7, [R5,#0xC]
MOV             R3, #0
STRB            R9, [R5,#0x10]
ADD             R12, R0, R2
ADD             R3, R3, #1
STR             R12, [R0]
CMP             R3, R7
MOV             R0, R12
BCC             loc_227804
SUB             R0, R7, #1
MOV             R3, #0
MLA             R0, R2, R0, R1
MOV             R2, R3
STR             R9, [R0]
STRB            R11, [R5,#0x10]
LDR             R0, [R10]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0xD28
BL              sub_10A358
VLDR            S16, =0.0
CMP             R0, #0
BEQ             loc_2278EC
LDR             R1, [R8]
STR             R1, [R0,#4]
LDR             R1, =off_6BB888
STR             R1, [R0],#0xC
STR             R9, [R0],#4
BL              sub_14CB8C
MOV             R5, R0
LDR             R0, =off_6C357C
MOV             R1, #0xC0
VLDR            S0, =50.0
STR             R0, [R5]
STR             R1, [R5,#0x100]
VSTR            S16, [R5,#0x104]
VSTR            S16, [R5,#0x108]
STR             R9, [R5,#0x10C]
STR             R9, [R5,#0x110]
VSTR            S16, [R5,#0x114]
VSTR            S0, [R5,#0x118]
VSTR            S16, [R5,#0x11C]
VLDR            S0, =-20.0
VSTR            S16, [R5,#0x120]
VSTR            S0, [R5,#0x124]
VLDR            S1, =-140.0
VSTR            S16, [R5,#0x128]
VLDR            S0, =90.0
VSTR            S1, [R5,#0x12C]
ADD             R12, R5, #0x10C
VSTR            S0, [R5,#0x130]
VSTR            S16, [R5,#0x134]
LDR             R1, =0xBDC
ADD             R0, R5, #0x13C
STR             R11, [R12,#0x2C]
BL              sub_2FFE8C
LDR             R1, =sub_14F198
ADD             R0, R5, #0x13C
MOV             R3, #3
MOV             R2, #0x3F4
BLX             sub_1002F4
SUB             R0, R0, #0x14C
STR             R0, [R4,#0x14]
LDR             R0, [R10]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x3C ; '<'
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_227924
LDR             R1, [R8]
STR             R1, [R0,#4]
LDR             R1, =off_6BBA34
STR             R1, [R0]
STR             R0, [R4,#0x18]
LDR             R0, [R10]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x41C
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_22796C
LDR             R1, [R8]
STR             R1, [R0,#4]
LDR             R1, =off_6BB8A4
STR             R1, [R0],#0x24
BL              sub_14F198
STRB            R9, [R0,#-0x18]!
STRB            R9, [R0,#0x40C]
SUB             R0, R0, #0xC
STR             R0, [R4,#0x1C]
LDR             R0, [R4,#0x20]
LDR             R5, [R4,#0x14]
MOV             R7, #0
CMP             R0, #0
BEQ             loc_227990
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R5, [R4,#0x20]
LDR             R0, [R5]
MOV             R1, R7
LDR             R2, [R0,#8]
MOV             R0, R5
BLX             R2
LDR             R0, =sub_10D4F0
LDR             R3, [R10]
LDR             R0, [R3,R0]
CMP             R0, #0
STRBNE          R9, [R0,#0xF2]
LDR             R0, =0x10E0BC
LDR             R0, [R0,R3]
CMP             R0, #0
STRBNE          R9, [R0,#0xF2]
LDR             R0, =0x10646C
ADD             R0, R0, R3; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R0, #0
ADDNE           R0, R0, #0x1AC
CMP             R0, #0
LDRNE           R1, [R0,#8]
MOVEQ           R1, #0
MOVNE           R2, R9
BEQ             loc_227A20
CMP             R0, #0
SUBNE           R0, R0, #0x1AC
LDR             R0, [R0,#0x18]
STRB            R2, [R0,#0xF2]
MOVS            R0, R1
MOVEQ           R1, #0
LDRNE           R1, [R0,#8]
CMP             R0, R9
BNE             loc_2279FC
ADD             R0, R3, #0x10C000
ADD             R0, R0, #0x214
LDR             R1, [R6]
LDR             R2, [R0]
ADD             R1, R1, #0x400
ADD             R1, R1, #0x9C
LDR             R2, [R2,#0x20]
BLX             R2
LDR             R1, [R10]
LDR             R0, [R6]
ADD             R5, R1, #0x10C000
ADD             R5, R5, #0x3D8
ADD             R6, R0, #0x1DC
MOV             R0, R5
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R7, R5, #0x1C
ADD             R5, R5, #4
STM             R7, {R0-R2}
STM             R5, {R0-R2}
LDR             R0, =0x10C51C
LDR             R1, [R10]
ADD             R0, R0, R1; loc_10C51C
MOV             R5, R0
BL              sub_5A18EC
LDR             R0, =0x13904
VSTR            S16, [R5,#(loc_10C528 - 0x10C51C)]
VSTR            S16, [R5,#(loc_10C520 - 0x10C51C)]
STR             R9, [R0,R4]
ADD             SP, SP, #0xC
MOV             R0, R4
VPOP            {D8}
POP             {R4-R11,PC}
