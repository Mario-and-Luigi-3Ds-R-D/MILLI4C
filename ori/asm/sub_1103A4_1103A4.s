PUSH            {R4-R12,LR}
MOV             R4, R1
CMP             R0, R4
MOV             R7, R2
BLS             loc_11078C
CMP             R7, #4
ADD             R5, R0, R7
ADD             R4, R1, R7
BCS             loc_1103E4
SUBS            R0, R2, #1
BCC             locret_1103E0
LDRB            R1, [R4,#-1]!
SUBS            R0, R0, #1
STRB            R1, [R5,#-1]!
BCS             loc_1103D0
POP             {R4-R12,PC}
TST             R4, #1
BEQ             loc_1103F8
LDRB            R0, [R4,#-1]!
SUB             R7, R2, #1
STRB            R0, [R5,#-1]!
TST             R5, #1
BEQ             loc_110510
SUB             R0, R5, R7
ADD             R0, R0, #0x10
SUB             R9, R0, R5
SUB             R1, R9, #0x10
MOV             R12, #0
MOV             R0, R1,ASR#31
MOV             R6, R12
ADD             R0, R1, R0,LSR#28
MOV             R0, R0,ASR#4
RSB             R8, R0, #0
B               loc_110458
MOV             R2, #8
ADD             R0, R4, R12
ADD             R1, R5, R12
LDRB            R3, [R0,#-1]
SUBS            R2, R2, #1
STRB            R3, [R1,#-1]
LDRB            R3, [R0,#-2]!
STRB            R3, [R1,#-2]!
BNE             loc_110438
SUB             R12, R12, #0x10
ADD             R6, R6, #1
CMP             R8, R6
BGT             loc_11042C
SUB             R0, R9, #0x10
MOV             R1, #0xFFFFFFF0
BL              sub_2FEFCC
RSB             R1, R0, #0
TST             R7, #8
ADD             R0, R4, R1,LSL#4
ADD             R1, R5, R1,LSL#4
BEQ             loc_1104C0
LDRB            R2, [R0,#-1]
STRB            R2, [R1,#-1]
LDRB            R2, [R0,#-2]
STRB            R2, [R1,#-2]
LDRB            R2, [R0,#-3]
STRB            R2, [R1,#-3]
LDRB            R2, [R0,#-4]
STRB            R2, [R1,#-4]
LDRB            R2, [R0,#-5]
STRB            R2, [R1,#-5]
LDRB            R2, [R0,#-6]
STRB            R2, [R1,#-6]
LDRB            R2, [R0,#-7]
STRB            R2, [R1,#-7]
LDRB            R2, [R0,#-8]!
STRB            R2, [R1,#-8]!
TST             R7, #4
BEQ             loc_1104E8
LDRB            R2, [R0,#-1]
STRB            R2, [R1,#-1]
LDRB            R2, [R0,#-2]
STRB            R2, [R1,#-2]
LDRB            R2, [R0,#-3]
STRB            R2, [R1,#-3]
LDRB            R2, [R0,#-4]!
STRB            R2, [R1,#-4]!
TST             R7, #2
BEQ             loc_110500
LDRB            R2, [R0,#-1]
STRB            R2, [R1,#-1]
LDRB            R2, [R0,#-2]!
STRB            R2, [R1,#-2]!
TST             R7, #1
LDRBNE          R0, [R0,#-1]
STRBNE          R0, [R1,#-1]
POP             {R4-R12,PC}
TST             R4, #2
BEQ             loc_110524
LDRH            R0, [R4,#-2]!
SUB             R7, R7, #2
STRH            R0, [R5,#-2]!
TST             R5, #2
MOV             R0, #0xFFFFFFF0
BEQ             loc_110654
MOV             R6, R7,LSR#1
MOV             R8, #0
SUB             R11, R5, R6,LSL#1
ADD             R2, R11, #0x20 ; ' '
SUB             R1, R2, R5
MOV             R9, R8
ADD             R0, R0, R1,ASR#1
MOV             R1, R0,ASR#31
ADD             R1, R0, R1,LSR#28
MOV             R1, R1,ASR#4
RSB             R10, R1, #0
B               loc_11058C
MOV             R3, #8
ADD             R1, R4, R8,LSL#1
ADD             R2, R5, R8,LSL#1
LDRH            R12, [R1,#-2]
SUBS            R3, R3, #1
STRH            R12, [R2,#-2]
LDRH            R12, [R1,#-4]!
STRH            R12, [R2,#-4]!
BNE             loc_11056C
SUB             R8, R8, #0x10
ADD             R9, R9, #1
CMP             R10, R9
BGT             loc_110560
MOV             R1, #0xFFFFFFF0
BL              sub_2FEFCC
RSB             R1, R0, #0
TST             R6, #8
ADD             R0, R4, R1,LSL#5
ADD             R1, R5, R1,LSL#5
BEQ             loc_1105F0
LDRH            R2, [R0,#-2]
STRH            R2, [R1,#-2]
LDRH            R2, [R0,#-4]
STRH            R2, [R1,#-4]
LDRH            R2, [R0,#-6]
STRH            R2, [R1,#-6]
LDRH            R2, [R0,#-8]
STRH            R2, [R1,#-8]
LDRH            R2, [R0,#-0xA]
STRH            R2, [R1,#-0xA]
LDRH            R2, [R0,#-0xC]
STRH            R2, [R1,#-0xC]
LDRH            R2, [R0,#-0xE]
STRH            R2, [R1,#-0xE]
LDRH            R2, [R0,#-0x10]!
STRH            R2, [R1,#-0x10]!
TST             R6, #4
BEQ             loc_110618
LDRH            R2, [R0,#-2]
STRH            R2, [R1,#-2]
LDRH            R2, [R0,#-4]
STRH            R2, [R1,#-4]
LDRH            R2, [R0,#-6]
STRH            R2, [R1,#-6]
LDRH            R2, [R0,#-8]!
STRH            R2, [R1,#-8]!
TST             R6, #2
BEQ             loc_110630
LDRH            R2, [R0,#-2]
STRH            R2, [R1,#-2]
LDRH            R2, [R0,#-4]!
STRH            R2, [R1,#-4]!
TST             R6, #1
LDRHNE          R0, [R0,#-2]
STRHNE          R0, [R1,#-2]
TST             R7, #1
BEQ             locret_1103E0
SUB             R0, R4, R6,LSL#1
LDRB            R0, [R0,#-1]
STRB            R0, [R11,#-1]
POP             {R4-R12,PC}
MOV             R6, R7,LSR#2
MOV             R12, #0
SUB             R8, R5, R6,LSL#2
ADD             R1, R8, #0x40 ; '@'
SUB             R1, R1, R5
MOV             R9, R12
ADD             R0, R0, R1,ASR#2
MOV             R1, R0,ASR#31
ADD             R1, R0, R1,LSR#28
MOV             R1, R1,ASR#4
RSB             R10, R1, #0
B               loc_1106B0
MOV             R3, #8
ADD             R1, R4, R12,LSL#2
ADD             R2, R5, R12,LSL#2
LDR             R11, [R1,#-4]
SUBS            R3, R3, #1
STR             R11, [R2,#-4]
LDR             R11, [R1,#-8]!
STR             R11, [R2,#-8]!
BNE             loc_110690
SUB             R12, R12, #0x10
ADD             R9, R9, #1
CMP             R10, R9
BGT             loc_110684
MOV             R1, #0xFFFFFFF0
BL              sub_2FEFCC
RSB             R1, R0, #0
TST             R6, #8
ADD             R0, R4, R1,LSL#6
ADD             R1, R5, R1,LSL#6
BEQ             loc_110714
LDR             R2, [R0,#-4]
STR             R2, [R1,#-4]
LDR             R2, [R0,#-8]
STR             R2, [R1,#-8]
LDR             R2, [R0,#-0xC]
STR             R2, [R1,#-0xC]
LDR             R2, [R0,#-0x10]
STR             R2, [R1,#-0x10]
LDR             R2, [R0,#-0x14]
STR             R2, [R1,#-0x14]
LDR             R2, [R0,#-0x18]
STR             R2, [R1,#-0x18]
LDR             R2, [R0,#-0x1C]
STR             R2, [R1,#-0x1C]
LDR             R2, [R0,#-0x20]!
STR             R2, [R1,#-0x20]!
TST             R6, #4
BEQ             loc_11073C
LDR             R2, [R0,#-4]
STR             R2, [R1,#-4]
LDR             R2, [R0,#-8]
STR             R2, [R1,#-8]
LDR             R2, [R0,#-0xC]
STR             R2, [R1,#-0xC]
LDR             R2, [R0,#-0x10]!
STR             R2, [R1,#-0x10]!
TST             R6, #2
BEQ             loc_110754
LDR             R2, [R0,#-4]
STR             R2, [R1,#-4]
LDR             R2, [R0,#-8]!
STR             R2, [R1,#-8]!
TST             R6, #1
LDRNE           R0, [R0,#-4]
STRNE           R0, [R1,#-4]
TST             R7, #3
BEQ             locret_1103E0
TST             R7, #2
SUB             R0, R4, R6,LSL#2
BEQ             loc_11077C
LDRH            R1, [R0,#-2]!
STRH            R1, [R8,#-2]!
TST             R7, #1
LDRBNE          R0, [R0,#-1]
STRBNE          R0, [R8,#-1]
POP             {R4-R12,PC}
NOP
BCS             locret_1103E0
CMP             R7, #4
BCS             loc_1107B8
SUBS            R1, R2, #1
BCC             locret_1103E0
LDRB            R2, [R4],#1
SUBS            R1, R1, #1
STRB            R2, [R0],#1
BCS             loc_1107A4
POP             {R4-R12,PC}
TST             R4, #1
BEQ             loc_1107CC
LDRB            R1, [R4],#1
SUB             R7, R2, #1
STRB            R1, [R0],#1
TST             R0, #1
BEQ             loc_110908
ADD             R1, R0, R7
SUB             R1, R1, #0x10
SUB             R1, R1, R0
ADD             R1, R1, #0x10
MOV             R12, #0
MOV             R2, R1,ASR#31
MOV             R5, R12
ADD             R6, R1, R2,LSR#28
B               loc_11082C
ADD             R1, R4, R12
ADD             R2, R0, R12
SUB             R1, R1, #1
MOV             R3, #8
SUB             R2, R2, #1
LDRB            R8, [R1,#1]
SUBS            R3, R3, #1
STRB            R8, [R2,#1]
LDRB            R8, [R1,#2]!
STRB            R8, [R2,#2]!
BNE             loc_11080C
ADD             R12, R12, #0x10
ADD             R5, R5, #1
CMP             R5, R6,ASR#4
BLT             loc_1107F8
BIC             R1, R6, #0xF
ADD             R5, R1, R4
TST             R7, #8
ADD             R4, R1, R0
BEQ             loc_1108A8
SUB             R0, R4, R5
CMP             R0, #0
BLE             loc_110860
CMP             R0, #8
MOVLT           R0, #0
BLT             loc_11087C
MOV             R2, #8
MOV             R1, R5
MOV             R0, R4
BL              sub_302870
NOP
NOP
B               loc_1108A0
LDRB            R1, [R5,R0]
ADD             R2, R5, R0
ADD             R3, R4, R0
STRB            R1, [R4,R0]
LDRB            R1, [R2,#1]
ADD             R0, R0, #2
CMP             R0, #8
STRB            R1, [R3,#1]
BLT             loc_11087C
ADD             R4, R4, #8
ADD             R5, R5, #8
TST             R7, #4
BEQ             loc_1108D8
LDRB            R0, [R5]
STRB            R0, [R4]
LDRB            R0, [R5,#1]
STRB            R0, [R4,#1]
LDRB            R0, [R5,#2]
STRB            R0, [R4,#2]
LDRB            R0, [R5,#3]
ADD             R5, R5, #4
STRB            R0, [R4,#3]
ADD             R4, R4, #4
TST             R7, #2
BEQ             loc_1108F8
LDRB            R0, [R5]
STRB            R0, [R4]
LDRB            R0, [R5,#1]
ADD             R5, R5, #2
STRB            R0, [R4,#1]
ADD             R4, R4, #2
TST             R7, #1
LDRBNE          R0, [R5]
STRBNE          R0, [R4]
POP             {R4-R12,PC}
TST             R4, #2
BEQ             loc_11091C
LDRH            R1, [R4],#2
SUB             R7, R7, #2
STRH            R1, [R0],#2
TST             R0, #2
MOV             R11, #8
MOV             R1, #0x10
BEQ             loc_110A74
MOV             R8, R7,LSR#1
MOV             R5, #0
ADD             R9, R0, R8,LSL#1
SUB             R3, R9, #0x20 ; ' '
SUB             R2, R3, R0
MOV             R6, R5
ADD             R1, R1, R2,ASR#1
MOV             R2, R1,ASR#31
ADD             R10, R1, R2,LSR#28
B               loc_110988
ADD             R1, R4, R5,LSL#1
ADD             R2, R0, R5,LSL#1
SUB             R1, R1, #2
MOV             R3, #8
SUB             R2, R2, #2
LDRH            R12, [R1,#2]
SUBS            R3, R3, #1
STRH            R12, [R2,#2]
LDRH            R12, [R1,#4]!
STRH            R12, [R2,#4]!
BNE             loc_110968
ADD             R5, R5, #0x10
ADD             R6, R6, #1
CMP             R6, R10,ASR#4
BLT             loc_110954
MOV             R1, R10,ASR#4
TST             R8, #8
ADD             R6, R4, R1,LSL#5
ADD             R5, R0, R1,LSL#5
BEQ             loc_110A04
SUB             R0, R5, R6
MOV             R1, R0,ASR#1
CMP             R1, #0
CMPGT           R11, R0,ASR#1
MOVGT           R0, #0
BGT             loc_1109D8
MOV             R2, #0x10
MOV             R1, R6
MOV             R0, R5
BL              sub_302870
NOP
NOP
B               loc_1109FC
ADD             R1, R6, R0,LSL#1
ADD             R2, R5, R0,LSL#1
LDRH            R3, [R1]
ADD             R0, R0, #2
CMP             R0, #8
STRH            R3, [R2]
LDRH            R1, [R1,#2]
STRH            R1, [R2,#2]
BLT             loc_1109D8
ADD             R5, R5, #0x10
ADD             R6, R6, #0x10
TST             R8, #4
BEQ             loc_110A34
LDRH            R0, [R6]
STRH            R0, [R5]
LDRH            R0, [R6,#2]
STRH            R0, [R5,#2]
LDRH            R0, [R6,#4]
STRH            R0, [R5,#4]
LDRH            R0, [R6,#6]
ADD             R6, R6, #8
STRH            R0, [R5,#6]
ADD             R5, R5, #8
TST             R8, #2
BEQ             loc_110A54
LDRH            R0, [R6]
STRH            R0, [R5]
LDRH            R0, [R6,#2]
ADD             R6, R6, #4
STRH            R0, [R5,#2]
ADD             R5, R5, #4
TST             R8, #1
LDRHNE          R0, [R6]
STRHNE          R0, [R5]
TST             R7, #1
BEQ             locret_1103E0
LDRB            R0, [R4,R8,LSL#1]
STRB            R0, [R9]
POP             {R4-R12,PC}
MOV             R8, R7,LSR#2
MOV             R12, #0
ADD             R9, R0, R8,LSL#2
SUB             R2, R9, #0x40 ; '@'
SUB             R2, R2, R0
MOV             R5, R12
ADD             R1, R1, R2,ASR#2
MOV             R2, R1,ASR#31
ADD             R6, R1, R2,LSR#28
B               loc_110AD0
ADD             R1, R4, R12,LSL#2
ADD             R2, R0, R12,LSL#2
SUB             R1, R1, #4
MOV             R3, #8
SUB             R2, R2, #4
LDR             R10, [R1,#4]
SUBS            R3, R3, #1
STR             R10, [R2,#4]
LDR             R10, [R1,#8]!
STR             R10, [R2,#8]!
BNE             loc_110AB0
ADD             R12, R12, #0x10
ADD             R5, R5, #1
CMP             R5, R6,ASR#4
BLT             loc_110A9C
MOV             R1, R6,ASR#4
TST             R8, #8
ADD             R6, R4, R1,LSL#6
ADD             R5, R0, R1,LSL#6
BEQ             loc_110B4C
SUB             R0, R5, R6
MOV             R1, R0,ASR#2
CMP             R1, #0
CMPGT           R11, R0,ASR#2
MOVGT           R0, #0
BGT             loc_110B20
MOV             R2, #0x20 ; ' '
MOV             R1, R6
MOV             R0, R5
BL              sub_127E2C
NOP
NOP
B               loc_110B44
LDR             R1, [R6,R0,LSL#2]
ADD             R2, R6, R0,LSL#2
ADD             R3, R5, R0,LSL#2
STR             R1, [R5,R0,LSL#2]
LDR             R1, [R2,#4]
ADD             R0, R0, #2
CMP             R0, #8
STR             R1, [R3,#4]
BLT             loc_110B20
ADD             R5, R5, #0x20 ; ' '
ADD             R6, R6, #0x20 ; ' '
TST             R8, #4
BEQ             loc_110B7C
LDR             R0, [R6]
STR             R0, [R5]
LDR             R0, [R6,#4]
STR             R0, [R5,#4]
LDR             R0, [R6,#8]
STR             R0, [R5,#8]
LDR             R0, [R6,#0xC]!
ADD             R6, R6, #4
STR             R0, [R5,#0xC]!
ADD             R5, R5, #4
TST             R8, #2
BEQ             loc_110B9C
LDR             R0, [R6]
STR             R0, [R5]
LDR             R0, [R6,#4]!
ADD             R6, R6, #4
STR             R0, [R5,#4]!
ADD             R5, R5, #4
TST             R8, #1
LDRNE           R0, [R6]
STRNE           R0, [R5]
TST             R7, #3
BEQ             locret_1103E0
TST             R7, #2
ADD             R0, R4, R8,LSL#2
BEQ             loc_110BC4
LDRH            R1, [R0],#2
STRH            R1, [R9],#2
TST             R7, #1
LDRBNE          R0, [R0]
STRBNE          R0, [R9]
POP             {R4-R12,PC}
