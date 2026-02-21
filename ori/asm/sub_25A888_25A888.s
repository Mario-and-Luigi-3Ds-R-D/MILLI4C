PUSH            {R4-R11,LR}
ADD             R0, R0, #4
VPUSH           {D8-D9}
SUB             SP, SP, #0xA4
BL              sub_5A1E2C
LDR             R7, =off_6B7BEC
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R7, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
MOV             R6, #1
STR             R1, [R0,#0x10]
STRB            R6, [R0,#0x14]
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R7, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
SUB             R4, R0, #0x34 ; '4'
STRB            R6, [R0,#0x14]
BL              sub_5A18EC
VLDR            S16, =0.0
MOV             R0, R4
VSTR            S16, [R4,#0x40]
VSTR            S16, [R4,#0x38]
BL              sub_5A18EC
VSTR            S16, [R4,#0xC]
MOV             R11, #0
VSTR            S16, [R4,#4]
ADD             R0, R4, #0x34 ; '4'
STRB            R11, [R4,#0x68]
BL              sub_5A18EC
VSTR            S16, [R4,#0x40]
VSTR            S16, [R4,#0x38]
MOV             R0, R4
BL              sub_5A18EC
VSTR            S16, [R4,#0xC]
VSTR            S16, [R4,#4]
SUB             R4, R4, #4
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x70 ; 'p'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x78]
ADD             R0, R4, #0x84
STM             R3, {R1,R2}
BL              sub_503064
ADD             R0, R0, #0x400
ADD             R0, R0, #0x1F8
BL              sub_14F198
SUB             R0, R0, #0x400
SUB             R0, R0, #0x27C
MOV             R1, #2
STR             R11, [R0,#0xA70]
STR             R11, [R0,#0xA74]!
ADD             R0, R0, #4
BL              sub_25149C
SUB             R4, R0, #0x800
SUB             R4, R4, #0x278
ADD             R5, R0, #0x4C ; 'L'
BL              sub_464168
MOV             R1, R0
MOV             R0, R5
BL              sub_1169CC
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2F8
STRB            R11, [R4,#0xAF5]
BL              sub_5A2BD0
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R4, R0, #0x800
STR             R0, [R0,#-8]
STRB            R6, [R0,#-4]
STR             R11, [R0,#0x28]!
ADD             R0, R0, #4
SUB             R4, R4, #0x328
STR             R0, [R0,#4]
STR             R0, [R0]
ADD             R0, R4, #0xB60
STR             R11, [R4,#0xB5C]
STR             R0, [R4,#0xB64]
ADD             R9, R4, #0x800
STR             R0, [R4,#0xB60]
ADD             R9, R9, #0x35C
MOV             R1, #1
ADD             R0, R4, #0x84
BL              sub_14C450
MOV             R1, #0
ADD             R0, R4, #0x84
BL              sub_502538
LDR             R5, =off_6CE970
STRB            R11, [R4]
STR             R11, [R4,#0x80]
MOV             R3, #0
LDR             R0, [R5]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x197C
BL              sub_10A358
CMP             R0, #0
MOVEQ           R1, #0
BEQ             loc_25AA58
BL              sub_250270
MOV             R1, R0
LDR             R8, =off_6CE098
STR             R1, [R4,#0xA74]
VLDR            S17, =1.0
ADD             R5, SP, #0xD8+var_AC
LDR             R3, [R8]
ADD             R10, R4, #0x800
ADD             R10, R10, #0x274
ADD             R2, R3, #0x90
LDR             R0, [R3,#0x8C]
ADD             R6, R0, #0x400
LDR             R12, [R0,#0x4E4]
STRB            R12, [R1,#0xF6]
LDR             R1, [R0,#0x384]
ADD             R12, R0, #0x38C
STR             R1, [SP,#0xD8+var_B8]
LDR             R1, [R0,#0x388]
STR             R1, [SP,#0xD8+var_B4]
VSTR            S17, [SP,#0xD8+var_B0]
LDM             R12, {R1,R12}
STM             R5, {R1,R12}
ADD             R5, SP, #0xD8+var_90
LDR             R1, [R0,#0x394]
STR             R1, [SP,#0xD8+var_A4]
LDR             R1, [R0,#0x398]
STR             R1, [SP,#0xD8+var_A0]
VSTR            S17, [SP,#0xD8+var_9C]
VSTR            S17, [SP,#0xD8+var_98]
LDR             R1, [R2,#0x10]
ADD             R2, R0, #0x3AC
STR             R1, [SP,#0xD8+var_94]
LDM             R2, {R1,R2,R12}
STM             R5, {R1,R2,R12}
ADD             R2, SP, #0xD8+var_B8
LDR             R1, [R0,#0x3B8]
LDR             R5, =off_6CE970
STR             R1, [SP,#0xD8+var_80]
LDR             R0, [R0,#0x3BC]
STR             R0, [SP,#0xD8+var_84]
LDR             R0, [R6,#0xC4]
STR             R0, [SP,#0xD8+var_7C]
LDR             R0, [R6,#0xC8]
STR             R0, [SP,#0xD8+var_78]
LDR             R0, [R6,#0xCC]
STR             R0, [SP,#0xD8+var_74]
LDR             R0, [R6,#0xD0]
STR             R0, [SP,#0xD8+var_70]
LDR             R0, [R6,#0xD4]
STR             R0, [SP,#0xD8+var_6C]
LDR             R0, [R6,#0xD8]
STR             R0, [SP,#0xD8+var_68]
LDR             R0, [R6,#0x110]
STR             R0, [SP,#0xD8+var_64]
LDR             R0, [R6,#0x114]
STR             R0, [SP,#0xD8+var_60]
LDR             R0, [R6,#0x118]
STR             R0, [SP,#0xD8+var_5C]
LDR             R0, [R6,#0x11C]
STR             R0, [SP,#0xD8+var_58]
LDR             R0, [R3,#0x8C]
STR             R0, [SP,#0xD8+var_54]
LDR             R1, [R5]
LDR             R0, [R10]
ADD             R1, R1, #0x68 ; 'h'
BL              sub_24FACC
LDR             R0, [R8]
LDR             R3, [R5]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x37C
ADD             R3, R3, #0x68 ; 'h'
LDR             R0, [R0]
ADD             R1, R0, #4
LDR             R2, [R0]
LDR             R0, [R10]
BL              sub_24E11C
LDR             R0, [R5]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x48 ; 'H'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_25AC40
LDR             R1, =off_6CE098
LDR             R1, [R1]
LDR             R1, [R1,#0x8C]
STR             R1, [R0],#4
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R7, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R2, R0, #0x18
MOV             R1, #1
STR             R2, [R0,#0x10]
STRB            R1, [R0,#0x14]
STRB            R11, [R0,#0x40]
VSTR            S16, [R0,#0x34]
SUB             R5, R0, #4
VSTR            S16, [R0,#0x38]
LDR             R0, [R0,#-4]
LDR             R8, [R0,#0x1CC]
ADD             R0, R5, #4
BL              sub_5A18EC
LDR             R0, =off_6CE970
STR             R8, [R5,#0x10]
STR             R8, [R5,#8]
VSTR            S16, [R5,#0x38]
LDR             R1, =0x19DEE8
LDR             R0, [R0]
VLDR            S0, =0.0039062
ADD             R0, R0, R1; loc_19DEE8
VLDR            S1, [R0]
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S0
VSTR            S1, [R5,#0x3C]
VLDR            S1, [R0]
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VSTR            S0, [R5,#0x40]
LDR             R1, [R9,#8]
ADD             R0, R9, #4
CMP             R1, R0
BNE             loc_25ACC8
LDR             R8, [R9]
CMP             R8, #0
BEQ             loc_25ACE8
STR             R7, [R8,#4]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R8, #0x18
BLX             sub_1009D8
MOV             R0, R8
NOP
NOP
SUB             R0, R0, #4
NOP
BL              sub_300FD4
NOP
NOP
B               loc_25ACE8
DCD off_6B7BEC
DCD sub_5A2F28
DCFS 0.0
DCD off_6B7BFC
DCD sub_5A39D0
DCD off_6CE970
DCD 0x197C
DCD off_6CE098
DCFS 1.0
DCD 0x19DEE8
DCFS 0.0039062
DCD nullsub_300
ADD             R0, R9, #4
CMP             R1, R0
BEQ             loc_25ACE8
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
MOV             R0, R4
STR             R5, [R9]
BL              sub_258628
ADD             R0, R4, #0x400
ADD             R0, R0, #0x27C
MOV             R1, #1
MOV             R5, R0
STRB            R11, [R4,#0x76E]
BL              sub_14C450
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
NOP
NOP
BL              sub_4635D8
MOV             R1, R0
MOV             R0, R5
BL              sub_14E984
LDR             R0, =off_6CE098
STR             R11, [R4,#0xB68]
ADD             R5, R4, #0x800
ADD             R5, R5, #0x2F8
LDR             R1, [R0]
LDR             R0, [R1,#0x8C]
LDR             R0, [R0,#0x27C]
STR             R0, [R4,#0xB6C]
LDR             R0, =0x129EC
LDR             R2, [R6,#0x30]
LDR             R0, [R0,R1]
LDR             R1, [R1,#0x8C]
LDR             R0, [R0]
VLDR            S0, [R1,#0x184]
VLDR            S1, [R0,#0x90]
VSTR            S16, [SP,#0xD8+var_C4]
STR             R2, [SP,#0xD8+var_C0]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xD8+var_BC]
LDR             R0, [R4,#0xB5C]
VLDR            S1, [R6,#0x30]
VLDR            S0, [R0,#8]
MOV             R0, R5
VSUB.F32        S18, S0, S1
BL              sub_5A26D0
ADD             R3, SP, #0xD8+var_C4
VMOV.F32        S1, S16
LDM             R3, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
VMOV.F32        S0, S18
STM             R3, {R0-R2}
STM             R5, {R0-R2}
ADD             R1, SP, #0xD8+var_44
ADD             R0, R4, #0x800
VSTM            R1, {S16-S17}
ADD             R0, R0, #0x2F8
VSTR            S16, [SP,#0xD8+var_3C]
VLDR            S2, [R6,#0x34]
BL              sub_5A331C
LDR             R0, [R4,#0xA74]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0xD8+var_C4
BLX             R2
LDR             R0, [R10]
MOV             R1, #0
BL              sub_14C3E8
LDR             R6, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R10]
LDR             R2, =0x301D3
LDR             R12, [R6]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #9
STRB            R0, [R4]
LDR             R0, [R6]
MOV             R3, #0
ADD             R5, R4, #0xB50
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x20 ; ' '
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_25AE6C
LDR             R2, =off_6BBD50
ADD             R1, R4, #0x84
STR             R1, [R0,#4]
STR             R2, [R0]
LDR             R2, =off_6C0770
ADD             R1, R0, #8
STM             R1, {R2,R11}
ADD             R1, R0, #0x10
STM             R1, {R2,R11}
VSTR            S16, [R0,#0x18]
VSTR            S16, [R0,#0x1C]
LDR             R1, [R5,#8]
MOV             R6, R0
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_25AE9C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_25AEBC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_25AEBC
ADD             R0, R5, #4
CMP             R1, R0
BEQ             loc_25AEBC
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
STR             R6, [R5]
ADD             SP, SP, #0xA4
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R11,PC}
