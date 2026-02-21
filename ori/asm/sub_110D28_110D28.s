PUSH            {R4-R11,LR}
ADD             R5, R0, #0x13000
ADD             R5, R5, #0x6D0
ADD             R9, R0, #0x10000
MOV             R4, R0
MOV             R6, R1
VPUSH           {D8}
SUB             SP, SP, #0x2C
LDR             R2, [R5]
ADD             R9, R9, #0x3700
TST             R2, #0x2000000
BEQ             loc_110D94
ADD             R1, R4, #0x13400
ADD             R1, R1, #0x2C8
LDRB            R0, [R1,#2]
CMP             R0, #0xFF
LDRBNE          R1, [R1,#3]
CMPNE           R1, #0xFF
BEQ             loc_110D94
LDR             R12, [R4,#0x2A0]
LDRSB           R1, [R9,#0xB8]
MOV             R3, #1
BIC             R3, R12, R3,LSL R0
ORR             R0, R3, R1,LSL R0
STR             R0, [R4,#0x2A0]
ORR             R0, R2, #4
STR             R0, [R5]
LDR             R0, =0x137C4
LDR             R10, =0xF0280
LDR             R7, [R0,R4]
ADD             R11, R10, #0x30 ; '0'
CMP             R7, #0
BEQ             loc_110F1C
LDR             R0, [R5]
TST             R0, #1
BEQ             loc_110E58
LDRB            R8, [R4,#0x29C]
LDR             R1, [R7,#0xC]
LDR             R2, [R7,#4]
MOV             R0, R6
BL              sub_1273D0
LDR             R0, [R7,#4]
LDRB            R1, [R7]
BIC             R0, R0, #3
CMP             R1, R8
ADD             R6, R6, R0
BEQ             loc_110E4C
CMP             R8, #1
BEQ             loc_110E00
CMP             R8, #2
BEQ             loc_110E1C
CMP             R8, #3
BEQ             loc_110E38
B               loc_110E4C
LDR             R1, =unk_65806C
MOV             R2, #0x18
MOV             R0, R6
BL              sub_1273D0
ADD             R6, R6, #0x18
NOP
B               loc_110E4C
LDR             R1, =unk_658084
MOV             R2, #0x18
MOV             R0, R6
BL              sub_1273D0
ADD             R6, R6, #0x18
NOP
B               loc_110E4C
LDR             R1, =unk_65809C
MOV             R2, #0x18
MOV             R0, R6
BL              sub_1273D0
ADD             R6, R6, #0x18
LDR             R0, [R5]
BIC             R0, R0, #3
B               loc_110ED8
TST             R0, #2
LDREQ           R0, [R5]
BEQ             loc_110EDC
LDRB            R0, [R4,#0x29C]
CMP             R0, #1
BEQ             loc_110E84
CMP             R0, #2
BEQ             loc_110EA0
CMP             R0, #3
BNE             loc_110ED0
B               loc_110EBC
LDR             R1, =unk_65806C
MOV             R2, #0x18
MOV             R0, R6
BL              sub_1273D0
ADD             R6, R6, #0x18
NOP
B               loc_110ED0
LDR             R1, =unk_658084
MOV             R2, #0x18
MOV             R0, R6
BL              sub_1273D0
ADD             R6, R6, #0x18
NOP
B               loc_110ED0
LDR             R1, =unk_65809C
MOV             R2, #0x18
MOV             R0, R6
BL              sub_1273D0
ADD             R6, R6, #0x18
LDR             R0, [R5]
BIC             R0, R0, #2
STR             R0, [R5]
TST             R0, #4
BEQ             loc_110F1C
LDR             R0, [R4,#8]
CMP             R0, #0
BLT             loc_110F00
LDR             R0, [R4,#0x2A4]
ORR             R0, R0, #0x7F000000
ORR             R0, R0, #0xFF0000
STM             R6!, {R0,R10}
LDR             R0, [R4,#0x2A0]
ORR             R0, R0, #0x7F000000
ORR             R0, R0, #0xFF0000
STM             R6!, {R0,R11}
LDR             R0, [R5]
BIC             R0, R0, #4
STR             R0, [R5]
LDR             R0, [R5]
MOV             R1, #7
MOV             R8, #0
BICS            R1, R1, R0
BEQ             loc_111494
TST             R0, #7
BEQ             loc_111104
TST             R0, #2
BEQ             loc_110F50
MOV             R1, R6
ADD             R0, R4, #4
BL              sub_118330
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #1
BEQ             loc_1110CC
LDR             R0, [R4,#8]
CMP             R0, #0
BLT             loc_110FF0
MOV             R1, R6
ADD             R0, R4, #4
BL              sub_11E680
LDR             R1, =0xF02A5
STR             R8, [R0],#4
ADD             R12, R4, #4
STR             R1, [R0],#4
MOV             R1, R0
LDR             R0, [R4,#0x298]
LDR             R2, =0x2A6
ADD             R3, R4, #0x98
STR             R0, [SP,#0x58+var_58]
MOV             R0, R12
BL              sub_11E478
MOV             R7, R0
LDR             R0, [R4,#8]
LDR             R1, =0x125
ADD             R6, R4, #4
ADD             R2, R6, R0,LSL#2
MUL             R0, R0, R1
ADD             R2, R2, #0x12800
ADD             R2, R2, #0x68 ; 'h'
LDR             R1, [R2]
ADD             R0, R6, R0,LSL#3
MOV             R2, R1,LSL#2
ADD             R1, R0, #0x368
MOV             R0, R7
BL              sub_127EB8
LDR             R0, [R6,#4]
ADD             R0, R6, R0,LSL#2
ADD             R0, R0, #0x12800
ADD             R0, R0, #0x68 ; 'h'
LDR             R1, [R0]
ADD             R6, R7, R1,LSL#2
MOV             R1, R6
ADD             R0, R4, #4
BL              sub_11E6C4
LDR             R1, =0xF02D5
STR             R8, [R0],#4
ADD             R12, R4, #4
STR             R1, [R0],#4
MOV             R1, R0
LDR             R0, [R4,#0x298]
LDR             R2, =0x2D6
ADD             R3, R4, #0x98
STR             R0, [SP,#0x58+var_58]
MOV             R0, R12
BL              sub_11E478
MOV             R7, R0
LDR             R0, [R4,#4]
LDR             R1, =0x125
ADD             R6, R4, #4
ADD             R2, R6, R0,LSL#2
MUL             R0, R0, R1
ADD             R2, R2, #0x12800
ADD             R2, R2, #0x68 ; 'h'
LDR             R1, [R2]
ADD             R0, R6, R0,LSL#3
MOV             R2, R1,LSL#2
ADD             R1, R0, #0x368
MOV             R0, R7
BL              sub_127EB8
LDR             R0, [R6]
ADD             R0, R6, R0,LSL#2
ADD             R0, R0, #0x12800
ADD             R0, R0, #0x68 ; 'h'
ADD             R6, R4, #4
LDR             R1, [R0]
MOV             R0, #0x100
ADD             R7, R7, R1,LSL#2
LDRB            R1, [R4,#0x29C]
CMP             R1, #3
LDR             R1, =0x20229
MOVNE           R0, #0
STR             R0, [R7],#4
MOV             R0, #0x100
STR             R1, [R7],#4
LDRB            R1, [R6,#0x298]
CMP             R1, #3
LDR             R1, =0x20253
MOVNE           R0, #0
STRD            R0, R1, [R7],#8
LDR             R0, [R6,#0x364]
ADD             R1, R6, #0x2A4
MOV             R2, R0,LSL#2
MOV             R0, R7
BL              sub_127EB8
LDR             R0, [R6,#0x364]
ADD             R6, R7, R0,LSL#2
LDR             R0, [R5]
TST             R0, #4
BEQ             loc_111104
LDR             R0, [R4,#8]
CMP             R0, #0
BLT             loc_1110F4
LDR             R0, [R4,#0x2A4]
ORR             R0, R0, #0x7F000000
ORR             R0, R0, #0xFF0000
STM             R6!, {R0,R10}
LDR             R0, [R4,#0x2A0]
ORR             R0, R0, #0x7F000000
ORR             R0, R0, #0xFF0000
STM             R6!, {R0,R11}
LDR             R0, [R5]
TST             R0, #8
BEQ             loc_111124
ADD             R0, R4, #0x12800
MOV             R1, R6
ADD             R0, R0, #0xEC
BL              sub_12CA78
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x10
BEQ             loc_111144
ADD             R0, R4, #0x12800
MOV             R1, R6
ADD             R0, R0, #0xFC
BL              sub_11E7B0
MOV             R6, R0
LDR             R1, [R5]
ADD             R2, R4, #0x12000
ADD             R2, R2, #0x950
STR             R2, [SP,#0x58+var_38]
ADD             R2, R4, #0x12800
MVN             R3, R1
ADD             R2, R2, #0x16C
STR             R2, [SP,#0x58+var_34]
MOV             R2, R3,LSL#19
ADD             R3, R4, #0x12800
ADD             R3, R3, #0x17C
STR             R3, [SP,#0x58+var_50]
ADD             R3, R4, #0x12800
ADD             R0, R4, #0x12800
ADD             R7, R4, #0x12800
ADD             R10, R4, #0x12800
ADD             R11, R4, #0x12800
ADD             R3, R3, #0x194
MOVS            R2, R2,LSR#24
ADD             R0, R0, #0x174
ADD             R7, R7, #0x118
ADD             R10, R10, #0x128
ADD             R11, R11, #0x148
STR             R3, [SP,#0x58+var_58]
BEQ             loc_1114AC
TST             R1, #0x20
BEQ             loc_1111C0
MOV             R2, #0
MOV             R1, R6
BL              sub_11E064
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x40
BEQ             loc_1111E0
MOV             R2, #0
MOV             R1, R6
MOV             R0, R7
BL              sub_11DFA0
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x80
BEQ             loc_111200
MOV             R2, #0
MOV             R1, R6
MOV             R0, R10
BL              sub_11E0E4
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x100
BEQ             loc_111220
MOV             R2, #0
MOV             R1, R6
MOV             R0, R11
BL              sub_11E370
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x200
BEQ             loc_111240
LDR             R0, [SP,#0x58+var_38]
MOV             R2, #0
MOV             R1, R6
BL              sub_11DF18
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x400
BEQ             loc_111260
LDR             R0, [SP,#0x58+var_34]
MOV             R2, #0
MOV             R1, R6
BL              sub_11E3C8
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x800
BEQ             loc_11127C
LDR             R0, [SP,#0x58+var_50]
MOV             R1, R6
BL              sub_11E150
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x1000
BEQ             loc_11129C
LDR             R0, [SP,#0x58+var_58]
MOV             R2, #1
MOV             R1, R6
BL              sub_125580
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x2000
BEQ             loc_1112B8
MOV             R1, #1
MOV             R0, R6
BL              sub_1177A0
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x4000
BEQ             loc_1112D8
ADD             R0, R4, #0x12800
MOV             R1, R6
ADD             R0, R0, #0x348
BL              sub_11EE8C
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x8000
BEQ             loc_111348
ADD             R0, R4, #0x12800
ADD             R0, R0, #0x3DC
LDRB            R1, [R0]
LDRB            R2, [R0,#1]
CMP             R1, #0
MOVNE           R1, #5
CMP             R2, #0
MOVNE           R2, #1
ORR             R1, R1, R2,LSL#16
LDR             R2, =0x500E0
STR             R1, [R6],#4
LDR             R1, =0xF00E1
STR             R2, [R6],#4
LDR             R2, [R0,#2]
BIC             R2, R2, #0xFF000000
STR             R2, [R6],#4
STR             R1, [R6],#4
LDRB            R1, [R0]
CMP             R1, #0
BEQ             loc_111348
ADD             R1, R0, #8
MOV             R2, #0x210
MOV             R0, R6
BL              sub_127EB8
ADD             R6, R6, #0x210
LDR             R0, [R5]
TST             R0, #0xF0000
BEQ             loc_111408
ADD             R0, R4, #0x12C00
ADD             R0, R0, #0x1F4
MOV             R2, #1
MOV             R1, R6
MOV             R7, R0
BL              sub_1256B0
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x10000
BEQ             loc_1113A0
LDR             R0, =0x12E10
LDRB            R0, [R0,R4]
CMP             R0, #5
BEQ             loc_1113A0
MOV             R2, #0
MOV             R1, R6
MOV             R0, R7
BL              sub_11E860
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x20000
BEQ             loc_1113D4
LDR             R0, =0x12E4C
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_1113D4
ADD             R0, R4, #0x12000
MOV             R2, #0
MOV             R1, R6
ADD             R0, R0, #0xE30
BL              sub_11EAFC
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x40000
BEQ             loc_111408
LDR             R0, =0x12E70
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_111408
ADD             R0, R4, #0x12C00
MOV             R2, #0
MOV             R1, R6
ADD             R0, R0, #0x254
BL              sub_11ECC4
MOV             R6, R0
LDR             R0, [R5]
TST             R0, #0x100000
BEQ             loc_111564
LDR             R0, =0xF0201
STR             R8, [R6],#4
MOV             R1, #0x98
STR             R0, [R6],#4
ADD             R0, R0, #1
STR             R8, [R6],#4
STR             R0, [R6],#4
MOV             R0, R6
BL              sub_2FFE8C
LDR             R0, =0x823F0203
LDR             R12, =0x803F0232
ADD             R3, R6, #0x98
STR             R0, [R6,#4]
MOV             R1, #0
MOV             R2, #0xC
MOV             R0, R3
SUBS            R2, R2, #1
STR             R8, [R0,#8]
STR             R8, [R0,#0xC]
STR             R8, [R0,#0x10]
STR             R8, [R0,#0x14]
STM             R0, {R1,R12}
ADD             R0, R0, #0x18
ADD             R1, R1, #1
BNE             loc_111454
ADD             R6, R4, #0x12C00
ADD             R6, R6, #0x29C
ADD             R7, R3, #0x120
LDR             R0, [R6]
CMP             R0, #0
BNE             loc_11154C
B               loc_111530
MOV             R1, R6
ADD             R0, R4, #4
BL              sub_113C48
MOV             R6, R0
NOP
B               loc_111104
MOV             R2, #0
MOV             R1, R6
BL              sub_11E064
MOV             R1, R0
MOV             R2, #0
MOV             R0, R7
BL              sub_11DFA0
MOV             R1, R0
MOV             R2, #0
MOV             R0, R10
BL              sub_11E0E4
MOV             R1, R0
MOV             R2, #0
MOV             R0, R11
BL              sub_11E370
MOV             R1, R0
LDR             R0, [SP,#0x58+var_38]
MOV             R2, #0
BL              sub_11DF18
MOV             R1, R0
LDR             R0, [SP,#0x58+var_34]
MOV             R2, #0
BL              sub_11E3C8
MOV             R1, R0
LDR             R0, [SP,#0x58+var_50]
BL              sub_11E150
MOV             R1, R0
LDR             R0, [SP,#0x58+var_58]
MOV             R2, #1
BL              sub_125580
MOV             R6, R0
NOP
B               loc_11129C
ADD             R1, R6, #4
MOV             R0, R6
BL              sub_113E84
SUB             R0, R0, R6
SUB             R0, R0, #4
MOV             R0, R0,ASR#2
STR             R0, [R6]
MOV             R2, R0,LSL#2
ADD             R1, R6, #4
MOV             R0, R7
BL              sub_127EB8
LDR             R0, [R6]
ADD             R6, R7, R0,LSL#2
LDR             R0, [R5]
TST             R0, #0x200000
LDREQ           R0, [R5]
BEQ             loc_11159C
ADD             R0, R4, #0x13400
MOV             R3, #1
MOV             R2, #7
MOV             R1, R6
ADD             R0, R0, #0x22C
BL              sub_11DE0C
MOV             R6, R0
LDR             R0, [R5]
BIC             R0, R0, #0x200000
STR             R0, [R5]
TST             R0, #0x400000
LDREQ           R0, [R5]
BEQ             loc_111608
ADD             R2, R4, #0x13400
ADD             R2, R2, #0x274
LDR             R1, =0x10062
LDRB            R3, [R2]
LDR             R0, =0xF0118
CMP             R3, #0
BEQ             loc_1115EC
LDRB            R12, [R2,#1]
EOR             R3, R1, R0,ASR#18
MOV             R2, #1
STR             R12, [R6],#4
STR             R3, [R6],#4
STR             R2, [R6],#4
STR             R1, [R6],#4
STR             R2, [R6],#4
STR             R0, [R6],#4
B               loc_1115FC
STR             R8, [R6],#4
STR             R1, [R6],#4
STR             R8, [R6],#4
STR             R0, [R6],#4
LDR             R0, [R5]
BIC             R0, R0, #0x400000
STR             R0, [R5]
LDR             R10, =0xF02C0
TST             R0, #0x80000000
BEQ             loc_111650
ADD             R1, R4, #0x13000
ADD             R1, R1, #0x690
LDRB            R0, [R1,#2]
CMP             R0, #0xFF
LDRBNE          R1, [R1,#3]
CMPNE           R1, #0xFF
BEQ             loc_111650
ORR             R0, R0, #0x80000000
ADD             R1, R4, #0x13400
STM             R6!, {R0,R10}
ADD             R1, R1, #0x2D8
LDR             R2, =0xFF02C1
MOV             R0, R6
BL              sub_127384
ADD             R6, R6, #0x48 ; 'H'
LDR             R0, [R5]
LDR             R7, =0xBF02C1
TST             R0, #0x40000000
BEQ             loc_11169C
ADD             R1, R4, #0x13400
ADD             R1, R1, #0x298
LDRB            R0, [R1,#2]
CMP             R0, #0xFF
LDRBNE          R1, [R1,#3]
CMPNE           R1, #0xFF
BEQ             loc_11169C
ORR             R0, R0, #0x80000000
ADD             R1, R4, #0x13400
STM             R6!, {R0,R10}
ADD             R1, R1, #0x318
MOV             R2, R7
MOV             R0, R6
BL              sub_127348
ADD             R6, R6, #0x38 ; '8'
LDR             R0, [R5]
TST             R0, #0x20000000
BEQ             loc_1116E4
ADD             R1, R4, #0x13000
ADD             R1, R1, #0x6A0
LDRB            R0, [R1,#2]
CMP             R0, #0xFF
LDRBNE          R1, [R1,#3]
CMPNE           R1, #0xFF
BEQ             loc_1116E4
ORR             R0, R0, #0x80000000
ADD             R1, R4, #0x13400
STM             R6!, {R0,R10}
ADD             R1, R1, #0x348
MOV             R2, R7
MOV             R0, R6
BL              sub_127348
ADD             R6, R6, #0x38 ; '8'
LDR             R0, [R5]
LDR             R11, =0x7F02C1
TST             R0, #0x10000000
BEQ             loc_111774
ADD             R1, R4, #0x13400
ADD             R1, R1, #0x2A8
LDRB            R0, [R1,#2]
CMP             R0, #0xFF
LDRBNE          R1, [R1,#3]
CMPNE           R1, #0xFF
BEQ             loc_111774
ADD             R1, R4, #0x13400
ORR             R0, R0, #0x80000000
ADD             R1, R1, #0x378
STM             R6!, {R0,R10}
LDR             R0, [R1,#0xC]
STM             R6!, {R0,R11}
LDR             R0, [R1,#8]
STR             R0, [R6],#4
LDR             R0, [R1,#4]
STR             R0, [R6],#4
LDR             R0, [R1],#0x10
STR             R0, [R6],#4
LDR             R0, =0x13794
SUB             R2, R0, #4
SUB             R3, R0, #8
LDR             R0, [R0,R4]
STR             R0, [R6]
LDR             R0, [R2,R4]
STR             R0, [R6,#4]
LDR             R0, [R3,R4]
STR             R0, [R6,#8]
LDR             R0, [R1]
STR             R0, [R6,#0xC]!
STR             R8, [R6,#4]!
ADD             R6, R6, #4
LDRB            R0, [R9,#0xB8]
CMP             R0, #0
BNE             loc_111888
LDR             R0, [R5]
TST             R0, #0x4000000
BEQ             loc_1117F8
ADD             R0, R4, #0x13400
ADD             R0, R0, #0x2B8
LDRB            R1, [R0,#2]
CMP             R1, #0xFF
LDRBNE          R0, [R0,#3]
CMPNE           R0, #0xFF
BEQ             loc_1117F8
LDR             R0, =0x137BC
VLDR            S16, =0.0
ADD             R7, R4, #0x13400
LDR             R0, [R0,R4]
CMP             R0, #0
VMOVEQ.F32      S0, S16
VLDRNE          S0, [R7,#0x374]
BLNE            sub_12CC18
LDR             R0, =0x136BA
VLDR            S1, [R7,#0x3C0]
LDRB            R1, [R4,R0]
LDR             R0, =0x804F02C0
VMUL.F32        S0, S1, S0
ORR             R1, R1, #0x80000000
STR             R1, [R6],#4
STR             R0, [R6],#4
VSTM            R6!, {S16}
VSTM            R6!, {S16}
VSTM            R6!, {S16}
VSTM            R6!, {S0}
LDR             R0, [R5]
TST             R0, #0x8000000
BEQ             loc_111888
ADD             R0, R4, #0x13000
ADD             R0, R0, #0x6B0
LDRB            R1, [R0,#2]
CMP             R1, #0xFF
LDRBNE          R0, [R0,#3]
CMPNE           R0, #0xFF
BEQ             loc_111888
ADD             R0, R4, #0x13400
ORR             R1, R1, #0x80000000
ADD             R0, R0, #0x398
STM             R6!, {R1,R10}
LDR             R1, [R0,#0xC]
LDR             R12, =0x137B4
STM             R6!, {R1,R11}
SUB             R3, R12, #4
LDR             R1, [R0,#8]
SUB             R2, R3, #4
STR             R1, [R6],#4
LDR             R1, [R0,#4]
STR             R1, [R6],#4
LDR             R1, [R0]
STR             R1, [R6],#4
LDR             R0, [R12,R4]
SUB             R1, R2, #4
STR             R0, [R6]
LDR             R0, [R3,R4]
STR             R0, [R6,#4]
LDR             R0, [R2,R4]
STR             R0, [R6,#8]
LDR             R0, [R1,R4]
STR             R0, [R6,#0xC]!
STR             R8, [R6,#4]!
ADD             R6, R6, #4
LDR             R0, [R5]
AND             R0, R0, #0x1E00000
STR             R0, [R5]
ADD             SP, SP, #0x2C ; ','
MOV             R0, R6
VPOP            {D8}
POP             {R4-R11,PC}
