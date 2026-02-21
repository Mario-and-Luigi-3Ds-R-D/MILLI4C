PUSH            {R4-R11,LR}
MOV             R5, R0
SUB             SP, SP, #0xC
MOV             R4, R1
LDR             R10, =sub_19D6B8
ADD             R0, R1, R10
BL              sub_5DA234
CMP             R0, #0
BEQ             loc_148450
MOV             R3, #0
LDR             R0, =0x7594
MOV             R2, R3
MOV             R1, R5
BL              sub_10A358
CMP             R0, #0
BEQ             loc_148450
MOV             R2, #0
MOV             R1, #1
BL              sub_1DFBC4
LDR             R1, =off_656A38
MOV             R9, #0
STR             R1, [R0]
STR             R4, [R0,#0x18]
STRB            R9, [R0,#0x1C]
STRB            R9, [R0,#0x1D]
ADD             R0, R0, #0x20 ; ' '
BL              sub_14CB8C
LDR             R1, =off_6569D8
MOV             R2, #0xFFFFFF00
VLDR            S0, =0.0
REV             R2, R2
STR             R1, [R0]
STRB            R9, [R0,#0xFD]
STR             R2, [R0,#0x100]
STR             R2, [R0,#0x104]
STR             R2, [R0,#0x108]
ADD             R0, R0, #0x10C
VSTR            S0, [R0]
VSTR            S0, [R0,#4]
VSTR            S0, [R0,#8]
VSTR            S0, [R0,#0xC]
ADD             R0, R0, #0x10
BL              sub_5A2F28
LDR             R1, =flt_6E33C0
ADD             R0, R0, #0x1C
BL              sub_5A2B98
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
MOV             R6, #1
STR             R1, [R0,#0x28]
STRB            R6, [R0,#0x2C]
SUB             R0, R0, #0x138
STR             R9, [R0,#0x190]!
ADD             R0, R0, #4
BL              sub_5931A8
ADD             R0, R0, #0x104
BL              sub_2C2000
SUB             R4, R0, #0x298
ADD             R0, R0, #0x7000
ADD             R0, R0, #0x2D8
ADD             R5, R4, #0x138
STR             R9, [R0]
MOV             R0, R5
BL              sub_5A26D0
LDR             R0, =flt_6E33B4
ADD             R7, R5, #0x1C
ADD             R5, R5, #4
LDM             R0, {R1-R3}
STM             R7, {R1-R3}
STM             R5, {R1-R3}
ADD             R3, R4, #0x24 ; '$'
LDM             R0, {R1,R2}
LDR             R0, [R0,#(dword_6E33BC - 0x6E33B4)]
STR             R0, [R4,#0x2C]
STM             R3, {R1,R2}
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              sub_14B798
LDR             R0, =off_6CE970
LDR             R1, =0xC01A
LDR             R0, [R0]
BL              sub_52FACC
MOV             R5, R0
ADD             R0, R0, #0xA0
MOV             R7, R0
MOV             R0, R5
MOV             R1, R9
BL              sub_5F0474
MOV             R2, #0x100
MOV             R1, R0
STR             R2, [SP,#0x30+var_28]
MOV             R3, #0
MOV             R2, R7
ADD             R0, R4, #0x194
STR             R9, [SP,#0x30+var_30]
STR             R9, [SP,#0x30+var_2C]
BL              sub_1137FC
MOV             R1, #3
STRB            R1, [R4,#0x203]
MOV             R2, #0
ADD             R0, R4, #0x194
MOV             R3, #0x100
MOV             R1, R2
STRB            R9, [R4,#0x205]
BL              sub_11DCDC
ADD             R0, R4, #0x298
BL              sub_2C0EF0
LDR             R1, =0x5D48
VLDR            S0, =1.0
ADD             R0, R4, #0x5800
ORR             R2, R1, R1,ASR#14
STRB            R6, [R1,R4]
STRB            R6, [R2,R4]
VSTR            S0, [R0,#0x2B0]
VSTR            S0, [R0,#0x2B4]
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
LDR             R0, [R4,#-8]
ADD             R11, R10, #0x930
SUB             R6, R4, #0x20 ; ' '
LDR             R0, [R0,R11]
BL              sub_5C6EC8
MOV             R5, R0
LDR             R0, [R6,#0x18]
MOV             R4, #0
ADD             R0, R0, R10
BL              sub_5DA234
SUBS            R8, R0, #0
BLS             loc_148438
LDR             R0, [R6,#0x18]
MOV             R1, R4
ADD             R0, R0, R10
BL              sub_5DA1F4
NOP
NOP
BL              sub_4DB9D0
LDRH            R0, [R0,#2]
MOV             R7, #0
ADD             R5, R5, R0
BL              sub_3DF0A0
CMP             R0, R5
NOP
BLS             loc_148424
CMP             R5, #0
MOVLS           R0, R7
MOVHI           R0, R5
UXTH            R5, R0
ADD             R0, R4, #1
AND             R4, R0, #0xFF
CMP             R4, R8
BCC             loc_1483E0
LDR             R0, [R6,#0x18]
MOV             R1, R5
LDR             R0, [R0,R11]
BL              sub_1CC7A0
MOV             R0, R6
STRB            R9, [R6,#0x1C]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
