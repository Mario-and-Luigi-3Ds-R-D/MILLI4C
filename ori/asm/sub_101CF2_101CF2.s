PUSH            {R0-R7,LR}
SUB             SP, SP, #0x54
MOVS            R0, #0
MOVS            R5, #0
STR             R0, [SP,#0x78+var_48]
LDR             R6, [R3,#8]
LDR             R4, [R3,#4]
MOVS            R7, R3
MVNS            R5, R5
STR             R0, [SP,#0x78+var_2C]
BLX             sub_2FEF5C
LDR             R0, [R0,#0xC]
LDR             R1, [R0]
LDRB            R0, [R0,R1]
STR             R0, [SP,#0x78+var_28]
LDR             R1, [R7,#0x18]
LDR             R0, [SP,#0x78+var_20]
ADDS            R5, R5, #1
BLX             R1
STR             R0, [SP,#0x78+var_50]
LDR             R1, [R7,#0x20]
BLX             R1
CMP             R0, #0
BNE             loc_101D12
LDR             R0, [SP,#0x78+var_50]
ADDS            R0, R0, #1
BEQ             loc_101D40
MOVS            R0, #0x680
BICS            R4, R0
CMP             R6, #0
BLE             loc_101D5A
LDR             R0, [SP,#0x78+var_50]
CMP             R0, #0x2B ; '+'
BEQ             loc_101D4E
CMP             R0, #0x2D ; '-'
BNE             loc_101D5A
B               loc_101D48
MOVS            R0, #0
MVNS            R0, R0
ADD             SP, SP, #0x64 ; 'd'
POP             {R4-R7,PC}
MOVS            R0, #0x400
ORRS            R4, R0
LDR             R1, [R7,#0x18]
LDR             R0, [SP,#0x78+var_20]
ADDS            R5, R5, #1
BLX             R1
SUBS            R6, R6, #1
STR             R0, [SP,#0x78+var_50]
LSLS            R0, R4, #0x15
ADD             R1, SP, #0x78+var_68
BPL             loc_101D64
MOVS            R0, #0x2D ; '-'
B               loc_101D66
MOVS            R0, #0x2B ; '+'
MOV             R2, SP
ADDS            R1, R1, #1
STRB            R0, [R2,#0x78+var_68]
ADD             R0, SP, #0x78+var_38
CMP             R6, #0
STR             R1, [SP,#0x78+var_44]
STR             R0, [SP,#0x78+var_4C]
BLE             loc_101DEE
LDR             R0, [SP,#0x78+var_50]
CMP             R0, #0x69 ; 'i'
BEQ             loc_101D88
CMP             R0, #0x49 ; 'I'
BEQ             loc_101D88
CMP             R0, #0x6E ; 'n'
BEQ             loc_101D88
CMP             R0, #0x4E ; 'N'
BNE             loc_101DC4
STR             R0, [SP,#0x78+var_6C]
MOVS            R0, #2
STR             R6, [SP,#0x78+var_70]
LDR             R2, [SP,#0x78+var_1C]
LDR             R1, [SP,#0x78+var_20]
MOVS            R3, R7
MVNS            R0, R0
STR             R5, [SP,#0x78+var_78]
STR             R4, [SP,#0x78+var_74]
BLX             sub_1025E0
ADDS            R1, R0, #3
BNE             loc_101D44
B               loc_101DC4
LDR             R1, [R7,#0x18]
LDR             R0, [SP,#0x78+var_20]
ADDS            R5, R5, #1
BLX             R1
STR             R0, [SP,#0x78+var_50]
MOVS            R0, #1
SUBS            R6, R6, #1
LSLS            R0, R0, #9
ORRS            R4, R0
LDR             R0, [SP,#0x78+var_1C]
STR             R5, [R0]
LDR             R0, [SP,#0x78+var_2C]
ADDS            R0, R0, #1
CMP             R6, #0
STR             R0, [SP,#0x78+var_2C]
BLE             loc_101DEE
LDR             R0, [SP,#0x78+var_50]
CMP             R0, #0x30 ; '0'
BEQ             loc_101DA4
CMP             R0, #0x78 ; 'x'
BEQ             loc_101DD2
CMP             R0, #0x58 ; 'X'
BNE             loc_101DEE
LDR             R0, [SP,#0x78+var_2C]
CMP             R0, #1
BNE             loc_101DEE
STR             R6, [SP,#0x78+var_70]
LDR             R2, [SP,#0x78+var_1C]
LDR             R1, [SP,#0x78+var_20]
MOVS            R3, R7
SUBS            R0, R0, #4
STR             R5, [SP,#0x78+var_78]
STR             R4, [SP,#0x78+var_74]
BLX             sub_1025DC
ADDS            R1, R0, #3
BNE             loc_101D44
LDR             R1, [SP,#0x78+var_28]
LDR             R0, [SP,#0x78+var_50]
CMP             R0, R1
BNE             loc_101E84
MOVS            R0, #0x80
ORRS            R4, R0
B               loc_101E0E
LDR             R0, [SP,#0x78+var_48]
LDR             R1, [SP,#0x78+var_1C]
SUBS            R0, R0, #1
STR             R0, [SP,#0x78+var_48]
MOVS            R0, #0x200
ORRS            R4, R0
ADDS            R0, R5, #1
STR             R0, [R1]
LDR             R1, [R7,#0x18]
SUBS            R6, R6, #1
LDR             R0, [SP,#0x78+var_20]
ADDS            R5, R5, #1
BLX             R1
CMP             R0, #0x30 ; '0'
STR             R0, [SP,#0x78+var_50]
BEQ             loc_101DFC
B               loc_101E84
LDR             R1, [SP,#0x78+var_28]
CMP             R0, R1
BNE             loc_101E32
LSLS            R0, R4, #0x18
BMI             loc_101E32
MOVS            R0, #0x80
ORRS            R4, R0
SUBS            R6, R6, #1
B               loc_101E70
LDR             R0, [SP,#0x78+var_50]
BL              sub_2FE3A8
CMP             R0, #0
BEQ             loc_101E8A
MOVS            R0, #1
ADD             R1, SP, #0x78+var_58
LSLS            R0, R0, #9
ORRS            R4, R0
LDR             R0, [SP,#0x78+var_44]
SUBS            R6, R6, #1
ADDS            R1, #3
CMP             R0, R1
BCS             loc_101E66
LDR             R0, [SP,#0x78+var_50]
LDR             R1, [SP,#0x78+var_44]
SUBS            R0, #0x30 ; '0'
STRB            R0, [R1]
LDR             R0, [SP,#0x78+var_44]
ADDS            R0, R0, #1
STR             R0, [SP,#0x78+var_44]
LSLS            R0, R4, #0x18
BPL             loc_101E70
LDR             R0, [SP,#0x78+var_48]
SUBS            R0, R0, #1
B               loc_101E6E
LSLS            R0, R4, #0x18
BMI             loc_101E70
LDR             R0, [SP,#0x78+var_48]
ADDS            R0, R0, #1
STR             R0, [SP,#0x78+var_48]
LSLS            R0, R4, #0x16
BPL             loc_101E7A
LDR             R1, [SP,#0x78+var_1C]
ADDS            R0, R5, #1
STR             R0, [R1]
LDR             R1, [R7,#0x18]
LDR             R0, [SP,#0x78+var_20]
ADDS            R5, R5, #1
BLX             R1
STR             R0, [SP,#0x78+var_50]
CMP             R6, #0
BGT             loc_101E20
B               loc_101F3E
CMP             R6, #0
BLE             loc_101F3E
LDR             R0, [SP,#0x78+var_50]
CMP             R0, #0x65 ; 'e'
BEQ             loc_101E98
CMP             R0, #0x45 ; 'E'
BNE             loc_101F3E
LSLS            R0, R4, #0x16
BPL             loc_101F3E
MOVS            R0, #3
LDR             R1, [R7,#0x18]
LSLS            R0, R0, #8
BICS            R4, R0
SUBS            R6, R6, #1
LDR             R0, [SP,#0x78+var_20]
ADDS            R5, R5, #1
BLX             R1
CMP             R6, #0
STR             R0, [SP,#0x78+var_50]
BLE             loc_101ECC
CMP             R0, #0x2B ; '+'
BEQ             loc_101EC0
CMP             R0, #0x2D ; '-'
BNE             loc_101ECC
MOVS            R0, #0x100
ORRS            R4, R0
LDR             R1, [R7,#0x18]
LDR             R0, [SP,#0x78+var_20]
ADDS            R5, R5, #1
BLX             R1
SUBS            R6, R6, #1
STR             R0, [SP,#0x78+var_50]
LSLS            R0, R4, #0x17
BPL             loc_101ED4
MOVS            R1, #0x2D ; '-'
B               loc_101ED6
MOVS            R1, #0x2B ; '+'
LDR             R0, [SP,#0x78+var_4C]
STRB            R1, [R0]
LDR             R0, [SP,#0x78+var_4C]
ADDS            R0, R0, #1
STR             R0, [SP,#0x78+var_4C]
STR             R0, [SP,#0x78+var_78]
B               loc_101F30
MOVS            R0, #1
ADD             R1, SP, #0x78+var_30
LSLS            R0, R0, #9
ORRS            R4, R0
LDR             R0, [SP,#0x78+var_4C]
SUBS            R6, R6, #1
ADDS            R1, #1
CMP             R0, R1
BCS             loc_101F14
LDR             R0, [SP,#0x78+var_50]
LDR             R1, [SP,#0x78+var_4C]
SUBS            R0, #0x30 ; '0'
LSLS            R0, R0, #0x18
LSRS            R0, R0, #0x18
STRB            R0, [R1]
BNE             loc_101F0C
LDR             R1, [SP,#0x78+var_78]
LDR             R0, [SP,#0x78+var_4C]
CMP             R0, R1
BLS             loc_101F22
LDR             R0, [SP,#0x78+var_4C]
ADDS            R0, R0, #1
STR             R0, [SP,#0x78+var_4C]
B               loc_101F22
LSLS            R0, R4, #0x17
BPL             loc_101F1C
LDR             R0, =0xFFFFD8F1
B               loc_101F20
LDR             R0, =0xFFFFD8F1
NEGS            R0, R0
STR             R0, [SP,#0x78+var_48]
LDR             R1, [R7,#0x18]
LDR             R0, [SP,#0x78+var_20]
ADDS            R5, R5, #1
BLX             R1
STR             R0, [SP,#0x78+var_50]
LDR             R0, [SP,#0x78+var_1C]
STR             R5, [R0]
CMP             R6, #0
BLE             loc_101F3E
LDR             R0, [SP,#0x78+var_50]
BL              sub_2FE3A8
CMP             R0, #0
BNE             loc_101EE4
LDR             R1, [R7,#0x1C]
LDR             R0, [SP,#0x78+var_20]
BLX             R1
LDR             R1, [SP,#0x78+var_44]
MOVS            R0, #0xFF
ADD             R2, SP, #0x78+var_68
STRB            R0, [R1]
LDR             R1, [SP,#0x78+var_4C]
STRB            R0, [R1]
MOVS            R0, #0
STR             R0, [SP,#0x78+var_40]
STR             R0, [SP,#0x78+var_3C]
LDR             R3, [SP,#0x78+var_48]
ADD             R1, SP, #0x78+var_38
ADD             R0, SP, #0x78+var_40
BL              sub_101AF4
LSLS            R0, R4, #0x16
BMI             loc_101F6A
MOVS            R0, #1
MVNS            R0, R0
B               loc_101D44
MOVS            R0, #0x24 ; '$'
TST             R4, R0
BEQ             loc_101F84
LSLS            R0, R4, #0x1F
BNE             loc_101F9C
LDR             R0, [R7]
LDR             R2, [SP,#0x78+var_3C]
LDR             R1, [SP,#0x78+var_40]
ADDS            R3, R0, #4
STR             R3, [R7]
LDR             R0, [R0]
STM             R0!, {R1,R2}
B               loc_101F9C
ADD             R1, SP, #0x78+var_40
MOV             R0, SP
BLX             sub_300910
LSLS            R0, R4, #0x1F
BNE             loc_101F9C
LDR             R0, [R7]
LDR             R2, [SP,#0x78+var_78]
ADDS            R1, R0, #4
STR             R1, [R7]
LDR             R0, [R0]
STR             R2, [R0]
MOVS            R0, R5
B               loc_101D44
