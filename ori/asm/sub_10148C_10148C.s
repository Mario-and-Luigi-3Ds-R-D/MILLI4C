PUSH            {R4-R7,LR}
ADDS            R2, R2, #7
MOVS            R4, R0
LSRS            R0, R2, #3
MOVS            R5, R1
LSLS            R0, R0, #3
SUB             SP, SP, #0x34
LDR             R6, [R0,#4]
LDR             R7, [R0]
MOVS            R1, R6
MOVS            R0, R7
BLX             sub_2FE774
MOVS            R2, R0
LSRS            R0, R6, #0x1F
BEQ             loc_1014B0
MOVS            R3, #0x2D ; '-'
B               loc_1014C0
LDR             R0, [R4]
LSLS            R1, R0, #0x1E
BPL             loc_1014BA
MOVS            R3, #0x2B ; '+'
B               loc_1014C0
LSLS            R0, R0, #0x1D
LSRS            R0, R0, #0x1F
LSLS            R3, R0, #5
MOV             R0, SP
CMP             R3, #0
STRB            R3, [R0,#0x48+var_48]
BEQ             loc_1014CC
MOVS            R0, #1
B               loc_1014CE
MOVS            R0, #0
CMP             R2, #3
STR             R0, [SP,#0x48+var_20]
BEQ             loc_1014D8
CMP             R2, #7
BLT             loc_1014E2
MOVS            R1, R5
MOVS            R0, R4
BL              sub_2FE7B4
B               loc_10173A
LDR             R0, [R4]
LSLS            R0, R0, #0x1A
BMI             loc_1014EC
MOVS            R5, #0xD
B               loc_1014EE
LDR             R5, [R4,#0x1C]
LSLS            R0, R6, #1
LSRS            R0, R0, #0x15
CMP             R5, #0xD
STR             R0, [SP,#0x48+var_44]
BGE             loc_101590
LSRS            R0, R6, #0x14
MOVS            R1, #0
STR             R0, [SP,#0x48+var_1C]
MOVS            R0, R1
BLX             sub_2FE5B8
MOVS            R1, #0xC00000
ANDS            R0, R1
CMP             R6, #0
BGE             loc_10151A
LSLS            R2, R0, #2
ADDS            R0, R0, R2
LSRS            R2, R0, #0x1F
ADDS            R0, R2, R0
ASRS            R0, R0, #1
ANDS            R0, R1
ASRS            R0, R0, #0x16
CMP             R0, #1
BLE             loc_101524
MOVS            R0, #0
MVNS            R0, R0
LSLS            R1, R5, #2
MOVS            R3, #0
CMP             R1, #0x18
BCC             loc_10153A
MOV             R12, R3
MOVS            R2, R1
MOVS            R3, #1
SUBS            R2, #0x18
LSLS            R3, R3, #0x1C
LSRS            R3, R2
B               loc_101542
MOVS            R2, #0x100000
LSRS            R2, R1
MOV             R12, R2
ADDS            R1, #0xC
CMP             R1, #0x20 ; ' '
BCC             loc_10154E
SUBS            R1, #0x20 ; ' '
MOVS            R2, R7
B               loc_101550
MOVS            R2, R6
LSLS            R2, R1
CMP             R0, #0
BLE             loc_10155C
CMP             R2, #0
BNE             loc_101568
B               loc_101590
CMP             R0, #0
BNE             loc_101590
MOVS            R1, #0x80000000
CMP             R2, R1
BCC             loc_101590
MOVS            R1, R3
MOV             R3, R12
ADDS            R7, R7, R1
ADCS            R6, R3
CMP             R0, #0
BNE             loc_101582
MOVS            R0, #0x80000000
CMP             R2, R0
BNE             loc_101582
MOVS            R0, R1
BICS            R7, R0
BICS            R6, R3
LDR             R0, [SP,#0x48+var_1C]
LSRS            R1, R6, #0x14
CMP             R1, R0
BEQ             loc_101590
LDR             R0, [SP,#0x48+var_44]
ADDS            R0, R0, #1
STR             R0, [SP,#0x48+var_44]
LDR             R0, [R4]
LSLS            R0, R0, #0x14
BPL             loc_10159C
LDR             R1, =(a0123456789abcd_1 - 0x10159C); "0123456789ABCDEFXP"
ADD             R1, PC; "0123456789ABCDEFXP"
B               loc_1015A2
LDR             R1, =(a0123456789abcd_1 - 0x10159C); "0123456789ABCDEFXP"
ADD             R1, PC; "6789ABCDEFXP"
SUBS            R1, #0x19
MOV             R3, SP
LDR             R0, [SP,#0x48+var_20]
MOVS            R2, #0x30 ; '0'
STRB            R2, [R3,R0]
LDR             R0, [SP,#0x48+var_20]
LDRB            R2, [R1,#0x10]; "XP" ...
ADDS            R0, R0, #1
STRB            R2, [R3,R0]
ADDS            R0, R0, #1
STR             R0, [SP,#0x48+var_20]
LDR             R0, [SP,#0x48+var_44]
CMP             R0, #0
BGT             loc_1015C0
MOVS            R0, #0x30 ; '0'
B               loc_1015C2
MOVS            R0, #0x31 ; '1'
STRB            R0, [R3,#8]
LDR             R2, [SP,#0x48+var_44]
MOVS            R0, #1
CMP             R2, #0
BEQ             loc_1015D2
LDR             R3, =0xFFFFFC01
ADDS            R2, R2, R3
B               loc_1015DC
LSLS            R2, R6, #1
ORRS            R2, R7
BEQ             loc_1015DE
LDR             R2, =0xFFFFFC01
ADDS            R2, R2, #1
STR             R2, [SP,#0x48+var_44]
CMP             R5, #0
BGT             loc_1015E8
LDR             R2, [R4]
LSLS            R2, R2, #0x1C
BPL             loc_1015F0
MOV             R2, SP
MOVS            R0, #0x2E ; '.'
STRB            R0, [R2,#0x48+var_3F]
MOVS            R0, #2
MOVS            R2, #0
MOV             LR, R0
MOV             R12, R2
B               loc_101612
LSLS            R2, R6, #0xC
LSLS            R6, R6, #4
LSRS            R2, R2, #0x1C
SUBS            R5, R5, #1
LDRB            R3, [R1,R2]
ADD             R2, SP, #0x48+var_40
STRB            R3, [R2,R0]
MOV             R2, R12
ADDS            R0, R0, #1
ADDS            R2, R2, #1
CMP             R2, #5
MOV             R12, R2
BGE             loc_101616
CMP             R5, #0
BGT             loc_1015F8
MOVS            R2, #0
ADD             R6, SP, #0x48+var_40
B               loc_10162E
LSRS            R3, R7, #0x1C
LSLS            R7, R7, #4
LDRB            R3, [R1,R3]
ADDS            R2, R2, #1
SUBS            R5, R5, #1
STRB            R3, [R6,R0]
ADDS            R0, R0, #1
CMP             R2, #8
BGE             loc_101632
CMP             R5, #0
BGT             loc_10161C
LDR             R2, [R4]
LSLS            R2, R2, #0x1A
BPL             loc_10163C
B               loc_10165A
SUBS            R0, R0, #1
CMP             R0, LR
BLE             loc_10164A
ADDS            R2, R6, R0
SUBS            R2, #0x20 ; ' '
LDRB            R2, [R2,#0x1F]
CMP             R2, #0x30 ; '0'
BEQ             loc_10163A
CMP             R0, #0
BLE             loc_10165A
ADDS            R2, R6, R0
SUBS            R2, #0x20 ; ' '
LDRB            R2, [R2,#0x1F]
CMP             R2, #0x2E ; '.'
BNE             loc_10165A
SUBS            R0, R0, #1
CMP             R5, #0
BLE             loc_101666
MOVS            R2, #0x3E ; '>'
STRB            R2, [R6,R0]
ADDS            R0, R0, #1
SUBS            R5, R5, #1
LDRB            R1, [R1,#0x11]; "P" ...
STRB            R1, [R6,R0]
LDR             R1, [SP,#0x48+var_44]
ADDS            R0, R0, #1
CMP             R1, #0
BGE             loc_101680
MOVS            R1, #0x2D ; '-'
ADDS            R7, R0, #1
STRB            R1, [R6,R0]
LDR             R0, [SP,#0x48+var_44]
NEGS            R0, R0
STR             R0, [SP,#0x48+var_44]
B               loc_101688
MOVS            R1, #0x2B ; '+'
ADDS            R7, R0, #1
STRB            R1, [R6,R0]
LDR             R0, [SP,#0x48+var_44]
MOVS            R1, #0x3E8
CMP             R0, R1
BLT             loc_10169E
BLX             sub_2FEFCC
ADDS            R0, #0x30 ; '0'
STRB            R0, [R6,R7]
ADDS            R7, R7, #1
STR             R1, [SP,#0x48+var_44]
B               loc_1016A2
CMP             R0, #0x64 ; 'd'
BLT             loc_1016B4
LDR             R0, [SP,#0x48+var_44]
MOVS            R1, #0x64 ; 'd'
BLX             sub_2FEFCC
ADDS            R0, #0x30 ; '0'
STRB            R0, [R6,R7]
ADDS            R7, R7, #1
STR             R1, [SP,#0x48+var_44]
B               loc_1016B8
CMP             R0, #0xA
BLT             loc_1016C6
LDR             R0, [SP,#0x48+var_44]
MOVS            R1, #0xA
BLX             sub_2FEFCC
ADDS            R0, #0x30 ; '0'
STRB            R0, [R6,R7]
ADDS            R7, R7, #1
LDR             R0, [SP,#0x48+var_44]
MOVS            R1, #0xA
BLX             sub_2FEFCC
ADDS            R1, #0x30 ; '0'
STRB            R1, [R6,R7]
LDR             R0, [SP,#0x48+var_20]
LDR             R1, [R4,#0x18]
ADDS            R7, R7, #1
ADDS            R2, R7, R5
ADDS            R0, R2, R0
SUBS            R0, R1, R0
STR             R0, [R4,#0x18]
LDR             R0, [R4]
LSLS            R0, R0, #0x1B
BMI             loc_1016EC
MOVS            R0, R4
BL              sub_2FE050
LDR             R1, [R4,#0x20]
MOV             R6, SP
LDR             R0, [SP,#0x48+var_20]
ADDS            R0, R1, R0
STR             R0, [R4,#0x20]
B               loc_101702
LDR             R2, [R4,#4]
LDRB            R0, [R6]
LDR             R1, [R4,#8]
ADDS            R6, R6, #1
BLX             R2
LDR             R0, [SP,#0x48+var_20]
SUBS            R0, R0, #1
STR             R0, [SP,#0x48+var_20]
ADDS            R0, R0, #1
BNE             loc_1016F8
LDR             R0, [R4]
LSLS            R0, R0, #0x1B
BPL             loc_101718
MOVS            R0, R4
BL              sub_2FE050
ADD             R6, SP, #0x48+var_40
B               loc_101730
LDRB            R0, [R6]
ADDS            R6, R6, #1
CMP             R0, #0x3E ; '>'
BEQ             loc_101740
LDR             R2, [R4,#4]
LDR             R1, [R4,#8]
BLX             R2
LDR             R0, [R4,#0x20]
ADDS            R0, R0, #1
STR             R0, [R4,#0x20]
SUBS            R7, R7, #1
BCS             loc_10171C
MOVS            R0, R4
BL              sub_2FE07C
ADD             SP, SP, #0x34 ; '4'
MOVS            R0, #2
POP             {R4-R7,PC}
LDR             R0, [R4,#0x20]
ADDS            R0, R0, R5
STR             R0, [R4,#0x20]
B               loc_101750
LDR             R2, [R4,#4]
LDR             R1, [R4,#8]
MOVS            R0, #0x30 ; '0'
BLX             R2
SUBS            R5, R5, #1
BCC             loc_101730
B               loc_101748
