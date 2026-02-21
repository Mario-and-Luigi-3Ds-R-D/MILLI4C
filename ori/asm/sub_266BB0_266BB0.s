PUSH            {R4-R8,LR}
SUB             SP, SP, #0x10
MOV             R8, #0
LDR             R1, =off_6BBE60
STRB            R8, [R0,#4]
STRB            R8, [R0,#5]
STRH            R8, [R0,#6]
STR             R1, [R0]
ADD             R1, R0, #0x10
STR             R8, [R0,#0xC]
STR             R1, [R0,#0x14]
ADD             R2, R0, #0x18
STR             R1, [R0,#0x10]
STR             R2, [R0,#0x90]
STR             R2, [R0,#0x94]!
ADD             R0, R0, #4
BL              sub_269FE4
SUB             R1, R0, #0x98
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x26C0
STR             R8, [R0],#4
STR             R0, [R0,#4]
STR             R0, [R0]
ADD             R0, R1, #0x12400
ADD             R0, R0, #0x368
STR             R8, [R0],#4
STR             R0, [R0,#4]
STR             R0, [R0]
ADD             R0, R1, #0x12400
ADD             R0, R0, #0x374
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14CB8C
MOV             R1, R0
LDR             R0, =off_6C3220
LDR             R3, =0x300B2
MOV             R7, #3
STR             R0, [R1]
ADD             R4, R1, #0x108
STR             R7, [R1,#0x104]
MOV             R2, #0x63 ; 'c'
STR             R8, [R1,#0x100]
STM             R4, {R2,R3,R8}
ADD             R0, R1, #0x118
MOV             R12, #2
STR             R8, [R1,#0x114]
STM             R0, {R8,R12}
ADD             R0, R1, #0x128
STR             R8, [R1,#0x120]
STR             R8, [R1,#0x124]
BL              sub_14F198
SUB             R6, R0, #0x128
LDR             R0, =off_6C3340
LDR             R1, =0x4020
ADD             R4, R6, #0x400
STR             R0, [R6,#0x51C]
STR             R1, [R6,#0x520]
LDR             R1, =0xFF0100
ADD             R4, R4, #0x11C
STR             R1, [R6,#0x524]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0xC
LDR             R0, [R0,#8]
STR             R0, [R4,#0x14]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x18
LDR             R0, [R0,#8]
STR             R0, [R4,#0x20]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x24 ; '$'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x2C]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x30 ; '0'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x38]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x3C ; '<'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x44]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x48 ; 'H'
LDR             R0, [R0,#8]
VLDR            S0, =0.0
VLDR            S1, =0.25
STR             R0, [R4,#0x50]
STR             R8, [R4,#0x54]
STM             R3, {R1,R2}
MOV             R0, #1
STR             R8, [R4,#0x58]
STR             R0, [R4,#0x60]
ADD             R2, R4, #0x64 ; 'd'
STR             R8, [R4,#0x5C]
MOV             R1, #7
VSTM            R2, {S0-S1}
ADD             R5, R4, #0x6C ; 'l'
VLDR            S1, =1.0
STR             R1, [R4,#0x94]
VSTR            S1, [R4,#0x7C]
VSTR            S1, [R4,#0x80]
VSTR            S1, [R4,#0x84]
VSTR            S0, [R4,#0x6C]
VSTR            S0, [R4,#0x70]
ADD             R1, R4, #0x74 ; 't'
VSTM            R1, {S0-S1}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R5, #0x1C
LDR             R0, [R0,#8]
STR             R0, [R5,#0x24]
STM             R3, {R1,R2}
MOV             R1, #0xFFFFFFFF
LDR             R0, [R5,#0x28]
REV             R1, R1
ORR             R0, R0, #0x38 ; '8'
STR             R0, [R5,#0x28]
ADD             R5, R4, #0xCC
STR             R1, [R4,#0xC8]
MOV             R1, #0x9C
MOV             R0, R5
BL              sub_2FFE8C
STR             R5, [R5,#0xA0]
ADD             R0, R5, #0x9C
STR             R5, [R5,#0x9C]
STR             R0, [R5,#0xA8]
MOV             R0, #0xFFFFFFFF
STR             R5, [R5,#0xA4]
STR             R0, [R4,#0x17C]
STR             R8, [R4,#0x178]
STR             R8, [R4,#0x180]
STR             R8, [R4,#0x184]
STR             R8, [R4,#0x188]
STR             R8, [R4,#0x18C]
LDR             R0, =off_6CDE08
STRB            R7, [R6,#0x6AC]
LDR             R7, =off_6CE970
SUB             R4, R6, #0x12800
SUB             R4, R4, #0x368
STR             R4, [R0]
LDR             R0, [R7]
ADD             R5, R0, #0x19C000
MOV             R0, #0xFF
ADD             R5, R5, #0x1F40
REV             R6, R0
MOV             R0, R5
BL              sub_4E63E0
STR             R6, [R5,#(loc_19DF44 - 0x19DF40)]
STR             R6, [R5]
ADD             R5, R4, #0x12400
ADD             R5, R5, #0x364
MOV             R3, #0
STR             R8, [R5]
LDR             R0, [R7]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x494
BL              sub_10A358
CMP             R0, #0
BLNE            sub_2619C4
STR             R0, [R4,#8]
LDR             R0, [R7]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
BLNE            sub_260410
STR             R0, [R5]
LDR             R1, [R4,#8]
STR             R1, [R0]
LDR             R1, =sub_10D4F0
LDR             R0, [R7]
LDR             R1, [R0,R1]
CMP             R1, #0
STRBNE          R8, [R1,#0xF2]
LDR             R1, =0x10E0BC
LDR             R1, [R1,R0]
CMP             R1, #0
STRBNE          R8, [R1,#0xF2]
LDR             R1, =0x10646C
ADD             R0, R0, R1; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R0, #0
ADDNE           R0, R0, #0x1AC
CMP             R0, #0
LDRNE           R1, [R0,#8]
MOVEQ           R1, #0
MOVNE           R6, R8
BEQ             loc_266F00
CMP             R0, #0
SUBNE           R0, R0, #0x1AC
LDR             R0, [R0,#0x18]
STRB            R6, [R0,#0xF2]
MOVS            R0, R1
MOVEQ           R1, #0
LDRNE           R1, [R0,#8]
CMP             R0, R8
BNE             loc_266EDC
ADD             R5, R4, #0xC
MOV             R1, R4
MOV             R0, SP
BL              sub_264164
LDR             R0, [R5]
MOV             R6, SP
MOV             R7, #0
CMP             R0, #0
BEQ             loc_266F30
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [SP,#0x28+var_28]
LDR             R0, [R5]
CMP             R0, R1
BEQ             loc_266FA0
LDR             R2, [R5,#8]
ADD             R1, R5, #4
CMP             R2, R1
BNE             loc_267030
CMP             R0, #0
BEQ             loc_266F64
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [SP,#0x28+var_28]
STR             R0, [R5],#4
ADD             R0, R6, #4
CMP             R0, R5
LDRNE           R1, [SP,#0x28+var_20]
CMPNE           R1, R5
BEQ             loc_266FA0
MOV             R2, R1
LDM             R5, {R1,R3}
STR             R3, [R1,#4]
STR             R1, [R3]
STR             R2, [R5,#4]
STR             R5, [R2]
STR             R5, [SP,#0x28+var_20]
STR             R0, [R5]
LDR             R0, [SP,#0x28+var_28]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R7
BLX             R2
LDR             R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_24
CMP             R1, R0
BNE             loc_266FDC
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_266FDC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4-R8,PC}
DCD off_6BBE60
DCD off_6C3220
DCD 0x300B2
DCD off_6C3340
DCD 0x4020
DCD 0xFF0100
DCFS 0.0
DCFS 0.25
DCFS 1.0
DCD off_6CDE08
DCD off_6CE970
DCD 0x494
DCD sub_10D4F0
DCD 0x10E0BC
DCD 0x10646C
LDR             R0, [R5,#4]
ADD             R1, R5, #4
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_266F64
