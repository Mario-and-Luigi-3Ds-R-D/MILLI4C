PUSH            {R3-R11,LR}
LDR             R4, =dword_6D45E4
LDR             R1, =0x1774
STR             R0, [R4,#(dword_6D45EC - 0x6D45E4)]
BL              sub_2FFE8C
MOV             R0, #0
STR             R0, [SP,#0x28+var_28]
LDR             R3, =dword_6989C0
MOV             R8, #1
MOV             R0, #0xFFFFFFFF
STR             R8, [R4,#(dword_6D45E8 - 0x6D45E4)]
STR             R0, [R4,#(dword_6D45F0 - 0x6D45E4)]
STR             R8, [R4]
LDR             R1, [R3]
MOV             R0, #0
CMN             R1, #1
LDRNE           R12, =unk_70C224
BEQ             loc_1148DC
ADD             R1, R3, R0,LSL#4
ADD             R0, R0, #1
LDM             R1, {R2,R5}
ADD             R2, R2, R2,LSL#1
STR             R5, [R12,R2,LSL#2]
LDR             R5, [R1,#8]
ADD             R2, R12, R2,LSL#2
STR             R5, [R2,#4]
LDR             R1, [R1,#0xC]
STR             R1, [R2,#8]
LDR             R1, [R3,R0,LSL#4]
CMN             R1, #1
BNE             loc_1148A8
LDR             R0, =dword_699C60
MOV             R1, #0
LDR             R2, [R0]
CMN             R2, #1
LDRNE           R3, =unk_70D010
BEQ             loc_114910
ADD             R2, R0, R1,LSL#3
ADD             R1, R1, #1
LDM             R2, {R2,R12}
STR             R12, [R3,R2,LSL#2]
LDR             R2, [R0,R1,LSL#3]
CMN             R2, #1
BNE             loc_1148F4
LDR             R0, [R4,#(dword_6D45EC - 0x6D45E4)]
LDR             R12, =0x16DA
MOV             R1, #0xF
ADD             R2, R0, #0x1000
MOV             R5, #0x1000
STR             R5, [R2,#0x3A4]
ORR             LR, R12, R1,ASR#2
MOV             R6, #2
STRB            R6, [R12,R0]
MOV             R3, #0
EOR             R7, LR, R1,ASR#1
STR             R3, [R2,#0x3A8]
STRB            R1, [LR,R0]
EOR             R12, R12, R1,ASR#1
STR             R3, [R2,#0x3AC]
STRB            R1, [R7,R0]
MOV             R4, #9
STR             R4, [R2,#0x3B0]
EOR             LR, R12, R1,ASR#2
STRB            R1, [R12,R0]
ORR             R5, R7, R1
STR             R3, [R2,#0x3B4]
STRB            R1, [LR,R0]
ADD             R6, R12, R1,ASR#2
STR             R3, [R2,#0x3B8]
STRB            R1, [R5,R0]
STR             R3, [R2,#0x3BC]
LDR             R10, =0x1C00301
STRB            R1, [R6,R0]
ADD             R7, LR, R1,ASR#2
STR             R10, [R2,#0x3C0]
LDR             R12, =0xE0C08000
STRB            R1, [R7,R0]
ADD             R9, R5, R1,ASR#2
STR             R12, [R2,#0x3C4]
SUB             R11, R6, #0x274
STRB            R1, [R9,R0]
MOV             R12, #0x3C00
ADD             LR, R5, #0x2D ; '-'
STR             R12, [R11,R0]
SUB             R10, R5, #0x15
STRB            R1, [LR,R0]
LDR             LR, =0x1F1F1F1F
STR             R3, [R2,#0x364]
ORR             R4, R10, R1,ASR#2
STRB            R1, [R10,R0]
STR             LR, [R2,#0x368]
STRB            R1, [R4,R0]
EOR             R5, R4, R1,ASR#1
STR             LR, [R2,#0x36C]
STRB            R1, [R5,R0]
ADD             R6, R0, #0x1600
ADD             R6, R6, #0xCD
STR             LR, [R2,#0x370]
STRB            R1, [R6]
ADD             R7, R0, #0x1600
ADD             R7, R7, #0xCE
STR             LR, [R2,#0x374]
STRB            R1, [R7]
ADD             R9, R0, #0x1600
ADD             R9, R9, #0xCF
ADD             R10, R4, #5
STR             LR, [R2,#0x378]
STRB            R1, [R9]
ADD             R4, R0, #0x1600
ADD             R5, R0, #0x1400
ADD             R6, R0, #0x1400
ADD             R7, R0, #0x1600
MOV             R12, #0x5C ; '\'
ADD             R4, R4, #0xD1
ADD             R5, R5, #0x2D8
ADD             R6, R6, #0x2C8
ADD             R7, R7, #0xC9
ORR             R9, R10, R10,ASR#11
STR             LR, [R2,#0x37C]
STRB            R1, [R10,R0]
STR             LR, [R2,#0x380]
STRB            R1, [R4]
STR             R8, [R2,#0x39C]
STRB            R1, [R5]
MOV             R5, #0xBF0000
STR             R5, [R2,#0x35C]
STRB            R1, [R6]
STR             R3, [R2,#0x360]
STRB            R1, [R7]
STR             R3, [R2,#0x384]
ORR             R10, R9, R1,ASR#2
STRB            R1, [R9,R0]
STR             R3, [R2,#0x388]
EOR             LR, R10, R1,ASR#1
STRB            R1, [R10,R0]
STR             R3, [R2,#0x38C]
EOR             R4, R9, R1,ASR#1
STRB            R1, [LR,R0]
STR             R3, [R2,#0x390]
EOR             R5, R4, R1,ASR#2
STRB            R1, [R4,R0]
STR             R3, [R2,#0x394]
STRB            R1, [R5,R0]
CMP             R12, #0x8D
BEQ             loc_114E00
BGT             loc_114B44
CMP             R12, #0x77 ; 'w'
BEQ             loc_114E00
BGT             loc_114B00
CMP             R12, #0x6C ; 'l'
BEQ             loc_114E00
BGT             loc_114AE4
CMP             R12, #0x61 ; 'a'
BEQ             loc_114E00
CMP             R12, #0x63 ; 'c'
BEQ             loc_114E24
CMP             R12, #0x64 ; 'd'
BEQ             loc_114E2C
CMP             R12, #0x66 ; 'f'
BNE             loc_114BD4
B               loc_114DDC
CMP             R12, #0x6E ; 'n'
BEQ             loc_114E24
CMP             R12, #0x6F ; 'o'
BEQ             loc_114E2C
CMP             R12, #0x71 ; 'q'
BNE             loc_114BD4
B               loc_114DDC
CMP             R12, #0x82
BEQ             loc_114E00
BGT             loc_114B28
CMP             R12, #0x79 ; 'y'
BEQ             loc_114E24
CMP             R12, #0x7A ; 'z'
BEQ             loc_114E2C
CMP             R12, #0x7C ; '|'
BNE             loc_114BD4
B               loc_114DDC
CMP             R12, #0x84
BEQ             loc_114E24
CMP             R12, #0x85
BEQ             loc_114E2C
CMP             R12, #0x87
BNE             loc_114BD4
B               loc_114DDC
CMP             R12, #0xA3
BEQ             loc_114E00
BGT             loc_114B94
CMP             R12, #0x98
BEQ             loc_114E00
BGT             loc_114B78
CMP             R12, #0x8F
BEQ             loc_114E24
CMP             R12, #0x90
BEQ             loc_114E2C
CMP             R12, #0x92
BNE             loc_114BD4
B               loc_114DDC
CMP             R12, #0x9A
BEQ             loc_114E24
CMP             R12, #0x9B
BEQ             loc_114E2C
CMP             R12, #0x9D
BNE             loc_114BD4
B               loc_114DDC
CMP             R12, #0xAE
BEQ             loc_114E00
BGT             loc_114BBC
CMP             R12, #0xA5
BEQ             loc_114E24
CMP             R12, #0xA6
BEQ             loc_114E2C
CMP             R12, #0xA8
BNE             loc_114BD4
B               loc_114DDC
CMP             R12, #0xB0
BEQ             loc_114E24
CMP             R12, #0xB1
BEQ             loc_114E2C
CMP             R12, #0xB3
BEQ             loc_114DDC
ADD             LR, R0, R12,LSL#2
ADD             R3, R0, R12
ADD             LR, LR, #0x1000
ADD             R3, R3, #0x1600
MOV             R2, #0
ADD             R3, R3, #0xB1
STR             R2, [LR,#0x300]
STRB            R1, [R3]
ADD             R12, R12, #1
CMP             R12, #0xB3
BLS             loc_114A9C
LDR             R6, =0x1478
LDR             R11, =0xCC330CC
LDR             R3, =0x170F
ADD             R12, R6, #0x158
STR             R11, [R6,R0]
ADD             LR, R6, #0x15C
LDR             R6, =0xA0280A
STRB            R1, [R3,R0]
ADD             R4, R3, #0x56 ; 'V'
STR             R6, [R12,R0]
STRB            R1, [R4,R0]
MOV             R4, #0
ADD             R5, R0, #0x1700
STR             R4, [LR,R0]
ADD             R5, R5, #0x66 ; 'f'
ADD             R7, R0, #0x1000
ADD             R7, R7, #0x5E0
STRB            R1, [R5]
MOV             R5, #1
ADD             R8, R0, #0x1700
STR             R5, [R7]
ADD             R8, R8, #0x69 ; 'i'
LDR             R11, =0x88000400
ADD             R9, R0, #0x1400
STRB            R1, [R8]
ADD             R9, R9, #0x1D8
ADD             R10, R0, #0x1700
STR             R11, [R9]
ADD             R10, R10, #0x67 ; 'g'
ADD             R2, R0, #0x1400
STRB            R1, [R10]
ADD             R2, R2, #0x1DC
MOV             R11, #0xFFFFFFFF
ADD             R3, R0, #0x1400
STR             R11, [R2]
ADD             R3, R3, #0x368
ADD             R12, R0, #0x1400
ADD             R12, R12, #0x1E8
STRB            R1, [R3]
ADD             LR, R0, #0x1700
ADD             LR, LR, #0x6B ; 'k'
ADD             R6, R0, #0x1400
STR             R4, [R12]
ADD             R6, R6, #0x1EC
ADD             R7, R0, #0x1400
ADD             R7, R7, #0x36C
STRB            R1, [LR]
STR             R4, [R6]
STRB            R1, [R7]
LDR             R7, =0x2222222
ADD             R8, R0, #0x1400
ADD             R8, R8, #0x1E4
LDR             R2, =0x176D
ADD             R9, R0, #0x1700
ADD             R9, R9, #0x6A ; 'j'
ADD             R10, R0, #0x1000
STR             R7, [R8]
ADD             R10, R10, #0x5F0
STRB            R1, [R9]
MOV             R3, #0x1440
STR             R4, [R10]
STRB            R1, [R2,R0]
SUB             R12, R2, #0x6C ; 'l'
STR             R4, [R3,R0]
ADD             LR, R3, #4
STRB            R1, [R12,R0]
STR             R4, [LR,R0]
LDR             R11, =dword_6D45E4
SUB             R6, R2, #0x6B ; 'k'
ADD             R12, LR, R5,LSL#2
SUB             LR, R2, #0x6A ; 'j'
MOV             R3, #0x3C00
MOV             R7, #0x100
ADD             R2, R12, #0xC
STRB            R1, [R6,R0]
STR             R3, [R12,R0]
STRB            R1, [LR,R0]
EOR             R3, LR, R2,ASR#10
STR             R4, [R2,R0]
ADD             R12, R2, #4
STRB            R1, [R3,R0]
ORR             LR, R3, R2,ASR#10
STR             R4, [R12,R0]
ADD             R6, R2, #8
ADD             R2, R2, #0x2B4
STRB            R1, [LR,R0]
STR             R7, [R6,R0]
STRB            R1, [R2,R0]
MOV             R2, #0xA00
ADD             R3, R2, #0xA60
LDR             R12, =0x1709
STR             R2, [R3,R0]
MOV             LR, #7
SUB             R3, R3, #0x14
STRB            LR, [R12,R0]
MOV             R2, #0x3C00
ADD             R12, R3, #0x2B8
ADD             R8, R7, #0xE40000
STR             R2, [R3,R0]
ADD             LR, R3, #0x18
STRB            R1, [R12,R0]
EOR             R6, R12, R8,ASR#20
MOV             R9, #0xD
ADD             R7, R3, #0x1C
STR             R8, [LR,R0]
MOV             R10, #0x10
STRB            R9, [R6,R0]
STR             R10, [R7,R0]
LDR             R7, =0xEEE0EEE
EOR             R2, R12, R2,ASR#10
ADD             R3, R0, #0x1000
ADD             R12, R0, #0x1600
STRB            R1, [R2,R0]
MOV             R2, #0
MOV             LR, #0x1E
ADD             R3, R3, #0x3C8
ADD             R12, R12, #0xE3
ORR             R6, R7, R7,ASR#1
B               loc_115024
MOV             R2, #0x3F000
ADD             LR, R0, R12,LSL#2
ADD             R3, R0, R12
ADD             LR, LR, #0x1000
ADD             R3, R3, #0x1600
ADD             R3, R3, #0xB1
STR             R2, [LR,#0x300]
STRB            R1, [R3]
B               loc_114BF4
ADD             R3, R0, R12,LSL#2
ADD             LR, R0, R12
ADD             R3, R3, #0x1000
ADD             LR, LR, #0x1600
MOV             R2, #0x3C00
ADD             LR, LR, #0xB1
STR             R2, [R3,#0x300]
STRB            R1, [LR]
B               loc_114BF4
MOV             R2, #0x800
B               loc_114DE0
ADD             LR, R0, R12,LSL#2
ADD             R3, R0, R12
ADD             LR, LR, #0x1000
ADD             R3, R3, #0x1600
MOV             R2, #1
ADD             R3, R3, #0xB1
STR             R2, [LR,#0x300]
STRB            R1, [R3]
B               loc_114BF4
CMP             R2, #0
BEQ             loc_115024
CMP             R2, #5
CMPNE           R2, #0xA
BEQ             loc_11502C
CMP             R2, #0xF
CMPNE           R2, #0x14
BEQ             loc_11502C
CMP             R2, #0x19
STRNE           R4, [R3]
STRBNE          R1, [R12]
BEQ             loc_11502C
SUBS            LR, LR, #1
ADD             R3, R3, #4
ADD             R12, R12, #1
ADD             R2, R2, #1
BNE             loc_114E50
LDR             R2, =0x1450
LDR             R3, =0x1705
STR             R4, [R2,R0]
STRB            R1, [R3,R0]
ADD             R1, R0, #0x1300
ADD             R0, R0, #0x1000
MOV             R2, #0x2F4
ADD             R0, R0, #0xC
BL              sub_127EB8
LDR             R0, [R11,#(dword_6D45EC - 0x6D45E4)]
MOV             R2, #0xBD
ADD             R1, R0, #0x1600
ADD             R0, R0, #0x1400
ADD             R1, R1, #0xB1
ADD             R0, R0, #0x1F4
BL              sub_2FF3D8
LDR             LR, =unk_70D200
LDR             R2, =dword_6D45F4
MOV             R0, #0
STR             R4, [LR,#(dword_70D304 - 0x70D200)]
STR             R4, [LR,#(dword_70D308 - 0x70D200)]
STR             R4, [LR,#(dword_70D30C - 0x70D200)]
STR             R4, [LR,#(dword_70D310 - 0x70D200)]
STR             R4, [LR,#(dword_70D314 - 0x70D200)]
STR             R4, [LR,#(dword_70D318 - 0x70D200)]
LDR             R1, [R2]
CMP             R1, #0xBD
ADDNE           R3, LR, #0x104
BEQ             loc_114F30
LDR             R12, [R2,R0,LSL#2]
ADD             R0, R0, #1
MOV             R1, R12,ASR#5
AND             R12, R12, #0x1F
LDR             R6, [R3,R1,LSL#2]
ORR             R12, R6, R5,LSL R12
STR             R12, [R3,R1,LSL#2]
LDR             R1, [R2,R0,LSL#2]
CMP             R1, #0xBD
BNE             loc_114F08
STR             R4, [LR,#(dword_70D31C - 0x70D200)]
STR             R4, [LR,#(dword_70D320 - 0x70D200)]
LDR             R12, =dword_6D4654
STR             R4, [LR,#(dword_70D324 - 0x70D200)]
STR             R4, [LR,#(dword_70D328 - 0x70D200)]
STR             R4, [LR,#(dword_70D32C - 0x70D200)]
STR             R4, [LR,#(dword_70D330 - 0x70D200)]
LDR             R2, [R12]
LDR             R0, =dword_70D31C
MOV             R1, #0
CMP             R2, #0xBD
BEQ             loc_114F88
LDR             R3, [R12,R1,LSL#2]
ADD             R1, R1, #1
MOV             R2, R3,ASR#5
AND             R3, R3, #0x1F
LDR             R6, [R0,R2,LSL#2]
ORR             R3, R6, R5,LSL R3
STR             R3, [R0,R2,LSL#2]
LDR             R2, [R12,R1,LSL#2]
CMP             R2, #0xBD
BNE             loc_114F60
LDR             R2, =dword_6D466C
MOV             R1, #0
LDR             R3, [R2]
CMP             R3, #0xBD
BEQ             loc_114FC4
LDR             R12, [R2,R1,LSL#2]
ADD             R1, R1, #1
AND             R6, R12, #0x1F
MOV             R3, R12,ASR#5
LDR             R12, [R0,R3,LSL#2]
ORR             R12, R12, R5,LSL R6
STR             R12, [R0,R3,LSL#2]
LDR             R3, [R2,R1,LSL#2]
CMP             R3, #0xBD
BNE             loc_114F9C
STR             R4, [LR,#(dword_70D334 - 0x70D200)]
STR             R4, [LR,#(dword_70D338 - 0x70D200)]
LDR             R1, =dword_6D4684
STR             R4, [LR,#(dword_70D33C - 0x70D200)]
STR             R4, [LR,#(dword_70D340 - 0x70D200)]
STR             R4, [LR,#(dword_70D344 - 0x70D200)]
STR             R4, [LR,#(dword_70D348 - 0x70D200)]
LDR             R2, [R1]
MOV             R0, #0
CMP             R2, #0xBD
LDRNE           R2, =dword_70D334
BEQ             loc_11501C
LDR             R3, [R1,R0,LSL#2]
ADD             R0, R0, #1
MOV             R12, R3,ASR#5
AND             R3, R3, #0x1F
LDR             LR, [R2,R12,LSL#2]
ORR             R3, LR, R5,LSL R3
STR             R3, [R2,R12,LSL#2]
LDR             R3, [R1,R0,LSL#2]
CMP             R3, #0xBD
BNE             loc_114FF4
LDR             R0, [SP,#0x28+var_28]
POP             {R3-R11,PC}
STR             R7, [R3]
B               loc_115030
STR             R6, [R3]
STRB            R1, [R12]
B               loc_114E80
