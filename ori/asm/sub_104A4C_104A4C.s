PUSH            {R4-R11,LR}
MOV             R4, R2
MOV             R7, R0
MOV             R0, R1
SUB             SP, SP, #0x2C
LDR             R1, [R1]
MOV             R2, #0x10000
LDR             R3, [R1,#0xC]
MOV             R1, R4
BLX             R3
MOV             R1, R0
MOV             R2, R4
MOV             R0, R7
BL              sub_108CA0
MOV             R0, #0x20000
BL              sub_10BB20
ADD             R4, R0, #1
MOV             R0, #0x20000
BL              sub_10BB5C
MOV             R8, #0
MOV             R2, R0
MOV             R3, R4
MOV             R1, #0x20000
ADD             R0, R7, #0x14
STR             R8, [SP,#0x50+var_50]
BL              sub_106BCC
MOV             R0, #0x30000
BL              sub_10BB20
ADD             R4, R0, #1
MOV             R0, #0x30000
BL              sub_10BB5C
MOV             R2, R0
MOV             R3, R4
MOV             R1, #0x30000
ADD             R0, R7, #0xA0
STR             R8, [SP,#0x50+var_50]
BL              sub_106BCC
ADD             R3, R7, #0x130
ADD             R0, R7, #0x14
ADD             R1, R7, #0xA0
STM             R3, {R0,R1}
LDR             R1, =sub_109714
LDR             R0, =sub_109790
STR             R7, [R7,#0x12C]
BL              sub_10BBAC
LDR             R0, =off_6B7E14
LDR             R10, =dword_6E9820
STR             R8, [SP,#0x50+var_48]
STR             R0, [SP,#0x50+var_44]
STR             R8, [SP,#0x50+var_38]
STR             R8, [SP,#0x50+var_30]
STR             R8, [SP,#0x50+var_2C]
LDR             R1, [R10,#(dword_6E994C - 0x6E9820)]
ADD             R0, SP, #0x50+var_44
STR             R0, [R10,#(dword_6E994C - 0x6E9820)]
MOV             R0, R1
STR             R1, [SP,#0x50+var_2C]
LDR             R1, [R1]
MOV             R5, #0x20000
ADD             R4, SP, #0x50+var_48
MOV             R6, #0x10000
LDR             R3, [R1,#0xC]
MOV             R9, #0x20 ; ' '
MOV             R2, #0x810000
MOV             R1, R5
BLX             R3
MOV             R1, R0
STR             R0, [SP,#0x50+var_48]
MOV             R2, R5
ADD             R0, R4, #4
BL              sub_108CA0
ADD             R1, R4, #0x18
MOV             R0, #1
BL              sub_10B6DC
LDR             R4, [SP,#0x50+var_30]
LDR             R0, =0x207
MOV             R1, SP
STR             R8, [SP,#0x50+var_50]
STRB            R8, [SP,#0x50+var_4C]
BL              sub_10B948
MOV             R0, R4
BL              sub_10AEA0
MOV             R0, #1
STRB            R0, [SP,#0x50+var_4C]
LDR             R0, [SP,#0x50+var_30]
BL              sub_10AEA0
MOV             R1, R9
MOV             R0, R6
BL              sub_10B110
LDRB            R0, [SP,#0x50+var_4C]
CMP             R0, #0
LDRNE           R0, [SP,#0x50+var_50]
BLNE            sub_10AEA0
LDR             R0, =dword_6E9820
LDR             R1, [SP,#0x50+var_2C]
STR             R1, [R0,#(dword_6E994C - 0x6E9820)]
LDR             R0, [SP,#0x50+var_30]
BL              sub_10AEA0
BL              sub_10C868
ADD             R4, R7, #0x138
MOV             R1, R4
MOV             R0, #1
BL              sub_10A8E8
ADD             R1, R4, #4
MOV             R0, #2
BL              sub_10AB20
LDR             R10, =0x8D40
LDR             R1, [R4]
MOV             R0, R10
BL              sub_116200
MOV             R0, #0x100
STR             R0, [R4,#0xC]
MOV             R0, #0x1A0
STR             R0, [R4,#0x10]
LDR             R5, [R4,#4]
ORR             R6, R10, R0,ASR#8
MOV             R8, #0xF0
MOV             R1, R5
MOV             R0, R6
BL              sub_10A37C
LDR             R1, =0x8058
ADD             R0, R6, #0x20000
LDRD            R2, R3, [R4,#0xC]
BL              sub_10AD58
MOV             R3, R5
MOV             R2, R6
SUB             R1, R6, #0x61 ; 'a'
MOV             R0, R10
BL              sub_10A824
LDR             R5, [R4,#8]
MOV             R0, R6
MOV             R1, R5
BL              sub_10A37C
ADD             R1, R8, #0x8800
ADD             R0, R6, #0x30000
LDRD            R2, R3, [R4,#0xC]
BL              sub_10AD58
LDR             R1, =0x821A
MOV             R3, R5
MOV             R2, R6
MOV             R0, R10
BL              sub_10A824
LDR             R10, =unk_65801E
LDR             R9, =0x8051
MOV             R6, #0
ADD             R11, R10, #0xE
LDRB            R0, [R10,R6]
ADD             R1, R0, R0,LSL#1
LDR             R0, [R11,R0,LSL#2]
ADD             R4, R7, R1,LSL#3
CMP             R0, #0x400
STR             R0, [R4,#0x14C]!
BEQ             loc_104CD8
SUB             R0, R0, #0x400
SUBS            R0, R0, #1
BEQ             loc_104CC8
CMP             R0, #0xF
BNE             loc_104CE4
B               loc_104CD8
MOV             R0, #0x140
STR             R0, [R4,#0x14]
STR             R8, [R4,#0x10]
B               loc_104CE4
MOV             R0, #0x190
STR             R0, [R4,#0x14]
STR             R8, [R4,#0x10]
LDR             R0, [R4,#0x10]
ADD             R0, R0, #0x1F
BIC             R0, R0, #0x1F
STR             R0, [R4,#0x10]
LDR             R0, [R4,#0x14]
ADD             R0, R0, #0x1F
BIC             R0, R0, #0x1F
STR             R0, [R4,#0x14]
LDR             R0, [R4]
BL              sub_10AE68
ADD             R1, R4, #8
MOV             R0, #2
BL              sub_10B810
MOV             R5, #0
ADD             R0, R4, R5,LSL#2
LDR             R0, [R0,#8]
BL              sub_10B008
ADD             R1, R4, #0x10
MOV             R3, #0x10000
LDM             R1, {R1,R2}
MOV             R0, R9
BL              sub_10B48C
ADD             R5, R5, #1
CMP             R5, #2
BCC             loc_104D1C
MOV             R1, #0
MOV             R0, R1
BL              sub_10B468
ADD             R6, R6, #1
CMP             R6, #3
BLT             loc_104C94
LDR             R0, =unk_6E8F28
BL              sub_108EDC
LDR             R0, =unk_6E8F28
NOP
BL              sub_108E7C
LDR             R0, =unk_6E8F28
MOV             R5, #0
MOV             R1, #0x400000
MOV             R4, R5
VLDR            S0, =-1.0
STR             R1, [R0,#(dword_6E97C4 - 0x6E8F28)]
BL              sub_109208
LDR             R0, =unk_6E8F28
MOV             R1, R4
STR             R1, [R0,#(dword_6E97C8 - 0x6E8F28)]
LDR             R2, =nullsub_325
LDR             R0, =0x4FE74FB0
MOV             R1, #0
BL              sub_10C8C8
NOP
NOP
BL              sub_1164E4
NOP
NOP
BL              sub_10C984
LDR             R0, [SP,#0x50+var_48]
ADD             R1, SP, #0x50+var_48
CMP             R0, #0
BEQ             loc_104E10
LDR             R6, =dword_6E9820
ADD             R0, R1, #4
ADD             R1, R1, #0x18
LDR             R4, [R6,#(dword_6E994C - 0x6E9820)]
STR             R0, [R6,#(dword_6E994C - 0x6E9820)]
MOV             R0, #1
BL              sub_10B1F8
LDR             R0, [SP,#0x50+var_48]
STR             R5, [SP,#0x50+var_30]
STR             R5, [SP,#0x50+var_38]
CMP             R0, #0
BEQ             loc_104E0C
BL              sub_110D10
STR             R5, [SP,#0x50+var_48]
STR             R4, [R6,#(dword_6E994C - 0x6E9820)]
ADD             SP, SP, #0x2C ; ','
POP             {R4-R11,PC}
