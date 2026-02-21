PUSH            {R0-R11,LR}
SUB             SP, SP, #0x7C
MOV             R4, R0
MOV             R6, R2
LDRH            R0, [R2]
LDR             R5, [SP,#0xB0+var_30]
STR             R4, [SP,#0xB0+var_9C]
CMP             R0, #0
BEQ             loc_132638
LDRH            R0, [R6]
CMP             R0, #0x25 ; '%'
BEQ             loc_131ADC
CMP             R5, #0
ADD             R6, R6, #2
BEQ             loc_1325D8
SUB             R5, R5, #1
STRH            R0, [R4]
B               loc_1325D8
MOV             R0, #0
MOV             R1, R6
MOV             R10, R0
MOV             R11, #0xFFFFFFFF
MOV             R3, #0xA
MOV             R2, #0x57 ; 'W'
STR             R0, [SP,#0xB0+var_70]
LDRH            R0, [R6,#2]!
CMP             R0, #0x20 ; ' '
LDREQ           R0, [SP,#0xB0+var_70]
ORREQ           R0, R0, #1
BEQ             loc_131B9C
CMP             R0, #0x2B ; '+'
BEQ             loc_131B44
CMP             R0, #0x2D ; '-'
LDREQ           R0, [SP,#0xB0+var_70]
ORREQ           R0, R0, #8
BEQ             loc_131B9C
CMP             R0, #0x30 ; '0'
LDREQ           R0, [SP,#0xB0+var_70]
ORREQ           R0, R0, #0x10
BEQ             loc_131B9C
UXTH            R0, R0
CMP             R0, #0x2A ; '*'
BEQ             loc_131BA4
B               loc_131B58
LDRH            R0, [R6,#-2]
CMP             R0, #0x20 ; ' '
LDREQ           R0, [SP,#0xB0+var_70]
ORREQ           R0, R0, #2
BEQ             loc_131B9C
LDRH            R0, [R6]
SUB             R0, R0, #0x30 ; '0'
CMP             R0, #9
MOVLS           R0, #0xFFFFFFD0
BHI             loc_131B8C
LDRH            R12, [R6]
ADD             LR, R10, R10,LSL#2
LDRH            R7, [R6,#2]!
ADD             R8, R0, LR,LSL#1
ADD             R10, R12, R8
SUB             LR, R7, #0x30 ; '0'
CMP             LR, #9
BLS             loc_131B6C
LDRH            R0, [R6]
CMP             R0, #0x2E ; '.'
BEQ             loc_131BD0
B               loc_131C10
STR             R0, [SP,#0xB0+var_70]
B               loc_131AF8
LDR             R0, [SP,#0xB0+var_28]
ADD             R6, R6, #2
LDR             R10, [R0],#4
STR             R0, [SP,#0xB0+var_28]
CMP             R10, #0
BGE             loc_131B8C
LDR             R0, [SP,#0xB0+var_70]
RSB             R10, R10, #0
ORR             R0, R0, #8
STR             R0, [SP,#0xB0+var_70]
B               loc_131B8C
LDRH            R0, [R6,#2]!
MOV             R11, #0
CMP             R0, #0x2A ; '*'
BEQ             loc_131C28
SUB             R0, R0, #0x30 ; '0'
CMP             R0, #9
MOVLS           R0, #0xFFFFFFD0
BHI             loc_131C10
LDRH            R12, [R6]
ADD             LR, R11, R11,LSL#2
LDRH            R7, [R6,#2]!
ADD             R8, R0, LR,LSL#1
ADD             R11, R12, R8
SUB             LR, R7, #0x30 ; '0'
CMP             LR, #9
BLS             loc_131BF0
LDRH            R0, [R6]
CMP             R0, #0x68 ; 'h'
BEQ             loc_131C44
CMP             R0, #0x6C ; 'l'
BNE             loc_131C60
B               loc_131C94
LDR             R0, [SP,#0xB0+var_28]
ADD             R6, R6, #2
LDR             R11, [R0],#4
STR             R0, [SP,#0xB0+var_28]
CMP             R11, #0
MOVLT           R11, #0xFFFFFFFF
B               loc_131C10
LDRH            R0, [R6,#2]!
CMP             R0, #0x68 ; 'h'
LDR             R0, [SP,#0xB0+var_70]
ADDEQ           R6, R6, #2
ORRNE           R0, R0, #0x40 ; '@'
ORREQ           R0, R0, #0x100
STR             R0, [SP,#0xB0+var_70]
LDRH            R0, [R6]
CMP             R0, #0x6E ; 'n'
BEQ             loc_132554
BGE             loc_131CC4
CMP             R0, #0x63 ; 'c'
BEQ             loc_132248
BGT             loc_131CB0
CMP             R0, #0x25 ; '%'
BEQ             loc_1325C0
CMP             R0, #0x58 ; 'X'
MOVEQ           R2, #0x37 ; '7'
BNE             loc_1325E0
B               loc_131CF8
LDRH            R0, [R6,#2]!
CMP             R0, #0x6C ; 'l'
LDR             R0, [SP,#0xB0+var_70]
ADDEQ           R6, R6, #2
ORRNE           R0, R0, #0x20 ; ' '
ORREQ           R0, R0, #0x80
B               loc_131C5C
CMP             R0, #0x64 ; 'd'
CMPNE           R0, #0x69 ; 'i'
BNE             loc_1325E0
LDR             R0, [SP,#0xB0+var_70]
B               loc_131D08
CMP             R0, #0x73 ; 's'
BEQ             loc_13237C
BGE             loc_131CE8
CMP             R0, #0x6F ; 'o'
MOVEQ           R3, #8
BEQ             loc_131CFC
CMP             R0, #0x70 ; 'p'
BNE             loc_1325E0
B               loc_132234
CMP             R0, #0x75 ; 'u'
BEQ             loc_131CFC
CMP             R0, #0x78 ; 'x'
BNE             loc_1325E0
MOV             R3, #0x10
LDR             R0, [SP,#0xB0+var_70]
ORR             R0, R0, #0x1000
STR             R0, [SP,#0xB0+var_70]
TST             R0, #8
MOV             R8, #0
BEQ             loc_131D20
LDR             R0, [SP,#0xB0+var_70]
BIC             R0, R0, #0x10
STR             R0, [SP,#0xB0+var_70]
LDR             R0, [SP,#0xB0+var_70]
CMP             R11, #0
MOVLT           R11, #1
BICGE           R0, R0, #0x10
STRGE           R0, [SP,#0xB0+var_70]
TST             R0, #0x1000
LDR             R0, [SP,#0xB0+var_70]
AND             R0, R0, #0x100
BEQ             loc_131E18
CMP             R0, #0
BEQ             loc_131D64
LDR             R0, [SP,#0xB0+var_28]
MOV             R1, #0
LDR             R12, [R0],#4
STR             R0, [SP,#0xB0+var_28]
AND             R9, R12, #0xFF
B               loc_131DB8
LDR             R0, [SP,#0xB0+var_70]
TST             R0, #0x40
BEQ             loc_131D88
LDR             R0, [SP,#0xB0+var_28]
MOV             R1, #0
LDR             R12, [R0],#4
STR             R0, [SP,#0xB0+var_28]
UXTH            R9, R12
B               loc_131DB8
LDR             R0, [SP,#0xB0+var_70]
TST             R0, #0x80
LDR             R0, [SP,#0xB0+var_28]
BEQ             loc_131DAC
ADD             R0, R0, #7
BIC             R0, R0, #7
LDR             R9, [R0],#4
LDR             R1, [R0],#4
B               loc_131DB4
LDR             R9, [R0],#4
MOV             R1, #0
STR             R0, [SP,#0xB0+var_28]
LDR             R0, [SP,#0xB0+var_70]
BIC             R0, R0, #3
TST             R0, #4
STR             R0, [SP,#0xB0+var_70]
BEQ             loc_131EF4
CMP             R3, #0x10
BEQ             loc_131DE0
CMP             R3, #8
BEQ             loc_131E04
B               loc_131EF4
ORRS            R0, R9, R1
BEQ             loc_131DFC
ADD             R0, R2, #0x21 ; '!'
MOV             R3, #0x30 ; '0'
STRH            R0, [SP,#0xB0+var_74]
MOV             R8, #2
STRH            R3, [SP,#0xB0+var_72]
MOV             R7, #0
B               loc_131FE0
MOV             R0, #0x30 ; '0'
MOV             R8, #1
MOV             R7, #0
STRH            R0, [SP,#0xB0+var_74]
B               loc_131F14
CMP             R0, #0
BEQ             loc_131E38
LDR             R0, [SP,#0xB0+var_28]
LDR             R1, [R0],#4
STR             R0, [SP,#0xB0+var_28]
SXTB            R9, R1
MOV             R1, R9,ASR#31
B               loc_131E8C
LDR             R0, [SP,#0xB0+var_70]
TST             R0, #0x40
BEQ             loc_131E58
LDR             R0, [SP,#0xB0+var_28]
LDR             R1, [R0],#4
STR             R0, [SP,#0xB0+var_28]
SXTH            R9, R1
B               loc_131E88
LDR             R0, [SP,#0xB0+var_70]
TST             R0, #0x80
LDR             R0, [SP,#0xB0+var_28]
BEQ             loc_131E80
ADD             R0, R0, #7
BIC             R0, R0, #7
LDR             R9, [R0],#4
LDR             R1, [R0],#4
STR             R0, [SP,#0xB0+var_28]
B               loc_131E8C
LDR             R9, [R0],#4
STR             R0, [SP,#0xB0+var_28]
MOV             R1, R9,ASR#31
TST             R1, #0x80000000
BEQ             loc_131EB4
MOV             R0, #0x2D ; '-'
MVN             R12, R9
STRH            R0, [SP,#0xB0+var_74]
ADDS            R9, R12, #1
MVN             R0, R1
MOV             R8, #1
ADC             R1, R0, #0
B               loc_131EF4
ORRS            R0, R9, R1
CMPEQ           R11, #0
BEQ             loc_131EF4
LDR             R0, [SP,#0xB0+var_70]
TST             R0, #2
BEQ             loc_131EDC
MOV             R0, #0x2B ; '+'
MOV             R8, #1
STRH            R0, [SP,#0xB0+var_74]
B               loc_131EF4
LDR             R0, [SP,#0xB0+var_70]
TST             R0, #1
BEQ             loc_131EF4
MOV             R0, #0x20 ; ' '
MOV             R8, #1
STRH            R0, [SP,#0xB0+var_74]
CMP             R3, #8
MOV             R7, #0
BEQ             loc_131F14
CMP             R3, #0xA
BEQ             loc_131F4C
CMP             R3, #0x10
BNE             loc_13201C
B               loc_131FE0
ORRS            R0, R9, R1
ADDNE           R0, SP, #0xB0+var_68
BEQ             loc_13201C
AND             R2, R9, #7
MOV             R3, R1,LSL#29
ORR             R9, R3, R9,LSR#3
ADD             R3, R0, R7,LSL#1
ADD             R2, R2, #0x30 ; '0'
MOV             R1, R1,LSR#3
STRH            R2, [R3]
ORRS            R2, R9, R1
ADD             R7, R7, #1
BNE             loc_131F20
B               loc_13201C
CMP             R1, #0
BEQ             loc_131FA0
ORRS            R0, R9, R1
BEQ             loc_13201C
MOV             R2, #0xA
MOV             R3, #0
MOV             R0, R9
BL              sub_127B3C
MOV             R3, R9
MOV             R2, #0xA
MOV             R9, R0
UMULL           R0, R2, R9, R2
SUBS            R0, R3, R0
ADD             R2, R0, #0x30 ; '0'
ADD             R0, SP, #0xB0+var_68
ADD             R0, R0, R7,LSL#1
ADD             R7, R7, #1
STRH            R2, [R0]
ORRS            R0, R9, R1
BNE             loc_131F5C
B               loc_13201C
CMP             R9, #0
LDRNE           R3, =0xCCCCCCCD
ADDNE           R12, SP, #0xB0+var_68
BEQ             loc_13201C
UMULL           R1, R0, R3, R9
ADD             R2, R12, R7,LSL#1
ADD             R7, R7, #1
MOV             R0, R0,LSR#3
RSB             R1, R0, #0
ADD             R1, R1, R1,LSL#2
ADD             R1, R9, R1,LSL#1
MOVS            R9, R0
ADD             R0, R1, #0x30 ; '0'
STRH            R0, [R2]
BNE             loc_131FB0
B               loc_13201C
ORRS            R0, R9, R1
ADDNE           R12, SP, #0xB0+var_68
BEQ             loc_13201C
AND             R0, R9, #0xF
MOV             R3, R1,LSL#28
CMP             R0, #0xA
ORR             R9, R3, R9,LSR#4
ADDLT           R0, R0, #0x30 ; '0'
ADD             R3, R12, R7,LSL#1
ADDGE           R0, R0, R2
MOV             R1, R1,LSR#4
STRH            R0, [R3]
ORRS            R0, R9, R1
ADD             R7, R7, #1
BNE             loc_131FEC
CMP             R8, #0
BLE             loc_132048
LDRH            R0, [SP,#0xB0+var_74]
CMP             R0, #0x30 ; '0'
BNE             loc_132048
ADD             R1, SP, #0xB0+var_68
ADD             R1, R1, R7,LSL#1
MOV             R0, #0x30 ; '0'
MOV             R8, #0
ADD             R7, R7, #1
STRH            R0, [R1]
LDR             R0, [SP,#0xB0+var_70]
SUB             R9, R11, R7
TST             R0, #0x10
BEQ             loc_132068
SUB             R0, R10, R7
SUB             R0, R0, R8
CMP             R0, R9
MOVGT           R9, R0
LDR             R0, [SP,#0xB0+var_70]
CMP             R9, #0
SUBGT           R10, R10, R9
ADD             R1, R8, R7
TST             R0, #8
SUB             LR, R10, R1
BNE             loc_1320F0
CMP             LR, #0
MOV             R2, #0x20 ; ' '
BLE             loc_1320F0
CMP             R5, LR
MOV             R0, R5
MOV             R1, LR
MOVHI           R0, R1
CMP             R0, #0
BEQ             loc_1320E8
AND             R1, R0, #1
CMP             R1, #1
MOV             R3, #0
MOVEQ           R3, #1
STRHEQ          R2, [R4]
CMP             R1, R0
BCS             loc_1320E8
ADD             R12, R4, R3,LSL#1
ADD             R3, R3, #1
STRH            R2, [R12]
ADD             R12, R4, R3,LSL#1
ADD             R1, R1, #2
CMP             R1, R0
ADD             R3, R3, #1
STRH            R2, [R12]
BCC             loc_1320C4
SUB             R5, R5, R0
ADD             R4, R4, LR,LSL#1
CMP             R8, #0
ADDGT           R0, SP, #0xB0+var_74
BLE             loc_132120
SUB             R8, R8, #1
CMP             R5, #0
ADD             R1, R0, R8,LSL#1
SUBNE           R5, R5, #1
LDRH            R1, [R1]
STRHNE          R1, [R4]
CMP             R8, #0
ADD             R4, R4, #2
BGT             loc_1320FC
CMP             R9, #0
MOV             R3, #0x30 ; '0'
BLE             loc_132188
CMP             R5, R9
MOV             R0, R5
MOVHI           R0, R9
CMP             R0, #0
BEQ             loc_132180
AND             R1, R0, #1
CMP             R1, #1
MOV             R2, #0
MOVEQ           R2, #1
STRHEQ          R3, [R4]
CMP             R1, R0
BCS             loc_132180
ADD             R12, R4, R2,LSL#1
ADD             R2, R2, #1
STRH            R3, [R12]
ADD             R12, R4, R2,LSL#1
ADD             R1, R1, #2
CMP             R1, R0
ADD             R2, R2, #1
STRH            R3, [R12]
BCC             loc_13215C
SUB             R5, R5, R0
ADD             R4, R4, R9,LSL#1
CMP             R7, #0
ADDGT           R0, SP, #0xB0+var_68
BLE             loc_1321B8
SUB             R7, R7, #1
CMP             R5, #0
ADD             R1, R0, R7,LSL#1
SUBNE           R5, R5, #1
LDRH            R1, [R1]
STRHNE          R1, [R4]
CMP             R7, #0
ADD             R4, R4, #2
BGT             loc_132194
LDR             R0, [SP,#0xB0+var_70]
AND             R0, R0, #8
CMP             R0, #0
MOVNE           R3, #0x20 ; ' '
CMPNE           LR, #0
BLE             loc_13222C
CMP             R5, LR
MOV             R0, R5
MOVHI           R0, LR
CMP             R0, #0
BEQ             loc_132224
AND             R1, R0, #1
CMP             R1, #1
MOV             R2, #0
MOVEQ           R2, #1
STRHEQ          R3, [R4]
CMP             R1, R0
BCS             loc_132224
ADD             R12, R4, R2,LSL#1
ADD             R2, R2, #1
STRH            R3, [R12]
ADD             R12, R4, R2,LSL#1
ADD             R1, R1, #2
CMP             R1, R0
ADD             R2, R2, #1
STRH            R3, [R12]
BCC             loc_132200
SUB             R5, R5, R0
ADD             R4, R4, LR,LSL#1
ADD             R6, R6, #2
B               loc_13262C
LDR             R0, [SP,#0xB0+var_70]
MOV             R11, #8
ORR             R0, R0, #4
STR             R0, [SP,#0xB0+var_70]
B               loc_131CF8
CMP             R11, #0
BGE             loc_1325E0
LDR             R0, [SP,#0xB0+var_70]
SUB             R12, R10, #1
TST             R0, #8
LDR             R0, [SP,#0xB0+var_28]
ADD             R1, R0, #4
STR             R1, [SP,#0xB0+var_28]
LDR             LR, [R0]
BEQ             loc_1322F0
CMP             R5, #0
UXTH            R0, LR
STRHNE          R0, [R4]
SUBNE           R5, R5, #1
CMP             R12, #0
ADD             R4, R4, #2
MOV             R3, #0x20 ; ' '
BLE             loc_13222C
CMP             R5, R12
MOV             R0, R5
MOVHI           R0, R12
CMP             R0, #0
BEQ             loc_1322E4
AND             R1, R0, #1
CMP             R1, #1
MOV             R2, #0
MOVEQ           R2, #1
STRHEQ          R3, [R4]
CMP             R1, R0
BCS             loc_1322E4
ADD             LR, R4, R2,LSL#1
ADD             R2, R2, #1
STRH            R3, [LR]
ADD             LR, R4, R2,LSL#1
ADD             R1, R1, #2
CMP             R1, R0
ADD             R2, R2, #1
STRH            R3, [LR]
BCC             loc_1322C0
SUB             R5, R5, R0
ADD             R4, R4, R12,LSL#1
B               loc_13222C
LDR             R0, [SP,#0xB0+var_70]
TST             R0, #0x10
MOVNE           R2, #0x30 ; '0'
MOVEQ           R2, #0x20 ; ' '
CMP             R12, #0
BLE             loc_132364
CMP             R5, R12
MOV             R0, R5
MOVHI           R0, R12
CMP             R0, #0
BEQ             loc_13235C
AND             R1, R0, #1
CMP             R1, #1
MOV             R3, #0
MOVEQ           R3, #1
STRHEQ          R2, [R4]
CMP             R1, R0
BCS             loc_13235C
ADD             R7, R4, R3,LSL#1
ADD             R3, R3, #1
STRH            R2, [R7]
ADD             R7, R4, R3,LSL#1
ADD             R1, R1, #2
CMP             R1, R0
ADD             R3, R3, #1
STRH            R2, [R7]
BCC             loc_132338
SUB             R5, R5, R0
ADD             R4, R4, R12,LSL#1
CMP             R5, #0
UXTH            R0, LR
STRHNE          R0, [R4]
SUBNE           R5, R5, #1
ADD             R4, R4, #2
B               loc_13222C
LDR             R1, [SP,#0xB0+var_28]
CMP             R11, #0
ADD             R0, R1, #4
STR             R0, [SP,#0xB0+var_28]
LDR             R2, [R1]
MOV             R0, #0
BGE             loc_1323BC
LDRH            R1, [R2]
CMP             R1, #0
BEQ             loc_1323D8
ADD             R0, R0, #1
ADD             R1, R2, R0,LSL#1
LDRH            R1, [R1]
CMP             R1, #0
BNE             loc_1323A4
B               loc_1323D8
CMP             R11, R0
BLE             loc_1323D8
ADD             R1, R2, R0,LSL#1
LDRH            R1, [R1]
CMP             R1, #0
ADDNE           R0, R0, #1
BNE             loc_1323BC
LDR             R1, [SP,#0xB0+var_70]
SUB             R7, R10, R0
TST             R1, #8
BEQ             loc_132498
SUBS            R12, R0, #0
BLE             loc_13242C
CMP             R5, R12
MOV             R3, R5
MOVHI           R3, R0
CMP             R3, #0
MOVNE           R0, R3
MOVNE           R1, #0
BEQ             loc_132424
LDRH            LR, [R2],#2
ADD             R8, R4, R1,LSL#1
SUBS            R0, R0, #1
ADD             R1, R1, #1
STRH            LR, [R8]
BNE             loc_13240C
SUB             R5, R5, R3
ADD             R4, R4, R12,LSL#1
CMP             R7, #0
MOV             R3, #0x20 ; ' '
BLE             loc_13222C
CMP             R5, R7
MOV             R1, R5
MOVHI           R1, R7
CMP             R1, #0
BEQ             loc_13248C
AND             R0, R1, #1
CMP             R0, #1
MOV             R2, #0
MOVEQ           R2, #1
STRHEQ          R3, [R4]
CMP             R0, R1
BCS             loc_13248C
ADD             R12, R4, R2,LSL#1
ADD             R2, R2, #1
STRH            R3, [R12]
ADD             R12, R4, R2,LSL#1
ADD             R0, R0, #2
CMP             R0, R1
ADD             R2, R2, #1
STRH            R3, [R12]
BCC             loc_132468
SUB             R5, R5, R1
ADD             R4, R4, R7,LSL#1
B               loc_13222C
LDR             R1, [SP,#0xB0+var_70]
TST             R1, #0x10
MOVNE           R12, #0x30 ; '0'
MOVEQ           R12, #0x20 ; ' '
CMP             R7, #0
BLE             loc_13250C
CMP             R5, R7
MOV             R1, R5
MOVHI           R1, R7
CMP             R1, #0
BEQ             loc_132504
AND             R3, R1, #1
CMP             R3, #1
MOV             LR, #0
MOVEQ           LR, #1
STRHEQ          R12, [R4]
CMP             R3, R1
BCS             loc_132504
ADD             R8, R4, LR,LSL#1
ADD             LR, LR, #1
STRH            R12, [R8]
ADD             R8, R4, LR,LSL#1
ADD             R3, R3, #2
CMP             R3, R1
ADD             LR, LR, #1
STRH            R12, [R8]
BCC             loc_1324E0
SUB             R5, R5, R1
ADD             R4, R4, R7,LSL#1
CMP             R0, #0
BLE             loc_13222C
CMP             R5, R0
MOV             R12, R5
MOVHI           R12, R0
CMP             R12, #0
MOVNE           R1, R12
MOVNE           R3, #0
BEQ             loc_132548
LDRH            LR, [R2],#2
ADD             R7, R4, R3,LSL#1
SUBS            R1, R1, #1
ADD             R3, R3, #1
STRH            LR, [R7]
BNE             loc_132530
SUB             R5, R5, R12
ADD             R4, R4, R0,LSL#1
B               loc_13222C
LDR             R0, [SP,#0xB0+var_70]
TST             R0, #0x100
LDR             R0, [SP,#0xB0+var_9C]
SUB             R0, R4, R0
MOV             R0, R0,ASR#1
BNE             loc_13222C
LDR             R1, [SP,#0xB0+var_70]
TST             R1, #0x40
BEQ             loc_13258C
LDR             R1, [SP,#0xB0+var_28]
LDR             R2, [R1],#4
STR             R1, [SP,#0xB0+var_28]
STRH            R0, [R2]
B               loc_13222C
LDR             R1, [SP,#0xB0+var_70]
TST             R1, #0x80
LDR             R1, [SP,#0xB0+var_28]
BEQ             loc_1325B0
MOV             R2, R0,ASR#31
LDR             R3, [R1],#4
STR             R1, [SP,#0xB0+var_28]
STM             R3, {R0,R2}
B               loc_13222C
LDR             R2, [R1],#4
STR             R1, [SP,#0xB0+var_28]
STR             R0, [R2]
B               loc_13222C
ADD             R2, R1, #2
CMP             R2, R6
BNE             loc_1325E0
CMP             R5, #0
ADD             R6, R6, #2
BNE             loc_131AD0
ADD             R4, R4, #2
B               loc_13262C
SUB             R0, R6, R1
MOV             R12, R0,ASR#1
CMP             R12, #0
BLE             loc_13262C
CMP             R5, R12
MOV             R3, R5
MOVHI           R3, R12
CMP             R3, #0
MOVNE           R0, R3
MOVNE           R2, #0
BEQ             loc_132624
LDRH            LR, [R1],#2
ADD             R7, R4, R2,LSL#1
SUBS            R0, R0, #1
ADD             R2, R2, #1
STRH            LR, [R7]
BNE             loc_13260C
SUB             R5, R5, R3
ADD             R4, R4, R12,LSL#1
LDRH            R0, [R6]
CMP             R0, #0
BNE             loc_131AB8
CMP             R5, #0
MOV             R0, #0
STRHNE          R0, [R4]
BNE             loc_132664
LDR             R1, [SP,#0xB0+var_30]
CMP             R1, #0
BEQ             loc_132664
MOV             R2, #0xFFFFFFFE
ADD             R2, R2, R1,LSL#1
LDR             R1, [SP,#0xB0+var_9C]
STRH            R0, [R1,R2]
LDR             R0, [SP,#0xB0+var_9C]
ADD             SP, SP, #0x8C
SUB             R0, R4, R0
MOV             R0, R0,ASR#1
POP             {R4-R11,PC}
