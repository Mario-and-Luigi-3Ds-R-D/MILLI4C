PUSH            {R4-R11,LR}
SUB             SP, SP, #0x7C
MOV             R4, R0
ADD             R1, SP, #0xA0+var_6C
MOV             R11, #1
STRB            R11, [R0,#0xB6]
MOV             R0, #0
MOV             R8, R0
STR             R0, [SP,#0xA0+var_88]
STRB            R11, [SP,#0xA0+var_80]
MOV             R0, #0xFFFFFFFF
STRB            R11, [SP,#0xA0+var_7F]
STR             R8, [SP,#0xA0+var_7C]
STR             R8, [SP,#0xA0+var_78]
STM             R1, {R0,R8}
ADD             R3, SP, #0xA0+var_74
MOV             R1, #2
MOV             R2, #4
STR             R8, [SP,#0xA0+var_64]
STM             R3, {R1,R2}
ADD             R2, SP, #0xA0+var_4C
STRB            R11, [SP,#0xA0+var_60]
STRB            R11, [SP,#0xA0+var_5F]
STR             R8, [SP,#0xA0+var_5C]
STR             R8, [SP,#0xA0+var_58]
STM             R2, {R0,R8}
LDR             R0, =0x834
STR             R8, [SP,#0xA0+var_44]
STR             R1, [SP,#0xA0+var_54]
STR             R0, [SP,#0xA0+var_50]
STRB            R8, [R4,#0x254]
LDR             R0, [R4]
LDR             R1, [R0,#0xDC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
LDR             R0, [R4,#0x3D0]
AND             R0, R0, #1
BEQ             loc_19928C
CMP             R0, #0
BEQ             loc_19926C
MOV             R5, #3
MOV             R6, #2
MOV             R1, #1
MOV             R0, R4
BL              sub_196A40
B               loc_19929C
MOV             R5, #2
MOV             R6, #3
MOV             R1, #0
MOV             R0, R4
BL              sub_196A40
NOP
NOP
B               loc_19929C
CMP             R0, #0
MOVNE           R5, #1
MOVEQ           R5, #0
MOV             R6, #2
LDR             R9, =off_6D1648
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R10, SP, #0xA0+var_80
STR             R10, [SP,#0xA0+var_A0]
LDRB            R3, [R4,#0x3BC]
LDR             R2, =dword_6ED9B8
LDR             R1, [R4,#0x214]
BL              sub_1681F8
STR             R0, [R4,#0x224]
LDR             R1, [R0]
LDR             R2, [R1,#0x144]
MOV             R1, #0
BLX             R2
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
STR             R10, [SP,#0xA0+var_A0]
LDRB            R3, [R4,#0x3BD]
LDR             R2, =dword_6ED9B8
LDR             R1, [R4,#0x214]
BL              sub_1681F8
STR             R0, [R4,#0x228]
LDR             R1, [R0]
LDR             R2, [R1,#0x144]
MOV             R1, #0
BLX             R2
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R1, SP, #0xA0+var_60
STR             R1, [SP,#0xA0+var_A0]
LDRB            R3, [R4,#0x3BE]
LDR             R2, =dword_6ED9B8
LDR             R1, [R4,#0x214]
BL              sub_1681F8
STR             R0, [R4,#0x22C]
LDR             R1, [R0]
LDR             R2, [R1,#0x144]
MOV             R1, #0
BLX             R2
LDRB            R1, [R4,#0x3CC]
LDR             R0, [R4,#0x214]
BL              sub_4BD5FC
STR             R0, [SP,#0xA0+var_88]
LDR             R7, [R4,#0x22C]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0xCC
LDR             R0, [R7]
MOV             R3, #0
ADD             R1, SP, #0xA0+var_88
LDR             R12, [R0,#0x30]
MOV             R0, R7
BLX             R12
LDR             R0, [R4,#0x22C]
MOV             R1, #0x200
ADD             R0, R0, #0xB0
BL              sub_123CE8
LDR             R0, [R4,#0x22C]
MOV             R1, #0
STRH            R8, [R0,#0xB6]
LDR             R0, [R4,#0x22C]
ADD             R0, R0, #0xB0
BL              sub_485780
LDR             R0, [R4,#0x22C]
LDRH            R1, [R0,#0xBA]
ORR             R1, R1, #1
STRH            R1, [R0,#0xBA]
LDRB            R1, [R4,#0x3CD]
LDR             R0, [R4,#0x214]
BL              sub_4BD5C4
STR             R0, [SP,#0xA0+var_88]
LDR             R7, [R4,#0x22C]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0xCC
LDR             R0, [R7]
MOV             R3, #0
ADD             R1, SP, #0xA0+var_88
LDR             R12, [R0,#0x34]
MOV             R0, R7
BLX             R12
LDR             R0, [R4,#0x22C]
MOV             R1, #0x200
ADD             R0, R0, #0xF0
BL              sub_123CE8
LDR             R0, [R4,#0x22C]
MOV             R1, #0
STRH            R8, [R0,#0xF6]
LDR             R0, [R4,#0x22C]
ADD             R0, R0, #0xF0
BL              sub_485780
LDR             R0, [R4,#0x22C]
LDRH            R1, [R0,#0xFA]
ORR             R1, R1, #1
STRH            R1, [R0,#0xFA]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
STR             R10, [SP,#0xA0+var_A0]
LDRB            R3, [R4,#0x3BF]
LDR             R2, =dword_6ED9B8
LDR             R1, [R4,#0x214]
BL              sub_1681F8
STR             R0, [R4,#0x230]
LDR             R1, [R0]
LDR             R2, [R1,#0x144]
MOV             R1, #0
BLX             R2
ADD             R0, R4, R5,LSL#2
ADD             R1, R4, R6,LSL#2
LDR             R0, [R0,#0x224]
STR             R0, [R4,#0x218]
LDR             R1, [R1,#0x224]
STR             R1, [R4,#0x21C]
STRB            R5, [R4,#0x220]
ADD             R1, R4, #0x18
STRB            R6, [R4,#0x221]
LDR             R0, [R0,#0xA4]
LDM             R1, {R1-R3}
STR             R1, [R0,#0x58]
STR             R2, [R0,#0x68]
STR             R3, [R0,#0x78]
LDR             R1, [R0,#0x88]
ORR             R1, R1, #0x800
STR             R1, [R0,#0x88]
LDR             R0, [R4,#0x21C]
ADD             R1, R4, #0x18
LDM             R1, {R1-R3}
LDR             R0, [R0,#0xA4]
STR             R1, [R0,#0x58]
STR             R2, [R0,#0x68]
STR             R3, [R0,#0x78]
LDR             R1, [R0,#0x88]
ORR             R1, R1, #0x800
STR             R1, [R0,#0x88]
ADD             R0, R4, R5
LDRB            R1, [R0,#0x3C0]
LDR             R0, [R4,#0x214]
BL              sub_4BD5FC
STR             R0, [SP,#0xA0+var_88]
LDR             R5, [R4,#0x218]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0xCC
LDR             R0, [R5]
MOV             R3, #1
ADD             R1, SP, #0xA0+var_88
LDR             R12, [R0,#0x30]
MOV             R0, R5
BLX             R12
LDR             R0, [R4,#0x218]
MOV             R1, #0x200
ADD             R0, R0, #0xC0
BL              sub_123CE8
LDR             R0, [R4,#0x218]
STRH            R8, [R0,#0xC6]
ADD             R0, R4, R6
LDRB            R1, [R0,#0x3C0]
LDR             R0, [R4,#0x214]
BL              sub_4BD5FC
MOV             R6, R9
STR             R0, [SP,#0xA0+var_88]
LDR             R5, [R4,#0x21C]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0xCC
LDR             R0, [R5]
MOV             R3, #1
ADD             R1, SP, #0xA0+var_88
LDR             R12, [R0,#0x30]
MOV             R0, R5
BLX             R12
LDR             R0, [R4,#0x21C]
MOV             R1, #0x200
ADD             R0, R0, #0xC0
BL              sub_123CE8
LDR             R0, [R4,#0x21C]
STRH            R8, [R0,#0xC6]
LDR             R0, [R4,#0x218]
LDR             R1, [R0]
LDR             R2, [R1,#0x144]
MOV             R1, #1
BLX             R2
LDR             R0, [R4,#0x21C]
LDR             R1, [R0]
LDR             R2, [R1,#0x144]
MOV             R1, #0
BLX             R2
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R6, R0, #0x13C00
ADD             R6, R6, #0x108
MOV             R5, #0
LDRB            R9, [R6,#0x18]
CMP             R9, #0
BLE             loc_19983C
MOV             R3, #0x67 ; 'g'
AND             R1, R5, #0xFF
LDR             R0, [R6]
SMULBB          R7, R1, R3
MOV             R2, #0x17C
ADD             R1, R2, R7,LSL#2
LDRB            R0, [R0,R1]
CMP             R0, #7
CMPNE           R0, #8
BNE             loc_199830
LDR             R8, =off_6D1648
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R6]
LDR             R0, [R0,#0xDC]
ADD             R1, R1, R7,LSL#2
ADD             R12, R0, #0x14
LDR             R2, [R1,#0xA4]
ADD             R1, R0, #0x18
LDM             R1, {R1,R3}
MOV             R0, R3
CMP             R1, R0
LDRNE           R10, [R1]
CMPNE           R10, R2
ADDNE           R1, R1, #4
BNE             loc_1995FC
CMP             R1, R3
MOV             R0, R1
BEQ             loc_199674
ADD             R1, R0, #4
SUB             R3, R3, R1
MOV             R10, R3,ASR#2
CMP             R10, #0
BLE             loc_199674
MOVS            R10, R3,LSL#29
BPL             loc_199648
LDR             R10, [R1]
ADD             R1, R1, #4
CMP             R10, R2
STRNE           R10, [R0],#4
MOVS            R3, R3,ASR#3
BEQ             loc_199674
LDR             R10, [R1]
CMP             R10, R2
STRNE           R10, [R0],#4
LDR             R10, [R1,#4]!
ADD             R1, R1, #4
CMP             R10, R2
STRNE           R10, [R0],#4
SUBS            R3, R3, #1
BNE             loc_199650
LDR             R1, [R12,#8]
STR             R0, [R12,#8]
CMP             R1, R0
MOVNE           R1, #1
MOVEQ           R1, #0
CMP             R1, #0
MOVNE           R0, #0
STRNE           R0, [R2,#0xC]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x16800
LDR             R2, [R6]
ADD             R1, R1, #0x254
LDR             R10, [R1,#0x10]
ADD             R0, R2, R7,LSL#2
LDR             R8, [R0,#0xA4]
LDR             R0, [R10,#0xC]
MOV             R1, R8
CMP             R0, #0
BEQ             loc_1996DC
CMP             R0, R1
BEQ             loc_19981C
BL              sub_5E8330
CMP             R0, #0
NOP
BNE             loc_19981C
LDR             R0, [R8,#0xC]
MOV             R11, R8
ADD             R10, R10, #0x10
CMP             R0, #0
BNE             loc_19981C
ADD             R1, R10, #0xC
LDR             R3, [R10,#8]
LDM             R1, {R1,R2}
ADD             R8, R10, #4
MOV             R0, #1
SUB             R3, R1, R3
BIC             R1, R2, #0xC0000000
CMP             R1, R3,ASR#2
BGT             loc_1997F8
CMP             R1, #0
MOVEQ           R1, #1
MOVNE           R1, R1,LSL#1
BIC             R2, R2, #0xC0000000
CMP             R2, R1
STR             R1, [SP,#0xA0+var_2C]
BGE             loc_1997F8
LDR             R0, [R8]
CMP             R0, #0
BEQ             loc_199810
LDR             R0, [R8,#0xC]
AND             R0, R0, #0xC0000000
CMP             R0, #0x40000000
MOVNE           R0, #0
BNE             loc_199810
LDR             R0, [R8]
MOV             R1, R1,LSL#2
LDR             R2, [R0]
LDR             R3, [R2,#8]
MOV             R2, #0x20 ; ' '
BLX             R3
STR             R0, [SP,#0xA0+var_A0]
LDRD            R0, R1, [R8,#4]
MOV             R2, #0
STR             R2, [SP,#0xA0+var_90]
CMP             R0, R1
LDRNE           R2, [SP,#0xA0+var_A0]
BEQ             loc_1997B4
CMP             R2, #0
VLDRNE          S0, [R0]
ADD             R0, R0, #4
VSTRNE          S0, [R2]
CMP             R0, R1
ADD             R2, R2, #4
BNE             loc_199784
LDR             R0, [R8,#8]
LDR             R1, [R8,#4]
SUB             R0, R0, R1
MOV             R0, R0,ASR#2
STR             R0, [SP,#0xA0+var_90]
LDR             R1, [R8,#4]
CMP             R1, #0
BEQ             loc_1997D0
LDR             R0, [R8]
LDR             R2, [R0]
LDR             R2, [R2,#0xC]
BLX             R2
LDR             R1, [SP,#0xA0+var_90]
LDR             R0, [SP,#0xA0+var_A0]
ADD             R1, R0, R1,LSL#2
STRD            R0, R1, [R8,#4]
LDR             R1, [R8,#0xC]
LDR             R0, [SP,#0xA0+var_2C]
AND             R1, R1, #0xC0000000
ORR             R0, R0, R1
STR             R0, [R8,#0xC]
MOV             R0, #1
LDR             R1, [R8,#8]
CMP             R1, #0
STRNE           R11, [R1]
LDR             R1, [R8,#8]
ADD             R1, R1, #4
STR             R1, [R8,#8]
CMP             R0, #0
LDRNE           R0, [R10]
STRNE           R0, [R11,#0xC]
LDR             R0, [R6]
ADD             R1, R0, R7,LSL#2
LDRB            R0, [R1,#0x17D]
BIC             R0, R0, #4
STRB            R0, [R1,#0x17D]
ADD             R5, R5, #1
CMP             R5, R9
BLT             loc_1995A8
LDR             R0, [R4]
LDR             R1, [R0,#0xE4]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x3D0]
VLDR            S0, =1.0
TST             R0, #1
LDR             R0, [R4]
LDR             R2, [R0,#0xE0]
BEQ             loc_199874
MOV             R1, #1
MOV             R0, R4
BLX             R2
B               loc_199880
MOV             R1, #0
MOV             R0, R4
BLX             R2
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R1, [R0,#0x1B4]
ORR             R1, R1, #8
STR             R1, [R0,#0x1B4]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x254
BL              sub_4B1570
LDR             R0, =off_68BBB8
ADD             R3, R4, #4
ADD             R1, R0, #0x28 ; '('
LDM             R1, {R1,R2}
STM             R3, {R1,R2}
LDRD            R0, R1, [R0,#(off_68BBF0 - 0x68BBB8)]
STRD            R0, R1, [R4,#0xC]
LDR             R0, [R5]
LDR             R0, [R0,#0xA0]
ADD             R4, R0, #0x14400
ADD             R4, R4, #0x204
MOV             R0, #0xB5
NOP
MOV             R1, R0
MOV             R0, R4
BL              sub_50EB80
MOV             R0, #0xB0
NOP
NOP
MOV             R1, R0
MOV             R0, R4
BL              sub_50EB80
LDR             R0, =0x121
NOP
NOP
MOV             R1, R0
MOV             R0, R4
BL              sub_50EB80
MOV             R0, #0xC6
NOP
NOP
MOV             R1, R0
MOV             R0, R4
BL              sub_50EB80
MOV             R0, #0xC5
NOP
NOP
MOV             R1, R0
MOV             R0, R4
BL              sub_50EB80
LDR             R0, =0x119
NOP
NOP
MOV             R1, R0
MOV             R0, R4
BL              sub_50EB80
MOV             R0, #0x118
NOP
NOP
MOV             R1, R0
MOV             R0, R4
BL              sub_50EB80
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14C00
ADD             R0, R0, #0x38 ; '8'
LDR             R0, [R0]
BL              sub_220FF0
ADD             SP, SP, #0x7C ; '|'
POP             {R4-R11,PC}
