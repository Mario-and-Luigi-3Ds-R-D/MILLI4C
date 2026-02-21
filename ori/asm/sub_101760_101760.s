PUSH            {R0,R1,R4-R7,LR}
SUB             SP, SP, #0x3C
MOVS            R0, #0
STR             R0, [SP,#0x58+var_28]
MOVS            R0, #1
STR             R0, [SP,#0x58+var_20]
MOVS            R4, R1
MOVS            R6, #0
MOVS            R0, R1
ADDS            R0, #0xC
STR             R0, [SP,#0x58+var_4C]
LDR             R2, [R4,#0x14]
LDR             R0, [SP,#0x58+var_4C]
MOVS            R1, #1
BLX             R2
MOVS            R5, R0
BEQ             loc_1017E0
CMP             R5, #0x25 ; '%'
BEQ             loc_1017E2
LDR             R1, [R4,#0x20]
BLX             R1
CMP             R0, #0
BEQ             loc_1017C0
LDR             R2, [R4,#0x14]
LDR             R0, [SP,#0x58+var_4C]
MOVS            R1, #1
BLX             R2
LDR             R1, [R4,#0x20]
BLX             R1
CMP             R0, #0
BNE             loc_10178E
LDR             R2, [R4,#0x14]
SUBS            R1, R0, #1
LDR             R0, [SP,#0x58+var_4C]
BLX             R2
B               loc_1017AA
ADDS            R6, R6, #1
LDR             R1, [R4,#0x18]
LDR             R0, [SP,#0x58+var_1C]
BLX             R1
LDR             R1, [R4,#0x20]
BLX             R1
CMP             R0, #0
BNE             loc_1017A8
LDR             R1, [R4,#0x1C]
LDR             R0, [SP,#0x58+var_1C]
BLX             R1
B               loc_101776
LDR             R1, [R4,#0x18]
LDR             R0, [SP,#0x58+var_1C]
BLX             R1
MOVS            R7, R0
CMP             R0, R5
BNE             loc_1017D0
ADDS            R6, R6, #1
B               loc_101776
LDR             R1, [R4,#0x1C]
LDR             R0, [SP,#0x58+var_1C]
BLX             R1
ADDS            R7, R7, #1
BNE             loc_1017E0
LDR             R0, [SP,#0x58+var_28]
CMP             R0, #0
BEQ             loc_1018D0
B               loc_101AD0
LDR             R2, [R4,#0x14]
MOVS            R7, #0
MOVS            R5, R7
LDR             R0, [SP,#0x58+var_4C]
MOVS            R1, R7
BLX             R2
CMP             R0, #0x2A ; '*'
BNE             loc_10180C
LDR             R2, [R4,#0x14]
LDR             R0, [SP,#0x58+var_4C]
MOVS            R1, #1
BLX             R2
MOVS            R5, #1
B               loc_10180C
MOVS            R1, #0xA
MULS            R7, R1
ADDS            R7, R7, R0
SUBS            R7, #0x30 ; '0'
BMI             loc_1017E0
MOVS            R0, #0x10
ORRS            R5, R0
LDR             R2, [R4,#0x14]
LDR             R0, [SP,#0x58+var_4C]
MOVS            R1, #1
BLX             R2
MOVS            R1, R0
SUBS            R1, #0x30 ; '0'
CMP             R1, #0xA
BCS             loc_101824
LDR             R1, =0xCCCCCCC
CMP             R7, R1
BGT             loc_1017E0
B               loc_1017FE
LSLS            R1, R5, #0x1B
BMI             loc_10182A
LDR             R7, =0x7FFFFFFF
CMP             R0, #0x6C ; 'l'
BEQ             loc_101844
CMP             R0, #0x4C ; 'L'
BEQ             loc_101854
CMP             R0, #0x68 ; 'h'
BEQ             loc_101880
CMP             R0, #0x6A ; 'j'
BEQ             loc_101898
CMP             R0, #0x74 ; 't'
BEQ             loc_101858
CMP             R0, #0x7A ; 'z'
BEQ             loc_101858
B               loc_101860
LDR             R2, [R4,#0x14]
LDR             R0, [SP,#0x58+var_4C]
MOVS            R1, #1
BLX             R2
CMP             R0, #0x6C ; 'l'
BEQ             loc_101898
MOVS            R1, #4
B               loc_10188E
MOVS            R0, #0x20 ; ' '
ORRS            R5, R0
LDR             R2, [R4,#0x14]
LDR             R0, [SP,#0x58+var_4C]
MOVS            R1, #1
BLX             R2
STR             R7, [R4,#8]
CMP             R0, #0x65 ; 'e'
STR             R5, [R4,#4]
BEQ             loc_10190C
BGT             loc_1018B8
CMP             R0, #0x58 ; 'X'
BEQ             loc_1018E2
BGT             loc_1018A6
CMP             R0, #0x45 ; 'E'
BEQ             loc_10190C
BGT             loc_10189C
CMP             R0, #0x25 ; '%'
BEQ             loc_1018E4
CMP             R0, #0x41 ; 'A'
BNE             loc_1017E0
B               loc_10190C
LDR             R2, [R4,#0x14]
LDR             R0, [SP,#0x58+var_4C]
MOVS            R1, #1
BLX             R2
CMP             R0, #0x68 ; 'h'
BEQ             loc_101892
MOVS            R1, #8
ORRS            R5, R1
B               loc_101860
MOVS            R0, #0x800
B               loc_101856
MOVS            R0, #2
B               loc_101856
CMP             R0, #0x46 ; 'F'
BEQ             loc_10190C
CMP             R0, #0x47 ; 'G'
BNE             loc_1017E0
B               loc_10190C
CMP             R0, #0x5B ; '['
BEQ             loc_10198C
CMP             R0, #0x61 ; 'a'
BEQ             loc_10190C
CMP             R0, #0x63 ; 'c'
BEQ             loc_10198C
CMP             R0, #0x64 ; 'd'
BNE             loc_1017E0
B               loc_10197E
CMP             R0, #0x6F ; 'o'
BEQ             loc_10195C
BGT             loc_1018D2
CMP             R0, #0x66 ; 'f'
BEQ             loc_10190C
CMP             R0, #0x67 ; 'g'
BEQ             loc_10190C
CMP             R0, #0x69 ; 'i'
BEQ             loc_10191C
CMP             R0, #0x6E ; 'n'
BNE             loc_1017E0
B               loc_101934
B               loc_101AC8
CMP             R0, #0x70 ; 'p'
BEQ             loc_101974
CMP             R0, #0x73 ; 's'
BEQ             loc_1019BA
CMP             R0, #0x75 ; 'u'
BEQ             loc_10197E
CMP             R0, #0x78 ; 'x'
BNE             loc_10187C
B               loc_10198E
LDR             R1, [R4,#0x18]
LDR             R0, [SP,#0x58+var_1C]
BLX             R1
MOVS            R5, R0
CMP             R0, #0x25 ; '%'
BNE             loc_1018F2
B               loc_1017CC
LDR             R1, [R4,#0x1C]
LDR             R0, [SP,#0x58+var_1C]
BLX             R1
ADDS            R5, R5, #1
BNE             loc_1018FE
B               loc_1017DA
B               loc_101AD0
MOVS            R3, R4
MOVS            R2, #0xA
B               loc_10199E
MOVS            R3, R4
MOVS            R2, #0xA
B               loc_1019AE
MOVS            R0, #1
MOV             R2, SP
LDR             R1, [SP,#0x58+var_1C]
MOVS            R3, R4
MVNS            R0, R0
BLX             sub_2FF5E8
B               loc_101ABA
MOVS            R0, R5
MOVS            R1, #0x40 ; '@'
ORRS            R0, R1
STR             R0, [R4,#4]
LSLS            R0, R5, #0x1E
BPL             loc_10192E
MOVS            R3, R4
MOVS            R2, #0
B               loc_10199E
MOVS            R3, R4
MOVS            R2, #0
B               loc_1019AE
LDR             R0, [R4]
ADDS            R1, R0, #4
STR             R1, [R4]
LDR             R0, [R0]
LSLS            R1, R5, #0x14
BPL             loc_101944
STRB            R6, [R0]
B               loc_101776
LSLS            R1, R5, #0x1C
BPL             loc_10194C
STRH            R6, [R0]
B               loc_101776
LSLS            R1, R5, #0x1E
BPL             loc_101958
ASRS            R1, R6, #0x1F
STR             R6, [R0]
STR             R1, [R0,#4]
B               loc_101776
STR             R6, [R0]
B               loc_101776
MOVS            R0, R5
MOVS            R1, #0x40 ; '@'
ORRS            R0, R1
STR             R0, [R4,#4]
LSLS            R0, R5, #0x1E
BPL             loc_10196E
MOVS            R3, R4
MOVS            R2, #8
B               loc_10199E
MOVS            R3, R4
MOVS            R2, #8
B               loc_1019AE
LDR             R1, =0xFFFFF7F1
MOVS            R0, R5
ANDS            R0, R1
STR             R0, [R4,#4]
B               loc_1019AA
MOVS            R0, R5
MOVS            R1, #0x40 ; '@'
ORRS            R0, R1
STR             R0, [R4,#4]
LSLS            R0, R5, #0x1E
BPL             loc_101906
B               loc_101900
B               loc_1019BA
MOVS            R0, R5
MOVS            R1, #0x40 ; '@'
ORRS            R0, R1
STR             R0, [R4,#4]
LSLS            R0, R5, #0x1E
BPL             loc_1019AA
MOVS            R3, R4
MOVS            R2, #0x10
MOVS            R0, #1
LDR             R1, [SP,#0x58+var_1C]
MVNS            R0, R0
BL              sub_100B6C
B               loc_101ABA
MOVS            R3, R4
MOVS            R2, #0x10
MOVS            R0, #1
LDR             R1, [SP,#0x58+var_1C]
MVNS            R0, R0
BL              sub_100CB0
B               loc_101ABA
MOVS            R1, #0
MOVS            R3, R1
CMP             R0, #0x63 ; 'c'
STR             R1, [SP,#0x58+var_54]
STR             R1, [SP,#0x58+var_58]
STR             R1, [SP,#0x58+var_50]
STR             R1, [SP,#0x58+var_24]
BEQ             loc_1019D0
CMP             R0, #0x5B ; '['
BEQ             loc_1019DE
B               loc_101A38
LSLS            R0, R5, #0x1B
BMI             loc_1019D8
MOVS            R0, #1
STR             R0, [R4,#8]
MOVS            R0, #1
STR             R0, [SP,#0x58+var_58]
B               loc_101A38
LDR             R2, [R4,#0x14]
LDR             R0, [SP,#0x58+var_4C]
MOVS            R1, #1
BLX             R2
CMP             R0, #0x5E ; '^'
BNE             loc_1019F6
MOVS            R0, #1
STR             R0, [SP,#0x58+var_54]
LDR             R2, [R4,#0x14]
MOVS            R1, R0
LDR             R0, [SP,#0x58+var_4C]
BLX             R2
LDR             R1, [R4,#0x10]
CMP             R1, #0
BEQ             loc_101A5E
LDR             R1, [R4,#0xC]
SUBS            R1, R1, #2
STR             R1, [SP,#0x58+var_24]
CMP             R0, #0
BEQ             loc_101AD0
LDR             R1, [R4,#0x10]
CMP             R1, #0
BEQ             loc_101A6E
LDR             R0, [SP,#0x58+var_50]
ADDS            R0, R0, #1
STR             R0, [SP,#0x58+var_50]
LDR             R2, [R4,#0x14]
LDR             R0, [SP,#0x58+var_4C]
MOVS            R1, #1
BLX             R2
CMP             R0, #0x5D ; ']'
BNE             loc_101A02
LDR             R0, [SP,#0x58+var_54]
CMP             R0, #0
BEQ             loc_101A36
MOVS            R0, #0
ADD             R3, SP, #0x58+var_48
LSLS            R1, R0, #2
ADDS            R0, R0, #1
LDR             R2, [R3,R1]
MVNS            R2, R2
CMP             R0, #8
STR             R2, [R3,R1]
BLT             loc_101A28
ADD             R3, SP, #0x58+var_48
LDR             R0, [R4,#0x10]
CMP             R0, #0
LDR             R0, [R4,#4]
BEQ             loc_101A8E
LSLS            R0, R0, #0x1D
CMP             R0, #0
LDR             R2, [SP,#0x58+var_50]
LDR             R0, [SP,#0x58+var_58]
LDR             R3, [SP,#0x58+var_24]
STR             R2, [SP,#0x58+var_58]
STR             R0, [SP,#0x58+var_50]
BGE             loc_101AAE
MOVS            R0, #1
LDR             R1, [SP,#0x58+var_1C]
MOVS            R2, R4
MVNS            R0, R0
BL              sub_1011FC
B               loc_101ABA
MOVS            R3, #0
ADD             R2, SP, #0x58+var_48
LSLS            R7, R1, #2
ADDS            R1, R1, #1
CMP             R1, #8
STR             R3, [R2,R7]
BLT             loc_101A62
B               loc_101A02
ASRS            R1, R0, #0x1F
LSRS            R1, R1, #0x1B
ADDS            R1, R1, R0
ASRS            R2, R1, #5
LSRS            R1, R1, #5
LSLS            R3, R2, #2
ADD             R2, SP, #0x58+var_48
ADDS            R2, R3, R2
LSLS            R1, R1, #5
SUBS            R1, R0, R1
LDR             R3, [R2]
MOVS            R0, #1
LSLS            R0, R1
ORRS            R3, R0
STR             R3, [R2]
B               loc_101A12
LSLS            R0, R0, #0x1D
BPL             loc_101AA0
MOVS            R0, #1
LDR             R1, [SP,#0x58+var_1C]
MOVS            R2, R4
MVNS            R0, R0
BL              sub_100FFE
B               loc_101ABA
MOVS            R0, #1
LDR             R1, [SP,#0x58+var_1C]
MOVS            R2, R4
MVNS            R0, R0
BL              sub_100DFA
B               loc_101ABA
MOVS            R0, #1
LDR             R1, [SP,#0x58+var_1C]
MOVS            R2, R4
MVNS            R0, R0
BL              sub_101118
CMP             R0, #0
BGE             loc_101AD4
ADDS            R0, R0, #1
BNE             loc_101AD0
LDR             R0, [SP,#0x58+var_20]
CMP             R0, #0
BEQ             loc_101AD0
MOVS            R0, #0
MVNS            R0, R0
ADD             SP, SP, #0x44 ; 'D'
POP             {R4-R7,PC}
LDR             R0, [SP,#0x58+var_28]
B               loc_101ACC
LSLS            R1, R5, #0x1F
BNE             loc_101ADE
LDR             R1, [SP,#0x58+var_28]
ADDS            R1, R1, #1
STR             R1, [SP,#0x58+var_28]
ADDS            R6, R6, R0
MOVS            R0, #0
STR             R0, [SP,#0x58+var_20]
B               loc_101776
