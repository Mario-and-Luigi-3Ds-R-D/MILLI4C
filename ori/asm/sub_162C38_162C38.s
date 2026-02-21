PUSH            {R4-R11,LR}
MOV             R5, R0
ADD             R0, R0, #0x16000
ADD             R0, R0, #0xA20
VLDR            S0, =1.0
VPUSH           {D8}
SUB             SP, SP, #0x34
BL              sub_5A176C
ADD             R2, R5, #0x13000
ADD             R2, R2, #0xD20
MOV             R1, #0
LDRB            R0, [R2]
ADD             R8, R5, #0x16800
CMP             R0, #0
BLE             loc_162D08
ADD             R3, R5, #0x13C00
ADD             R12, R5, #0x13C00
MOV             R6, #0x3C ; '<'
MOV             R7, #3
MOV             R4, #0xA4
ADD             R3, R3, #0x108
ADD             R12, R12, #0xFC
ADD             R0, R1, R1,LSL#3
LDR             R9, [R12]
ADD             R0, R6, R0,LSL#3
LDR             R10, [R9]
ADD             R9, R9, R10
LDRB            R0, [R9,R0]
CMP             R7, R0,LSR#2
BNE             loc_162CF8
MOV             R0, #0x67 ; 'g'
LDR             R9, [R3]
MUL             R0, R1, R0
LDR             R10, [R3]
ADD             R0, R4, R0,LSL#2
LDR             R9, [R9,R0]
LDR             R0, [R10,R0]
LDR             R10, [R8,#0x224]
ADD             R9, R9, #0x4C ; 'L'
ADD             R0, R0, #0x4C ; 'L'
VLDR            S0, [R9,#0xC]
LDR             R9, [R9,#0x1C]
VSTR            S0, [R0,#0xC]
STR             R9, [R0,#0x1C]
STR             R10, [R0,#0x2C]
LDR             R9, [R0,#0x3C]
ORR             R9, R9, #0x800
STR             R9, [R0,#0x3C]
LDRB            R0, [R2]
ADD             R1, R1, #1
CMP             R0, R1
BGT             loc_162C90
ADD             R0, R5, #0x15000
STR             R0, [SP,#0x60+var_30]
LDR             R0, [R0,#0x18]
MOV             R1, R5
BL              sub_596A48
MOV             R0, R5
NOP
BL              sub_18AB84
VLDR            S16, =0.0
ADD             R11, R5, #0x16000
MOV             R4, #0
ADD             R6, R5, #0x14000
ADD             R11, R11, #0xCE0
LDRB            R0, [R6,#0x28D]
CMP             R0, R4
BLE             loc_162E40
ADD             R0, R5, R4,LSL#2
ADD             R7, R0, #0x14000
LDR             R0, [R7,#0x184]
CMP             R0, #0
BEQ             loc_162E40
LDM             R11, {R9,R10}
MOV             R0, #1
MOV             R1, #0
AND             R2, R4, #0xFF
BL              sub_300CF8
AND             R0, R0, R9
AND             R1, R1, R10
ORRS            R0, R0, R1
BEQ             loc_162E40
LDR             R2, [R8,#0x224]
MOV             R0, #0
MOV             R1, #0x3F800000
STR             R0, [SP,#0x60+var_5C]
STR             R1, [SP,#0x60+var_60]
STR             R0, [SP,#0x60+var_58]
VSTR            S16, [SP,#0x60+var_54]
STRD            R0, R1, [SP,#0x60+var_50]
STR             R0, [SP,#0x60+var_48]
VSTR            S16, [SP,#0x60+var_44]
ADD             R3, SP, #0x60+var_3C
STR             R0, [SP,#0x60+var_40]
STM             R3, {R0-R2}
LDR             R0, [R7,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
LDR             R0, [R7,#0x184]
BEQ             loc_162E00
LDR             R0, [R0,#0x7FC]
CMP             R0, #0
LDRNE           R1, [R0,#4]
CMPNE           R1, #0
BEQ             loc_162E40
ADD             R1, R0, #0x20 ; ' '
MOV             R2, SP
ADD             R0, R0, #0x20 ; ' '
BL              sub_141F30
NOP
NOP
B               loc_162E40
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
CMP             R0, #0
BEQ             loc_162E40
LDR             R0, [R7,#0x184]
LDR             R7, [R0,#0x7FC]
CMP             R7, #0
BEQ             loc_162E40
ADD             R1, R7, #0x4C ; 'L'
MOV             R2, SP
MOV             R0, R1
BL              sub_141F30
LDR             R1, [R7,#0x88]
ORR             R1, R1, #0x800
STR             R1, [R7,#0x88]
ADD             R4, R4, #1
CMP             R4, #0x40 ; '@'
BLT             loc_162D3C
LDR             R0, [SP,#0x60+var_30]
LDR             R0, [R0,#0x20]
BL              sub_5AFCCC
ADD             R0, R5, #0xCC
NOP
BL              sub_59C598
ADD             R0, R5, #0x16800
ADD             R0, R0, #0x254
BL              sub_59C598
ADD             R0, R5, #0x15000
ADD             R0, R0, #0x13C
MOV             R4, R0
BL              sub_19D9B8
LDR             R0, =0x17AC8
LDRB            R0, [R0,R5]
CMP             R0, #2
BNE             loc_162EB8
MOV             R0, R4
BL              sub_19D56C
EOR             R2, R0, #1
LDR             R0, =0x14408
MOV             R1, #1
STR             R1, [SP,#0x60+var_60]
MOV             R3, #0
LDR             R0, [R0,R5]
MOV             R1, R3
BL              sub_2FB988
LDR             R0, =off_6D1648
ADD             R1, R5, #0xF4
LDR             R0, [R0]
LDR             R0, [R0,#0xA4]
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8}
POP             {R4-R11,LR}
B               sub_1C71F0
