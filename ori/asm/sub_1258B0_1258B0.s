PUSH            {R4-R12,LR}
MOV             R9, #1
LDR             R7, =dword_6D2418
LDR             R8, =dword_6D241C
LDR             R2, [R7]
LDR             R0, [R8]
CMP             R2, R0
BCS             loc_1258E4
LDR             R1, =0x10245
ADD             R3, R2, #8
STR             R1, [R2,#4]
STR             R9, [R2]
STR             R3, [R7]
LDR             R1, [R8]
LDR             R0, [R7]
MOV             R5, #0
CMP             R0, R1
BCS             loc_12590C
LDR             R2, =0x10244
ADD             R3, R0, #8
STR             R2, [R0,#4]
STR             R5, [R0]
STR             R3, [R7]
LDR             R0, [R8]
LDR             R2, [R7]
MOV             R10, #0x80000000
CMP             R2, R0
BCS             loc_125934
LDR             R1, =0x80289
ADD             R3, R2, #8
STR             R1, [R2,#4]
STR             R10, [R2]
STR             R3, [R7]
LDR             R0, [R7]
LDR             R1, [R8]
CMP             R0, R1
BCS             loc_125958
LDR             R2, =0xB0229
ADD             R3, R0, #8
STR             R2, [R0,#4]
STR             R5, [R0]
STR             R3, [R7]
LDR             R2, [R7]
LDR             R0, [R8]
CMP             R2, R0
MOVCS           R1, R2
BCS             loc_125980
LDR             R3, =0xF0252
ADD             R1, R2, #8
STR             R3, [R2,#4]
STR             R5, [R2]
STR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_1259A0
LDR             R2, =0xF0251
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R5, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_1259C4
LDR             R2, =0xF0254
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R5, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_1259E8
LDR             R2, =0x10253
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R5, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125A0C
LDR             R2, =0xF0242
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R5, [R1]
STR             R3, [R7]
LDR             R2, [R7]
LDR             R0, [R8]
CMP             R2, R0
BCS             loc_125A30
LDR             R3, =0xF024A
ADD             R1, R2, #8
STR             R3, [R2,#4]
STR             R5, [R2]
STR             R1, [R7]
LDR             R3, [R7]
LDR             R0, [R8]
CMP             R3, R0
BCS             loc_125A54
LDR             R2, =0x5025E
ADD             R1, R3, #8
STR             R2, [R3,#4]
STR             R5, [R3]
STR             R1, [R7]
MOV             R1, #7
MOV             R2, #0
ADD             R0, R1, #0xFA
BL              sub_137800
LDR             R0, [R8]
LDR             R1, [R7]
CMP             R1, R0
BCS             loc_125A8C
LDR             R2, =0xF011F
LDR             R12, =0x10140
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R12, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125AB4
LDR             R12, =0xE40100
ADD             R3, R1, #8
SUB             R2, R12, #0xD50000
STR             R2, [R1,#4]
STR             R12, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125ADC
LDR             R2, =0xF0101
LDR             R12, =0x1010000
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R12, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125B04
LDR             R2, =0xF0107
MOV             R12, #0x1F40
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R12, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125B2C
LDR             R2, =0xF0105
LDR             R12, =0xFF00FF10
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R12, [R1]
STR             R3, [R7]
LDR             R0, [R8]
LDR             R1, [R7]
MOV             R4, #3
CMP             R1, R0
BCS             loc_125B54
LDR             R2, =0x10061
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R4, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125B78
LDR             R2, =0x10062
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R5, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125B9C
LDR             R2, =0xF0065
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R5, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125BC0
LDR             R2, =0xF0066
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R5, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125BE4
LDR             R2, =0xF0067
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R5, [R1]
STR             R3, [R7]
LDR             R0, [R7]
LDR             R1, [R8]
CMP             R0, R1
BCS             loc_125C08
LDR             R2, =0x10118
ADD             R3, R0, #8
STR             R2, [R0,#4]
STR             R5, [R0]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125C2C
LDR             R2, =0xF011B
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R5, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125C54
LDR             R2, =0x7006A
MOV             R12, #0xFFFFFF
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R12, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125C78
LDR             R2, =0xF0102
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R4, [R1]
STR             R3, [R7]
LDR             R0, [R7]
LDR             R1, [R8]
CMP             R0, R1
BCS             loc_125CA0
LDR             R2, =0x80126
MOV             R12, #0x3000000
ADD             R3, R0, #8
STR             R2, [R0,#4]
STR             R12, [R0]
STR             R3, [R7]
MOV             R2, #0
MOV             R1, #0x10
MOV             R0, #0x40 ; '@'
BL              sub_137800
LDR             R2, =0x1F1F1F1F
MOV             R1, #7
MOV             R0, #0x50 ; 'P'
BL              sub_137800
LDR             R0, [R8]
LDR             R1, [R7]
CMP             R1, R0
BCS             loc_125CE8
LDR             R2, =0xF0058
MOV             R12, #0x100
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R12, [R1]
STR             R3, [R7]
LDR             R0, [R7]
LDR             R1, [R8]
CMP             R0, R1
BCS             loc_125D0C
LDR             R3, =0xF004C
ADD             R2, R0, #8
STR             R3, [R0,#4]
STR             R9, [R0]
STR             R2, [R7]
LDR             R0, [R7]
LDR             R1, [R8]
CMP             R0, R1
BCS             loc_125D30
LDR             R3, =0xF006F
ADD             R2, R0, #8
STR             R3, [R0,#4]
STR             R5, [R0]
STR             R2, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125D54
LDR             R3, =0x20060
ADD             R2, R1, #8
STR             R3, [R1,#4]
STR             R5, [R1]
STR             R2, [R7]
LDR             R0, [R7]
LDR             R1, [R8]
CMP             R0, R1
BCS             loc_125D7C
LDR             R2, =0xC0069
MOV             R12, #0x20000
ADD             R3, R0, #8
STR             R2, [R0,#4]
STR             R12, [R0]
STR             R3, [R7]
LDR             R0, [R8]
LDR             R1, [R7]
MOV             R2, #0xF
CMP             R1, R0
BCS             loc_125DA0
LDR             R3, =0xF0113
ADD             R12, R1, #8
STRD            R2, R3, [R1]
STR             R12, [R7]
LDR             R0, [R7]
LDR             R1, [R8]
CMP             R0, R1
BCS             loc_125DC0
LDR             R12, =0xF0112
ADD             R3, R0, #8
STM             R0, {R2,R12}
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125DE4
LDR             R3, =0xF0114
ADD             R2, R1, #8
STR             R3, [R1,#4]
STR             R4, [R1]
STR             R2, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125E08
LDR             R2, =0xF0115
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R4, [R1]
STR             R3, [R7]
LDR             R11, =0xF01C5
MOV             R6, #0
LDR             R0, [R8]
LDR             R1, [R7]
CMP             R1, R0
BCS             loc_125E30
MOV             R3, R6,LSL#8
STM             R1, {R3,R11}
ADD             R2, R1, #8
STR             R2, [R7]
MOV             R4, #0
MOV             R2, #0
MOV             R1, #8
MOV             R0, #0x1C8
BL              sub_137800
ADD             R4, R4, #8
CMP             R4, #0x100
BLT             loc_125E34
ADD             R6, R6, #1
CMP             R6, #7
BLT             loc_125E10
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_125E80
LDR             R2, =0xF0290
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R10, [R1]
STR             R3, [R7]
LDR             R6, =0x291
MOV             R4, #0
MOV             R2, #0
MOV             R1, #8
MOV             R0, R6
BL              sub_137800
ADD             R4, R4, #2
CMP             R4, #0x60 ; '`'
BLT             loc_125E88
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R4, #0
BEQ             loc_125ED0
MOV             R3, #0x4000
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOV             R4, R0
MOV             R1, #0x4000
MOV             R0, R4
BL              sub_2FFE8C
LDR             R0, [R8]
LDR             R1, [R7]
CMP             R1, R0
BCS             loc_125F00
LDR             R2, =0xF02CB
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R5, [R1]
STR             R3, [R7]
MOV             R2, R4
MOV             R1, #0x200
MOV             R0, #0x2CC
BL              sub_1378C8
LDR             R1, [R8]
LDR             R0, [R7]
CMP             R0, R1
BCS             loc_125F38
LDR             R2, =0xF029B
MOV             R12, #0x200
ADD             R3, R0, #8
STR             R2, [R0,#4]
STR             R12, [R0]
STR             R3, [R7]
MOV             R2, R4
MOV             R1, #0xE00
MOV             R0, #0x29C
BL              sub_1378C8
LDR             R0, [R8]
LDR             R1, [R7]
CMP             R1, R0
BCS             loc_125F6C
LDR             R2, =0xF02BF
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R5, [R1]
STR             R3, [R7]
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_125F90
MOV             R3, R4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOV             R1, #0
LDR             R2, [R8]
LDR             R0, [R7]
CMP             R0, R2
BCS             loc_125FC0
ADD             R3, R1, #0x200
ADD             R3, R3, #0xB1
ORR             R3, R3, #0xF0000
STR             R3, [R0,#4]
ADD             R12, R0, #8
STR             R5, [R0]
STR             R12, [R7]
ADD             R1, R1, #1
CMP             R1, #4
BLT             loc_125F94
MOV             R2, #0xFFFFFFFF
MOV             R1, #2
ADD             R0, R2, #0x28C
BL              sub_137800
LDR             R0, =0x205
MOV             R2, #0
MOV             R1, #0x24 ; '$'
BL              sub_137800
LDR             R0, [R8]
LDR             R1, [R7]
CMP             R1, R0
BCS             loc_126010
LDR             R2, =0xF01D4
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R9, [R1]
STR             R3, [R7]
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_126038
LDR             R3, =0xF00AE
LDR             R12, =0xFEFCF8F0
ADD             R2, R1, #8
STR             R3, [R1,#4]
STR             R12, [R1]
STR             R2, [R7]
LDR             R1, =dword_6D45E4
LDR             R12, =unk_70D010
MOV             R0, #0
LDR             R1, [R1,#(dword_6D45EC - 0x6D45E4)]
ADD             R2, R1, R0
ADD             R2, R2, #0x1600
ADD             R2, R2, #0xB1
LDRB            R3, [R2]
CMP             R3, #0
BEQ             loc_1260A0
LDR             R3, [R8]
LDR             R4, [R7]
CMP             R3, R4
BLS             loc_1260A0
ADD             R5, R1, R0,LSL#2
ADD             R5, R5, #0x1000
ADD             R3, R4, #4
LDR             R6, [R5,#0x300]
ADD             R5, R4, #8
STR             R6, [R4]
STR             R3, [R7]
LDRB            R2, [R2]
LDR             R4, [R12,R0,LSL#2]
ORR             R2, R4, R2,LSL#16
STR             R2, [R3]
STR             R5, [R7]
ADD             R0, R0, #1
CMP             R0, #0xBD
BLT             loc_126048
POP             {R4-R12,PC}
