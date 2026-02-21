PUSH            {R4-R11,LR}
MOV             R6, R1
VPUSH           {D8}
SUB             SP, SP, #0x44
STR             R1, [R0]
ADD             R1, R0, #4
STR             R1, [R0,#0x1C]
STR             R1, [R0,#0x20]!
ADD             R0, R0, #0xC
BL              sub_14CB8C
MOV             R1, R0
LDR             R0, =off_6C3220
MOV             R10, #3
MOV             R11, #0x63 ; 'c'
STR             R0, [R1]
ADD             R0, R1, #0x100
MOV             R8, #0
LDR             R2, =0x300B2
STM             R0, {R8,R10,R11}
ADD             R4, R1, #0x10C
MOV             R3, #2
STM             R4, {R2,R8}
ADD             R0, R1, #0x128
STR             R8, [R1,#0x114]
STR             R3, [R1,#0x11C]
STR             R8, [R1,#0x118]
STR             R8, [R1,#0x120]
STR             R8, [R1,#0x124]
BL              sub_14F198
SUB             R7, R0, #0x128
LDR             R0, =off_6C3340
LDR             R1, =0x4020
ADD             R4, R7, #0x400
STR             R0, [R7,#0x51C]
STR             R1, [R7,#0x520]
LDR             R1, =0xFF0100
ADD             R4, R4, #0x11C
STR             R1, [R7,#0x524]
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
MOV             R9, #1
VLDR            S16, =0.0
STR             R0, [R4,#0x50]
STR             R8, [R4,#0x54]
STM             R3, {R1,R2}
MOV             R0, #7
STR             R8, [R4,#0x58]
VLDR            S0, =0.25
STRD            R8, R9, [R4,#0x5C]
VSTR            S16, [R4,#0x64]
VSTR            S0, [R4,#0x68]
VLDR            S17, =1.0
STR             R0, [R4,#0x94]
VSTR            S17, [R4,#0x7C]
VSTR            S17, [R4,#0x80]
VSTR            S17, [R4,#0x84]
VSTR            S16, [R4,#0x6C]
VSTR            S16, [R4,#0x70]
ADD             R1, R4, #0x74 ; 't'
ADD             R5, R4, #0x6C ; 'l'
VSTM            R1, {S16-S17}
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
ADD             R1, R5, #0x9C
STR             R5, [R5,#0x9C]
STR             R1, [R5,#0xA8]
MOV             R0, #0xFFFFFFFF
STR             R5, [R5,#0xA4]
STR             R0, [R4,#0x17C]
STR             R8, [R4,#0x178]
STR             R8, [R4,#0x180]
STR             R8, [R4,#0x184]
STR             R8, [R4,#0x188]
STR             R8, [R4,#0x18C]
ADD             R2, SP, #0x70+var_68
STR             R10, [R7,#-8]
STRB            R9, [R7,#-4]
LDR             R0, =0x300B2
STM             R2, {R8,R10,R11}
ADD             R2, SP, #0x70+var_5C
MOV             R1, #2
STM             R2, {R0,R8}
SUB             R5, R7, #0x2C ; ','
STR             R8, [SP,#0x70+var_54]
STR             R1, [SP,#0x70+var_4C]
STR             R8, [SP,#0x70+var_50]
LDR             R4, =off_6CE970
LDR             R0, [R6,#8]
ADD             R1, SP, #0x70+var_68
STR             R0, [SP,#0x70+var_50]
LDR             R0, [R4]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [SP,#0x70+var_68]
ADD             R0, R5, #0x2C ; ','
BL              sub_5B388C
MOV             R1, #2
ADD             R0, R5, #0x2C ; ','
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
ADD             R0, R5, #0x2C ; ','
BL              sub_14B798
LDR             R0, [R4]
VLDR            S0, [R6,#0xE0]
VLDR            S1, [R6,#0x90]
ADD             R1, R0, #0x100000
ADD             R1, R1, #0xC400
LDR             R0, [R6,#0x8C]
VLDR            S2, [R1,#(loc_10C4EC - 0x10C400)]
ADD             R4, R5, #0x2C ; ','
STR             R0, [R5,#0x50]
VMUL.F32        S0, S2, S0
VSTR            S1, [R5,#0x54]
MOV             R1, #0
MOV             R0, R4
VSTR            S0, [R5,#0x58]
BL              sub_14C3E8
LDR             R0, [R4,#0x108]
STR             R0, [R4,#0x124]
LDR             R0, [R4,#0x104]
STR             R0, [R4,#0x120]
LDR             R1, [R4,#0x118]
CMP             R1, #0
BEQ             loc_287BBC
MOV             R2, #0
ADD             R0, R4, #0x128
BL              sub_14E6E0
MOV             R2, #0x8000
MOV             R1, R4
ADD             R0, R4, #0x128
BL              sub_1CF9C4
LDR             R0, [R4,#0x11C]
MOV             R3, #0x100
MOV             R2, #0
AND             R1, R0, #0xFF
ADD             R0, R4, #0x128
BL              sub_14C548
MOV             R2, #0
MOV             R1, #1
ADD             R0, R4, #0x128
BL              sub_14B798
VLDR            S0, =-2.0
VSTR            S16, [SP,#0x70+var_3C]
VSTR            S0, [SP,#0x70+var_38]
ADD             R1, SP, #0x70+var_3C
VSTR            S17, [SP,#0x70+var_34]
ADD             R0, R4, #0x128
BL              sub_14E984
LDR             R0, [R4]
MOV             R2, #0
ADD             R1, SP, #0x70+var_48
LDR             R3, [R0,#0x2C]
MOV             R0, R4
BLX             R3
ADD             R1, R4, #0x570
ADD             R0, R4, #0x400
LDM             R1, {R1,R2}
ADD             R0, R0, #0x11C
MOV             R6, R0
ADD             R3, R2, R2,LSL#1
ADD             R2, R3, R2,LSL#3
ADD             R2, R1, R2,LSL#5
CMP             R2, R1
BEQ             loc_287C24
MOV             R2, R1
ADD             R1, R1, #0x160
STRB            R9, [R2,#0x6F]
LDR             R2, [R0,#0x58]
LDR             R3, [R0,#0x54]
ADD             R12, R2, R2,LSL#1
ADD             R2, R12, R2,LSL#3
ADD             R2, R3, R2,LSL#5
CMP             R2, R1
BNE             loc_287BFC
LDR             R1, [R0,#4]
ADD             R7, SP, #0x70+var_48
ORR             R1, R1, #0x10
STR             R1, [R0,#4]
LDR             R2, [R4,#0x5B0]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x1A4
AND             R3, R2, #4
ORR             R2, R2, R3,LSL#3
STR             R2, [R4,#0x5B0]
LDM             R7, {R1-R3}
STM             R0, {R1-R3}
MOV             R0, R6
LDR             R1, [R4,#0x520]
BIC             R1, R1, #0x600
ORR             R1, R1, #0x200
STR             R1, [R4,#0x520]
BL              sub_5B7B9C
LDR             R7, [R4,#0x120]
ADD             R0, R4, #0x400
MOV             R1, R9
STR             R7, [R6,#0x178]
VSTR            S16, [R6,#0x64]
ADD             R0, R0, #0x284
BL              sub_62D444
LDR             R1, [R6,#0x168]
MOV             R2, R7
MOV             R0, R6
BL              sub_5B71F4
MOV             R0, R6
NOP
BL              sub_5B7B9C
ADD             SP, SP, #0x44 ; 'D'
MOV             R0, R5
VPOP            {D8}
POP             {R4-R11,PC}
