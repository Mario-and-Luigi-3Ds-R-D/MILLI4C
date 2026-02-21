PUSH            {R4-R11,LR}
MOV             R2, #0
MOV             R1, #1
VPUSH           {D8}
SUB             SP, SP, #0xC
BL              sub_1DFBC4
MOV             R1, R0
LDR             R0, =off_6B17A4
MOV             R6, #0
STR             R0, [R1]
STRH            R6, [R1,#0x48]
STRH            R6, [R1,#0x4A]
STRB            R6, [R1,#0x4C]
STRB            R6, [R1,#0x4D]
STRB            R6, [R1,#0x4E]
STRB            R6, [R1,#0x4F]
STRB            R6, [R1,#0x50]
STRB            R6, [R1,#0x51]
STRB            R6, [R1,#0x52]
ADD             R0, R1, #0x74 ; 't'
STRB            R6, [R1,#0x53]
BL              sub_216978
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x154
BL              sub_14F198
MOV             R4, R0
LDR             R0, =off_6B2ABC
MOV             R1, #2
STR             R0, [R4]
MOV             R0, R4
STRB            R6, [R4,#0x3F4]
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              sub_14B798
LDR             R5, =flt_6E34B0
MOV             R0, R4
ADD             R1, R5, #0x9C
BL              sub_14E984
ADD             R0, R4, #0x3F8
BL              sub_14F198
LDR             R1, =off_6B4050
MOV             R2, #0x3F4
STR             R1, [R0]
STRH            R6, [R2,R0]
STR             R6, [R0,#0x3F8]
STR             R6, [R0,#0x3FC]!
ADD             R0, R0, #4
BL              sub_2C2000
SUB             R4, R0, #0x400
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              sub_14B798
SUB             R1, R4, #0x1000
ADD             R0, R4, #0x7400
SUB             R2, R4, #0x3F8
SUB             R1, R1, #0x14C
ADD             R0, R0, #0x2D8
BL              sub_2A7098
ADD             R0, R0, #0x8000
ADD             R0, R0, #0x310
BL              sub_2A2F70
ADD             R0, R0, #0x2AC
BL              sub_2C729C
ADD             R0, R0, #0xE800
ADD             R0, R0, #0x1CC
BL              sub_338B2C
ADD             R0, R0, #0x2A0
BL              sub_14CB8C
LDR             R1, =off_6B6598
STR             R1, [R0]
STRB            R6, [R0,#0xFD]
ADD             R0, R0, #0x100
ADD             R1, R5, #0x2B4
BL              sub_5A2B98
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
MOV             R10, #1
STR             R1, [R0,#0x28]
ADD             R2, R0, #0x58 ; 'X'
STRB            R10, [R0,#0x2C]
MOV             R0, #0xFFFFFF00
VLDR            S16, =0.0
REV             R1, R0
ADD             R0, R2, #0x1C
STR             R1, [R2]
STR             R1, [R2,#4]
STR             R1, [R2,#8]
VSTR            S16, [R2,#0xC]
VSTR            S16, [R2,#0x10]
VSTR            S16, [R2,#0x14]
VSTR            S16, [R2,#0x18]
BL              sub_5A2F28
ADD             R0, R0, #0x1C
BL              sub_5931A8
SUB             R4, R0, #0x190
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              sub_14B798
ADD             R0, R4, #0x294
BL              sub_14F198
MOV             R4, R0
LDR             R0, =off_6B5478
MOV             R1, #2
STR             R0, [R4]
MOV             R0, R4
STRB            R6, [R4,#0x3F4]
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              sub_14B798
ADD             R1, R5, #0x304
MOV             R0, R4
BL              sub_14E984
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x38+var_38]
MOV             R0, R4
BL              sub_14D778
LDR             R2, =0x4B8
LDR             R1, =sub_38615C
MOV             R3, #2
ADD             R0, R4, #0x3F8
BLX             sub_1002F4
LDR             R2, =unk_656C7C
SUB             R0, R0, #0x20000
SUB             R0, R0, #0x14C
ADD             R3, R0, #0x20800
LDM             R2, {R1,R2}
ADD             R3, R3, #0x2BC
ADD             R0, R0, #0x20800
ADD             R0, R0, #0x2C4
STM             R3, {R1,R2}
MOV             R3, #2
LDR             R1, =sub_2E9EFC
MOV             R2, #0xC
BLX             sub_1002F4
LDR             R1, =sub_29F490
ADD             R0, R0, #0x20 ; ' '
MOV             R3, #0x42 ; 'B'
MOV             R2, #0x10
BLX             sub_1002F4
STRB            R6, [R0,#0x420]
SUB             R1, R0, #0x20800
ADD             R2, R0, #0x400
STRB            R6, [R0,#0x421]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x1C
LDR             R3, =0x20F0E
STRH            R6, [R0,#8]
STRH            R6, [R0,#0xA]
SUB             R1, R1, #0x2E4
STRH            R6, [R0,#0xC]
ORR             R12, R3, R3,ASR#8
ADD             R2, R2, #0x2C ; ','
STRB            R6, [R1,R3]
ADD             R0, R1, #0x20C00
STRB            R6, [R1,R12]
ADD             R0, R0, #0x314
STRB            R6, [R2]
BL              sub_4E7CBC
MOV             R1, #0xFFFFFFFF
ADD             R0, R0, #0xC
REV             R1, R1
MOV             R2, R0
STR             R1, [R0]
STR             R1, [R0,#4]
STR             R1, [R0,#8]
ADD             R0, R0, #0xC
VSTR            S16, [R0]
VSTR            S16, [R0,#4]
VSTR            S16, [R0,#8]
VSTR            S16, [R0,#0xC]
ADD             R0, R2, #0x1C
BL              sub_5A2F28
SUB             R0, R0, #0x20C00
SUB             R0, R0, #0x33C
ADD             R2, R0, #0x20C00
MOV             R1, #0
ADD             R2, R2, #0x358
REV             R1, R1
ADD             R0, R0, #0x20C00
STR             R1, [R2]
ADD             R0, R0, #0x364
STR             R1, [R2,#4]
STR             R1, [R2,#8]
VSTR            S16, [R0]
VSTR            S16, [R0,#4]
VSTR            S16, [R0,#8]
VSTR            S16, [R0,#0xC]
ADD             R0, R0, #0x10
BL              sub_5A2F28
SUB             R7, R0, #0x20C00
SUB             R7, R7, #0x374
LDR             R0, =off_6BB784
ADD             R4, R7, #0x20000
ADD             R4, R4, #0xF90
ADD             R8, R7, #0x20C00
STM             R4, {R0,R7}
ADD             R8, R8, #0x398
LDR             R0, =off_6BB790
ADD             R5, R7, #0x20000
ADD             R5, R5, #0xFA0
STM             R8, {R0,R7}
MOV             R2, #0x20 ; ' '
LDR             R0, =off_6BB79C
MOV             R1, #0
STM             R5, {R0,R7}
ADD             R0, R7, #0x54 ; 'T'
BL              sub_110BE4
ADD             R0, R7, #0x20800
ADD             R0, R0, #0x2DC
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
LDR             R9, =off_6CE970
LDR             R11, =0x19DFE8
MOV             R1, R4
LDR             R0, [R9]
LDR             R0, [R0,R11]
BL              sub_1CC93C
LDR             R0, [R9]
MOV             R1, R8
LDR             R0, [R0,R11]
BL              sub_1CCA1C
LDR             R0, [R9]
MOV             R1, R5
LDR             R0, [R0,R11]
BL              sub_1CCA30
LDR             R0, [R9]
ADD             R1, R0, #0x68 ; 'h'
LDR             R2, [R0,R11]
MOV             R0, R2
BL              sub_4D6514
LDR             R0, [R9]
BL              sub_5EE4C4
CMP             R0, #0
BEQ             loc_1DF4F8
LDR             R1, =0x593
LDR             R0, [R9]
BL              sub_52F770
LDR             R0, [R9]
LDR             R1, [R0,#4]
LDRB            R1, [R1]
CMP             R1, #0
BEQ             loc_1DF554
BL              sub_5EE4D4
CMP             R0, #0
NOP
BNE             loc_1DF554
MOV             R2, #0
LDR             R0, =0xE007
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_1DF554
LDR             R0, =0x20F0E
LDRB            R0, [R0,R7]
CMP             R0, #0
BEQ             loc_1DF554
LDR             R1, =0x594
LDR             R0, [R9]
BL              sub_52F770
LDR             R1, =unk_656CE0
LDR             R0, [R9]
MOV             R2, #6
BL              sub_529204
NOP
NOP
BL              sub_2C8400
LDR             R0, [R9]
MOV             R1, #0xA000
BL              sub_52FACC
MOV             R3, #0x10000
MOV             R4, R0
MOV             R2, R3
MOV             R1, #0x41000
STR             R6, [SP,#0x38+var_38]
STR             R6, [SP,#0x38+var_34]
BL              sub_57162C
LDR             R5, =sub_10640C
LDR             R0, [R9]
MOV             R1, R4
ADD             R0, R0, R5; sub_10640C
BL              sub_1CF9FC
LDR             R1, =0xA001
LDR             R0, [R9]
BL              sub_52FACC
LDR             R1, =0xC2007
MOV             R4, R0
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R9]
MOV             R1, R4
ADD             R0, R0, R5; sub_10640C
BL              sub_1CF9FC
LDR             R1, =0xA002
LDR             R0, [R9]
BL              sub_52FACC
LDR             R1, =0xC2009
MOV             R4, R0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
MOV             R1, R4
NOP
B               loc_1DF67C
DCD off_6B17A4
DCD off_6B2ABC
DCD flt_6E34B0
DCD off_6B4050
DCD off_6B6598
DCD off_6B7BFC
DCD sub_5A39D0
DCFS 0.0
DCD off_6B5478
DCD 0x4B8
DCD sub_38615C
DCD unk_656C7C
DCD sub_2E9EFC
DCD sub_29F490
DCD 0x20F0E
DCD off_6BB784
DCD off_6BB790
DCD off_6BB79C
DCD off_6CE970
DCD 0x19DFE8
DCD 0x593
DCD 0xE007
DCD 0x594
DCD unk_656CE0
DCD sub_10640C
DCD 0xA001
DCD 0xC2007
DCD 0xA002
DCD 0xC2009
LDR             R0, [R9]
ADD             R0, R0, R5; sub_10640C
BL              sub_1CF9FC
LDR             R1, =0xA003
LDR             R0, [R9]
BL              sub_52FACC
LDR             R1, =0xC2081
MOV             R4, R0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R9]
MOV             R1, R4
ADD             R0, R0, R5; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R9]
NOP
BL              sub_5EE6F4
CMP             R0, #0
NOP
BEQ             loc_1DF700
LDR             R1, =0xA004
LDR             R0, [R9]
BL              sub_52FACC
LDR             R1, =0xC2163
MOV             R4, R0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R9]
MOV             R1, R4
ADD             R0, R0, R5; sub_10640C
BL              sub_1CF9FC
LDR             R1, =0xA005
LDR             R0, [R9]
BL              sub_52FACC
LDR             R1, =0xC2090
MOV             R4, R0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R9]
MOV             R1, R4
ADD             R0, R0, R5; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R9]
NOP
BL              sub_528E64
ADD             R4, R0, #0x400
LDR             R0, [R9]
LDRH            R5, [R4,#0x98]
BL              sub_5EE468
CMP             R0, #0
NOP
BNE             loc_1DF774
CMP             R5, #1
BEQ             loc_1DF774
CMP             R5, #2
CMPNE           R5, #5
BEQ             loc_1DF774
CMP             R5, #6
STRHNE          R6, [R4,#0x98]
ADD             R6, R7, #0x8800
ADD             R6, R6, #0x98
BL              sub_47FFCC
CMP             R0, #0
NOP
BEQ             loc_1DF79C
BL              sub_50F1A4
NOP
NOP
B               loc_1DF7A4
NOP
BL              sub_50F2B8
LDRB            R1, [R4,#0x95]
LDRD            R4, R5, [R0]
CMP             R1, #0
MOVEQ           R8, #1
MOVNE           R8, #2
CMP             R4, R5
ADDNE           R6, R6, #0x8000
ADDNE           R6, R6, #0x304
BEQ             loc_1DF82C
LDRH            R0, [R4]
BL              sub_50F020
LDRB            R0, [R0,#5]
CMP             R0, #3
CMPNE           R0, R8
BNE             loc_1DF820
LDRH            R1, [R4]
LDR             R0, [R9]
BL              sub_5EE79C
CMP             R0, #0
NOP
BNE             loc_1DF810
LDRH            R1, [R4]
LDR             R0, [R9]
BL              sub_5EEB40
CMP             R0, #0
NOP
BEQ             loc_1DF820
LDRH            R0, [R4]
LDR             R1, [R6]
ORR             R0, R1, R10,LSL R0
STR             R0, [R6]
ADD             R4, R4, #2
CMP             R4, R5
BNE             loc_1DF7C8
LDR             R0, [R9]
MOV             R1, #1
BL              sub_529274
LDR             R2, =off_656B84
ADD             R1, R7, #0x20800
ADD             R1, R1, #0x2BC
LDM             R2, {R0,R2}
STM             R1, {R0,R2}
ADD             SP, SP, #0xC
MOV             R0, R7
VPOP            {D8}
POP             {R4-R11,PC}
