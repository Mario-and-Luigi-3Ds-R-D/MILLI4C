PUSH            {R4-R11,LR}
MOV             R9, #0
MOV             R10, #1
LDR             R1, =off_6BB84C
VPUSH           {D8}
SUB             SP, SP, #4
STRB            R9, [R0,#4]
STRB            R9, [R0,#5]
STRH            R9, [R0,#6]
STR             R1, [R0]
STRB            R10, [R0,#8]
STR             R9, [R0,#0xC]!
ADD             R0, R0, #4
BL              sub_1FDDE4
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x26C0
BL              sub_1FC300
LDR             R1, =0x126D8
SUB             R0, R0, #0x12000
SUB             R0, R0, #0x6D0
ADD             R12, R0, #0x12400
ORR             R2, R1, R1,ASR#14
STR             R9, [R1,R0]
STR             R9, [R2,R0]
ADD             R2, R0, #0x12400
ADD             R1, R0, #0x12000
ADD             R2, R2, #0x2F8
ADD             R1, R1, #0x6E0
STR             R1, [R2]
STR             R1, [R2,#4]
LDR             R1, =0x12704
ADD             R12, R12, #0x308
MOV             R3, #2
STR             R9, [R1,R0]
ADD             R1, R1, #0xC
STM             R12, {R9,R10}
STR             R9, [R1,R0]
STR             R9, [R12,#0xC]
ADD             R1, R1, #0x14
STR             R9, [R12,#0x10]
STR             R9, [R12,#0x14]
ADD             R2, R1, #0x18
STR             R9, [R1,R0]
ADD             R1, R0, #0x10000
ADD             R1, R1, #0x2740
STR             R1, [R2,R0]
STR             R1, [R1,#8]
STR             R1, [R1,#4]
ADD             R1, R0, #0x12000
ADD             R1, R1, #0x750
MOV             R2, #0x3F4
STR             R9, [R1]
STR             R9, [R1,#8]
ADD             R1, R0, #0x12400
ADD             R1, R1, #0x364
STR             R9, [R1]
STR             R9, [R1,#8]
ADD             R1, R0, #0x12400
ADD             R1, R1, #0x378
ADD             R0, R0, #0x12400
STR             R9, [R1]
STR             R9, [R1,#8]
LDR             R1, =sub_14F198
ADD             R0, R0, #0x398
BLX             sub_1002F4
LDR             R3, =off_6CDC90
SUB             R4, R0, #0x12400
SUB             R4, R4, #0x398
LDR             R1, =0x12738
VLDR            S16, =0.0
ADD             R6, R4, #0x12400
STR             R4, [R3]
LDR             R11, =off_6CE970
STRB            R9, [R0,#-4]
SUB             R2, R1, #8
VSTR            S16, [R6,#0x334]
STR             R9, [R1,R4]
STR             R9, [R2,R4]
LDR             R0, [R11]
ADD             R5, R0, #0x19C000
MOV             R0, #0xFF
ADD             R5, R5, #0x1F40
REV             R7, R0
MOV             R0, R5
BL              sub_4E63E0
STR             R7, [R5,#(loc_19DF44 - 0x19DF40)]
STR             R7, [R5]
LDR             R0, [R11]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x310
BL              sub_10A358
CMP             R0, #0
BLNE            sub_1F9A18
ADD             R5, R4, #0x10000
ADD             R5, R5, #0x2700
STR             R0, [R5]
LDR             R1, [R0,#0x100]
STR             R1, [SP,#0x30+var_30]
STR             R1, [R6,#0x328]
LDR             R1, [R0,#0x13C]
STR             R1, [SP,#0x30+var_30]
STR             R1, [R6,#0x32C]
LDR             R0, [R0,#0xB0]
STR             R0, [SP,#0x30+var_30]
STR             R0, [R6,#0x38C]
LDR             R0, =0x12790
STR             R9, [R0,R4]
LDR             R1, [R11]
ADD             R0, R4, #0x12400
ADD             R0, R0, #0x308
ADD             R1, R1, #0x68 ; 'h'
STR             R1, [R0]
LDR             R1, [R5]
LDR             R1, [R1,#0x1F0]
BL              sub_624740
LDR             R0, [R5]
ADD             R5, R4, #0x12400
MOV             R7, #0x28 ; '('
ADD             R5, R5, #0x378
LDR             R6, [R0,#0x1F0]
LDR             R0, [R11]
ADD             R1, R6, R6,LSL#2
LDR             R2, [R0,#0x68]!
MOV             R1, R1,LSL#3
LDR             R3, [R2,#0xC]
MOV             R2, #0
BLX             R3
ADD             R1, R5, #4
STR             R0, [R5]
STM             R1, {R0,R6}
CMP             R6, #0
STR             R6, [R5,#0xC]
MOV             R2, R0
MOV             R3, #0
STRB            R9, [R5,#0x10]
BLS             loc_1FBBAC
ADD             R1, R0, R7
ADD             R3, R3, #1
STR             R1, [R0]
CMP             R6, R3
MOV             R0, R1
BHI             loc_1FBB94
SUB             R0, R6, #1
LDR             R8, =0x4FB0
MLA             R0, R7, R0, R2
MOV             R7, #0x3FC
MOV             R6, #0x14
MOV             R1, R8
STR             R9, [R0]
STRB            R10, [R5,#0x10]
LDR             R0, [R11]
ADD             R5, R4, #0x12000
ADD             R5, R5, #0x750
LDR             R2, [R0,#0x68]!
LDR             R3, [R2,#0xC]
MOV             R2, #0
BLX             R3
ADD             R3, R5, #4
STR             R0, [R5]
STM             R3, {R0,R6}
MOV             R1, R0
STR             R6, [R5,#0xC]
MOV             R2, #0
STRB            R9, [R5,#0x10]
ADD             R3, R0, R7
ADD             R2, R2, #1
STR             R3, [R0]
CMP             R2, R6
MOV             R0, R3
BCC             loc_1FBC04
SUB             R0, R6, #1
MOV             R6, #0x14
MLA             R0, R7, R0, R1
MOV             R7, #0x3FC
MOV             R1, R8
STR             R9, [R0]
STRB            R10, [R5,#0x10]
LDR             R0, [R11]
ADD             R5, R4, #0x12400
ADD             R5, R5, #0x364
LDR             R2, [R0,#0x68]!
LDR             R3, [R2,#0xC]
MOV             R2, #0
BLX             R3
ADD             R2, R5, #4
STR             R0, [R5]
STM             R2, {R0,R6}
MOV             R1, R0
STR             R6, [R5,#0xC]
MOV             R2, #0
STRB            R9, [R5,#0x10]
ADD             R3, R0, R7
ADD             R2, R2, #1
STR             R3, [R0]
CMP             R2, R6
MOV             R0, R3
BCC             loc_1FBC70
SUB             R0, R6, #1
MOV             R3, #0
MLA             R0, R7, R0, R1
MOV             R2, R3
STR             R9, [R0]
STRB            R10, [R5,#0x10]
LDR             R0, [R11]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0xD28
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_1FBD58
LDR             R1, =off_6CDC90
LDR             R1, [R1]
STR             R1, [R0,#4]
LDR             R1, =off_6BB7F8
STR             R1, [R0],#0x10
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
ADD             R0, R5, #0x10C
VSTR            S0, [R5,#0x130]
VSTR            S16, [R5,#0x134]
STR             R10, [R0,#0x2C]
LDR             R1, =0xBDC
ADD             R0, R5, #0x13C
BL              sub_2FFE8C
LDR             R1, =sub_14F198
ADD             R0, R5, #0x13C
MOV             R3, #3
MOV             R2, #0x3F4
BLX             sub_1002F4
SUB             R5, R0, #0x14C
LDR             R0, [R4,#0xC]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_1FBD74
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R5, [R4,#0xC]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R5
BLX             R2
LDR             R1, =sub_10D4F0
LDR             R0, [R11]
LDR             R1, [R0,R1]
CMP             R1, #0
STRBNE          R9, [R1,#0xF2]
LDR             R1, =0x10E0BC
LDR             R1, [R1,R0]
CMP             R1, #0
STRBNE          R9, [R1,#0xF2]
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
MOVNE           R2, R9
BEQ             loc_1FBE04
CMP             R0, #0
SUBNE           R0, R0, #0x1AC
LDR             R0, [R0,#0x18]
STRB            R2, [R0,#0xF2]
MOVS            R0, R1
MOVEQ           R1, #0
LDRNE           R1, [R0,#8]
CMP             R0, R9
BNE             loc_1FBDE0
ADD             SP, SP, #4
MOV             R0, R4
VPOP            {D8}
POP             {R4-R11,PC}
