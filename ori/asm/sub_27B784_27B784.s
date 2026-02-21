PUSH            {R4-R11,LR}
SUB             SP, SP, #0x1C
MOV             R10, #0
LDR             R1, =off_6BC228
STRB            R10, [R0,#4]
STRB            R10, [R0,#5]
STRH            R10, [R0,#6]
STR             R1, [R0]
ADD             R1, R0, #8
STR             R1, [R0,#0xBC]
STR             R1, [R0,#0xC0]
ADD             R1, R0, #0xC8
STR             R10, [R0,#0xC4]
STR             R1, [R0,#0xCC]
STR             R1, [R0,#0xC8]
ADD             R1, R0, #0xD4
STR             R10, [R0,#0xD0]
STR             R1, [R0,#0xD8]
STR             R1, [R0,#0xD4]
ADD             R1, R0, #0xE0
STR             R10, [R0,#0xDC]
STR             R1, [R0,#0xE4]
STR             R1, [R0,#0xE0]
STRB            R10, [R0,#0xE8]
STR             R10, [R0,#0xEC]
STR             R10, [R0,#0xF4]
ADD             R1, R0, #0x104
STR             R10, [R0,#0x100]
STR             R1, [R0,#0x108]
STR             R1, [R0,#0x104]
ADD             R1, R0, #0x110
STR             R10, [R0,#0x10C]
STR             R1, [R0,#0x114]
STR             R1, [R0,#0x110]
ADD             R1, R0, #0x11C
STR             R10, [R0,#0x118]
STR             R1, [R0,#0x120]
STR             R1, [R0,#0x11C]!
STR             R10, [R0,#8]!
ADD             R0, R0, #4
BL              sub_280C1C
LDR             R2, =0x127EC
SUB             R0, R0, #0x128
ADD             R1, R0, #0x12000
ADD             R1, R1, #0x7F0
STR             R1, [R2,R0]
STR             R1, [R1,#8]
STR             R1, [R1,#4]
ADD             R1, R0, #0x12800
ADD             R2, R0, #0x12800
STR             R10, [R1]
STR             R10, [R1,#8]
ADD             R1, R0, #0x12800
ADD             R2, R2, #0x17C
ADD             R1, R1, #0x14
ADD             R0, R0, #0x12800
STR             R1, [R2]
ADD             R0, R0, #0x194
STR             R1, [R2,#4]
BL              sub_14F198
LDR             R11, =off_6CE970
SUB             R4, R0, #0x12800
SUB             R4, R4, #0x194
LDR             R0, [R11]
ADD             R5, R0, #0x19C000
MOV             R0, #0xFF
ADD             R5, R5, #0x1F40
REV             R6, R0
MOV             R0, R5
BL              sub_4E63E0
STR             R6, [R5,#(loc_19DF44 - 0x19DF40)]
STR             R6, [R5]
LDR             R0, [R11]
BL              sub_52FB70
LDR             R0, =off_6CDF98
MOV             R3, #0
MOV             R2, R3
STR             R4, [R0]
LDR             R0, [R11]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x6EC
BL              sub_10A358
CMP             R0, #0
BLNE            sub_277F10
STR             R0, [R4,#0x124]
LDR             R0, [R0,#0xCC]
ADD             R8, R4, #0x12800
MOV             R3, #0
STR             R0, [R8,#0x188]
LDR             R0, [R11]
ADD             R7, R4, #0x10C
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x10
BL              sub_10A358
CMP             R0, #0
MOVEQ           R9, #0
BEQ             loc_27B914
BL              sub_281680
MOV             R9, R0
LDR             R0, [R7,#8]
ADD             R1, R7, #4
CMP             R0, R1
BNE             loc_27BD04
LDR             R5, [R7]
CMP             R5, #0
BEQ             loc_27B9B0
MOV             R6, R5
LDR             R0, [R5,#4]!
CMP             R0, #0
BEQ             loc_27B94C
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R5,#8]
ADD             R2, R5, #4
CMP             R1, R2
BNE             loc_27B978
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_27B998
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_27B998
ADD             R0, R5, #4
CMP             R1, R0
BEQ             loc_27B998
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
STR             R10, [R5]
LDRD            R0, R1, [R5,#4]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, R6
BL              sub_300FD4
STR             R9, [R7]
LDR             R0, [R4,#0x124]
MOV             R7, #0x410
ADD             R5, R4, #0x12800
LDR             R1, [R0,#0x558]
STR             R1, [R8,#0x190]
ADD             R1, R0, #0x28C
LDR             R0, [R0,#0x24]
LDM             R1, {R1,R2}
ADD             R0, R0, #1
MUL             R1, R1, R2
MUL             R6, R1, R0
LDR             R0, [R11]
ADD             R1, R6, R6,LSL#6
LDR             R2, [R0,#0x68]!
MOV             R1, R1,LSL#4
LDR             R3, [R2,#0xC]
MOV             R2, #0
BLX             R3
ADD             R1, R5, #4
STR             R0, [R5]
STM             R1, {R0,R6}
CMP             R6, #0
STR             R6, [R5,#0xC]
MOV             R3, R0
MOV             R2, #0
STRB            R10, [R5,#0x10]
BLS             loc_27BA38
ADD             R1, R0, R7
ADD             R2, R2, #1
STR             R1, [R0]
CMP             R6, R2
MOV             R0, R1
BHI             loc_27BA20
SUB             R0, R6, #1
MOV             R9, #1
MLA             R0, R7, R0, R3
STR             R10, [R0]
STRB            R9, [R5,#0x10]
LDR             R0, =sub_10D4F0
LDR             R12, [R11]
LDR             R0, [R12,R0]
CMP             R0, #0
STRBNE          R10, [R0,#0xF2]
LDR             R0, =0x10E0BC
LDR             R0, [R0,R12]
CMP             R0, #0
STRBNE          R10, [R0,#0xF2]
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
MOVNE           R2, R10
BEQ             loc_27BAC4
CMP             R0, #0
SUBNE           R0, R0, #0x1AC
LDR             R0, [R0,#0x18]
STRB            R2, [R0,#0xF2]
MOVS            R0, R1
MOVEQ           R1, #0
LDRNE           R1, [R0,#8]
CMP             R0, R10
BNE             loc_27BAA0
MOV             R3, #0
LDR             R0, =0x15B8
ADD             R6, R4, #0xDC
MOV             R7, SP
MOV             R2, R3
ADD             R1, R12, #0x68 ; 'h'
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_27BBBC
LDR             R1, =off_6BC1C0
STR             R10, [R0,#0xC]
STM             R0, {R1,R4}
ADD             R0, R0, #0x18
BL              sub_14F198
ADD             R0, R0, #0x3F4
NOP
BL              sub_14F198
ADD             R0, R0, #0x3F4
NOP
BL              sub_27794C
ADD             R0, R0, #0x58 ; 'X'
NOP
BL              sub_277DD8
ADD             R0, R0, #0x48 ; 'H'
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
STR             R10, [R5,#0x10C]
VLDR            S1, =50.0
STR             R10, [R5,#0x110]
VSTR            S0, [R5,#0x114]
VSTR            S1, [R5,#0x118]
VSTR            S0, [R5,#0x11C]
VLDR            S1, =-20.0
ADD             R12, R5, #0x120
VLDR            S2, =-140.0
ADD             R0, R5, #0x10C
VSTM            R12, {S0-S1}
VSTR            S0, [R5,#0x128]
VLDR            S1, =90.0
VSTR            S2, [R5,#0x12C]
VSTR            S1, [R5,#0x130]
VSTR            S0, [R5,#0x134]
STR             R9, [R0,#0x2C]
LDR             R1, =0xBDC
ADD             R0, R5, #0x13C
BL              sub_2FFE8C
LDR             R1, =sub_14F198
ADD             R0, R5, #0x13C
MOV             R3, #3
MOV             R2, #0x3F4
BLX             sub_1002F4
SUB             R0, R0, #0x800
SUB             R0, R0, #0x1DC
STR             R0, [SP,#0x40+var_40]
ADD             R0, R7, #4
STR             R0, [SP,#0x40+var_38]
STR             R0, [SP,#0x40+var_3C]
LDR             R0, [R6]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_27BBE8
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [SP,#0x40+var_40]
LDR             R0, [R6]
CMP             R0, R1
BEQ             loc_27BC58
LDR             R1, [R6,#8]
ADD             R2, R6, #4
CMP             R1, R2
BNE             loc_27BD20
CMP             R0, #0
BEQ             loc_27BC1C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [SP,#0x40+var_40]
ADD             R2, R7, #4
STR             R0, [R6],#4
CMP             R2, R6
LDRNE           R0, [SP,#0x40+var_38]
CMPNE           R0, R6
BEQ             loc_27BC58
MOV             R3, R0
LDRD            R0, R1, [R6]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R3, [R6,#4]
STR             R6, [R3]
STR             R6, [SP,#0x40+var_38]
STR             R2, [R6]
LDR             R0, [SP,#0x40+var_40]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R5
BLX             R2
LDR             R1, [SP,#0x40+var_38]
ADD             R0, SP, #0x40+var_3C
CMP             R1, R0
BNE             loc_27BC94
LDR             R0, [SP,#0x40+var_40]
CMP             R0, #0
BEQ             loc_27BC94
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x40+var_3C]
ADD             R3, SP, #0x40+var_34
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, =0x1298C
STRB            R10, [R0,R4]
LDR             R2, [R4,#0x124]
ADD             R2, R2, #0x2E8
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
VMOV            S0, R2
LDR             R0, [R8,#0x190]
LDR             R1, =0x10C214
STR             R0, [SP,#0x40+var_34]
LDR             R0, [R4,#0x124]
VLDR            S1, [R0,#0xD8]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_2C]
LDR             R0, [R11]
LDR             R1, [R1,R0]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x40+var_34
BLX             R2
ADD             SP, SP, #0x1C
MOV             R0, R4
POP             {R4-R11,PC}
LDR             R2, [R7,#4]
ADD             R1, R7, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R7,#4]
STR             R1, [R7,#8]
B               loc_27B9B0
LDR             R2, [R6,#4]
ADD             R0, R6, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
B               loc_27BC1C
