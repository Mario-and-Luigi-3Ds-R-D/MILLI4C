PUSH            {R4-R9,LR}
SUB             SP, SP, #0xC
MOV             R7, #0
LDR             R1, =off_6BC5F4
STRB            R7, [R0,#4]
STRB            R7, [R0,#5]
STRH            R7, [R0,#6]
STR             R1, [R0]
ADD             R1, R0, #0xC
STR             R7, [R0,#8]
STR             R1, [R0,#0x10]
STR             R1, [R0,#0xC]
ADD             R1, R0, #0x28 ; '('
STR             R7, [R0,#0x24]
STR             R1, [R0,#0x2C]
STR             R1, [R0,#0x28]
ADD             R1, R0, #0x34 ; '4'
STR             R7, [R0,#0x30]
STR             R1, [R0,#0x38]
STR             R1, [R0,#0x34]
ADD             R1, R0, #0x44 ; 'D'
STR             R7, [R0,#0x40]
STR             R1, [R0,#0x48]
STR             R1, [R0,#0x44]
ADD             R1, R0, #0x50 ; 'P'
STR             R7, [R0,#0x4C]
STR             R1, [R0,#0x54]
STR             R1, [R0,#0x50]
ADD             R1, R0, #0x5C ; '\'
STR             R7, [R0,#0x58]
STR             R1, [R0,#0x60]
STR             R1, [R0,#0x5C]
ADD             R1, R0, #0x64 ; 'd'
STR             R1, [R0,#0xDC]
STR             R1, [R0,#0xE0]!
ADD             R0, R0, #4
BL              sub_298468
SUB             R1, R0, #0xE4
ADD             R0, R0, #0x12000
ADD             R0, R0, #0x6D0
STR             R0, [R0,#0x24]
STR             R0, [R0,#0x28]
ADD             R0, R1, #0x12000
ADD             R0, R0, #0x7E0
STR             R7, [R0],#4
STR             R0, [R0,#4]
STR             R0, [R0]
ADD             R0, R1, #0x12400
ADD             R0, R0, #0x3EC
STR             R7, [R0],#4
STR             R0, [R0,#4]
STR             R0, [R0]
ADD             R0, R1, #0x12400
ADD             R0, R0, #0x3F8
STR             R7, [R0],#4
STR             R0, [R0,#4]
STR             R0, [R0]
ADD             R0, R1, #0x12800
ADD             R0, R0, #4
STR             R7, [R0],#4
STR             R0, [R0,#4]
STR             R0, [R0]
ADD             R0, R1, #0x12000
ADD             R0, R0, #0x810
STR             R7, [R0],#4
STR             R0, [R0,#4]
STR             R0, [R0]
ADD             R0, R1, #0x12800
ADD             R0, R0, #0x1C
BL              sub_14F198
LDR             R1, =0x12C18
SUB             R4, R0, #0x12800
MOV             R3, #5
STRB            R3, [R0,#0x400]
LDR             R0, =off_6CDCE8
SUB             R4, R4, #0x1C
LDR             R9, =off_6CE970
SUB             R2, R1, #8
STR             R7, [R1,R4]
STRB            R7, [R2,R4]
STR             R4, [R0]
LDR             R0, [R9]
ADD             R5, R0, #0x19C000
MOV             R0, #0xFF
ADD             R5, R5, #0x1F40
REV             R6, R0
MOV             R0, R5
BL              sub_4E63E0
STR             R6, [R5,#(loc_19DF44 - 0x19DF40)]
STR             R6, [R5]
LDR             R0, [R9]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x434
BL              sub_10A358
CMP             R0, #0
BLNE            sub_28FAD8
ADD             R2, R4, #0x14
LDR             R1, =0x12C14
STM             R2, {R0,R7}
MOV             R8, #1
STR             R7, [R4,#0x1C]
STR             R7, [R4,#0x20]
STR             R7, [R4,#0x3C]
STR             R8, [R1,R4]
LDR             R0, =sub_10D4F0
LDR             R12, [R9]
LDR             R0, [R12,R0]
CMP             R0, #0
STRBNE          R7, [R0,#0xF2]
LDR             R0, =0x10E0BC
LDR             R0, [R0,R12]
CMP             R0, #0
STRBNE          R7, [R0,#0xF2]
LDR             R0, =0x10646C
ADD             R0, R0, R12; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R0, #0
ADDNE           R0, R0, #0x1AC
CMP             R0, #0
LDRNE           R1, [R0,#8]
MOVEQ           R1, #0
MOVNE           R2, R7
BEQ             loc_296118
CMP             R0, #0
SUBNE           R0, R0, #0x1AC
LDR             R0, [R0,#0x18]
STRB            R2, [R0,#0xF2]
MOVS            R0, R1
MOVEQ           R1, #0
LDRNE           R1, [R0,#8]
CMP             R0, R7
BNE             loc_2960F4
LDR             R0, =0x15B8
MOV             R6, SP
MOV             R3, #0x800000
MOV             R2, #0
ADD             R1, R12, #0x68 ; 'h'
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_296214
LDR             R2, =off_6BC484
ADD             R1, R4, #0x12800
ADD             R1, R1, #0x1C
STR             R1, [R0,#8]
STM             R0, {R2,R4}
ADD             R0, R0, #0xC
BL              sub_14F198
ADD             R0, R0, #0x3F4
NOP
BL              sub_14F198
ADD             R0, R0, #0x3F4
NOP
BL              sub_28D9F4
ADD             R0, R0, #0x58 ; 'X'
NOP
BL              sub_28DE80
ADD             R0, R0, #0x54 ; 'T'
NOP
BL              sub_14CB8C
MOV             R5, R0
LDR             R0, =off_6C357C
MOV             R1, #0xC0
VLDR            S0, =0.0
STR             R0, [R5]
STR             R1, [R5,#0x100]
VSTR            S0, [R5,#0x104]
VSTR            S0, [R5,#0x108]
STR             R7, [R5,#0x10C]
VLDR            S1, =50.0
STR             R7, [R5,#0x110]
VSTR            S0, [R5,#0x114]
VSTR            S1, [R5,#0x118]
VSTR            S0, [R5,#0x11C]
VLDR            S1, =-20.0
ADD             R0, R5, #0x120
VLDR            S2, =-140.0
ADD             R12, R5, #0x10C
VSTM            R0, {S0-S1}
ADD             R0, R5, #0x13C
VSTR            S0, [R5,#0x128]
VLDR            S1, =90.0
VSTR            S2, [R5,#0x12C]
VSTR            S1, [R5,#0x130]
VSTR            S0, [R5,#0x134]
LDR             R1, =0xBDC
STR             R8, [R12,#0x2C]
BL              sub_2FFE8C
LDR             R1, =sub_14F198
ADD             R0, R5, #0x13C
MOV             R3, #3
MOV             R2, #0x3F4
BLX             sub_1002F4
SUB             R0, R0, #0x800
SUB             R0, R0, #0x1DC
STR             R0, [SP,#0x28+var_28]
ADD             R0, R6, #4
STR             R0, [SP,#0x28+var_20]
STR             R0, [SP,#0x28+var_24]
MOV             R1, R6
MOV             R2, #0
ADD             R0, R4, #0x58 ; 'X'
BL              sub_61F2AC
LDR             R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_24
CMP             R1, R0
BNE             loc_29625C
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_29625C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4-R9,PC}
