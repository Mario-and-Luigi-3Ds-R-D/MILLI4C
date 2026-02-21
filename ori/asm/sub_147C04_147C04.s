PUSH            {R4-R9,LR}
MOV             R5, R0
MOV             R4, R1
LDR             R0, =sub_19D6B8
VPUSH           {D8}
SUB             SP, SP, #0xC
ADD             R0, R0, R1
BL              sub_5DA248
CMP             R0, #0
BEQ             loc_147FAC
MOV             R3, #0
LDR             R0, =0x25380
MOV             R2, R3
MOV             R1, R5
BL              sub_10A358
CMP             R0, #0
BEQ             loc_147FAC
MOV             R7, R5
MOV             R2, #0
MOV             R1, #1
BL              sub_1DFBC4
LDR             R1, =off_656B6C
MOV             R9, #0
STR             R1, [R0]
STRB            R9, [R0,#0x18]
STRB            R9, [R0,#0x19]
STRB            R9, [R0,#0x1A]
STR             R9, [R0,#0x1C]!
STR             R4, [R0,#4]!
ADD             R0, R0, #4
BL              sub_4CDF40
LDR             R2, =0x7590
LDR             R1, =sub_4CDF40
MOV             R3, #4
ADD             R0, R0, R2
BLX             sub_1002F4
SUB             R6, R0, #0x7400
LDR             R0, =0x19DFE8
SUB             R6, R6, #0x1B4
ADD             R5, R4, R0
LDR             R0, [R5]
BL              sub_5C6EB4
MOV             R3, R0
ADD             R0, R6, #0x24800
MOV             R2, #0
MOV             R1, R7
ADD             R0, R0, #0x3F4
BL              sub_4CE52C
SUB             R4, R0, #0x24800
LDR             R0, [R5]
SUB             R4, R4, #0x3F4
BL              sub_5C6EC8
MOV             R3, R0
ADD             R0, R4, #0x24C00
MOV             R2, #1
MOV             R1, R7
ADD             R0, R0, #0x298
BL              sub_4CE52C
ADD             R0, R0, #0x2A4
BL              sub_14CB8C
LDR             R1, =off_656AAC
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
ADD             R0, R0, #0x1C
BL              sub_5931A8
SUB             R4, R0, #0x138
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              sub_14B798
LDR             R2, =flt_6E3414
ADD             R3, R4, #0x24 ; '$'
LDR             R8, =off_6CE970
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
LDR             R1, =0xC00E
LDR             R0, [R8]
BL              sub_52FACC
MOV             R5, R0
ADD             R0, R0, #0xA0
MOV             R6, R0
MOV             R0, R5
MOV             R1, R9
BL              sub_5F0474
MOV             R2, #0x100
MOV             R1, R0
STR             R2, [SP,#0x30+var_28]
MOV             R3, #0
MOV             R2, R6
ADD             R0, R4, #0x138
STR             R9, [SP,#0x30+var_30]
STR             R9, [SP,#0x30+var_2C]
BL              sub_1137FC
MOV             R1, #3
STRB            R1, [R4,#0x1A7]
ADD             R0, R4, #0x138
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #4
STRB            R9, [R4,#0x1A9]
BL              sub_11DCDC
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
LDR             R0, =off_6B2A84
ADD             R7, R4, #0x23C
MOV             R6, #1
STM             R7, {R0,R9}
SUB             R7, R4, #0x25000
SUB             R4, R4, #0x25000
SUB             R4, R4, #0x118
SUB             R7, R7, #0x13C
VLDR            S16, =272.0
MOV             R1, R6
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R4, #0x194
BL              sub_11DCDC
LDR             R1, =flt_6E3444
ADD             R5, R4, #0x7400
ADD             R3, R4, #0x4000
ADD             R3, R3, #0x3580
LDM             R1, {R0,R2}
LDR             R1, [R1,#(dword_6E344C - 0x6E3444)]
STR             R1, [R5,#0x188]
STM             R3, {R0,R2}
MOV             R0, #3
STRB            R6, [R4,#0xFE]
VSTR            S16, [R5,#0x168]
ADD             R4, R7, #0x24 ; '$'
BL              sub_50F308
LDR             R2, =0x7594
LDR             R1, =flt_6E342C
VLDR            S16, =16.0
STR             R0, [R2,R7]
LDR             R0, [R4]
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x30+var_30]
LDR             R0, [R4]
LDR             R2, [R0,#0x3C]
MOV             R0, R4
BLX             R2
LDR             R3, =flt_6E3420
ADD             R0, R7, #0x7400
ADD             R0, R0, #0x24 ; '$'
VSTR            S16, [R0,#0x18C]
LDM             R3, {R1-R3}
ADD             R0, R7, #0x7400
ADD             R0, R0, #0x198
STM             R0, {R1-R3}
ADD             R1, R4, #0x7400
VLDR            S0, [R5,#0x18C]
ADD             R1, R1, #0x174
ADD             R0, R4, #0x138
BL              sub_5A2138
MOV             R0, #0xFFFFFFFF
ADD             R1, SP, #0x30+var_2C
REV             R0, R0
STR             R0, [SP,#0x30+var_2C]
VLDR            S0, [R5,#0x18C]
ADD             R0, R4, #0x100
BL              sub_4E665C
LDRB            R1, [R4,#0xFE]
LDR             R0, =0xFFE683CC
CMP             R1, #1
BEQ             loc_147EFC
CMP             R1, #2
BNE             loc_147F38
B               loc_147F20
LDR             R12, [R8]
LDR             R2, =0x30070
MOV             R3, #0
MOV             R1, R4
SUB             R0, R12, R0
BL              sub_503720
NOP
NOP
B               loc_147F38
LDR             R12, [R8]
LDR             R2, =0x30071
MOV             R3, #0
MOV             R1, R4
SUB             R0, R12, R0
BL              sub_503720
LDR             R8, =flt_6E3474
MOV             R0, #2
STRB            R0, [R4,#0xFD]
MOV             R4, #0
LDR             R0, =0x759
MOV             R6, #2
MOV             R1, R6
MOV             R3, #0x100
MUL             R0, R4, R0
MOV             R2, #0
ADD             R0, R7, R0,LSL#4
ADD             R5, R0, #0x7400
ADD             R0, R0, #0x7400
ADD             R5, R5, #0x1B4
ADD             R0, R0, #0x348
BL              sub_11DCDC
LDM             R8, {R0,R2,R3}
ADD             R1, R5, #0x4000
ADD             R1, R1, #0x3580
ADD             R4, R4, #1
STM             R1, {R0,R2,R3}
CMP             R4, #4
STRB            R6, [R5,#0xFE]
BCC             loc_147F48
MOV             R0, R7
STRB            R9, [R7,#0x19]
BL              sub_4CEE3C
MOV             R0, R7
STRB            R9, [R7,#0x18]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R9,PC}
