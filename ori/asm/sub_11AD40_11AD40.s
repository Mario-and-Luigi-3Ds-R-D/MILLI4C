PUSH            {R0-R11,LR}
SUB             SP, SP, #0x44
MOV             R4, #0
MOV             R7, R0
MOV             R9, R3
LDR             R10, [SP,#0x78+arg_0]
STR             R4, [SP,#0x78+var_40]
BL              sub_11A158
MOV             R11, R0
MOV             R0, #0
BL              sub_11A168
CMP             R11, #0x63 ; 'c'
BEQ             loc_11AED4
BL              sub_1234FC
BL              sub_11AB38
CMP             R11, #0x62 ; 'b'
BEQ             loc_11AF04
BL              sub_11B1B8
LDR             R0, [SP,#0x78+var_30]
MOV             R2, #0
ADD             R3, SP, #0x78+var_5C
STR             R0, [SP,#0x78+var_64]
LDR             R0, [SP,#0x78+var_2C]
STR             R2, [SP,#0x78+var_68]
ADD             R2, SP, #0x78+var_68
STR             R0, [SP,#0x78+var_60]
LDRD            R0, R1, [SP,#0x78+arg_8]
MOV             R6, #1
STR             R2, [SP,#0x78+var_74]
STRD            R0, R1, [SP,#0x78+var_70]
STR             R3, [SP,#0x78+var_78]
MOV             R8, R6
LDRD            R2, R3, [SP,#0x78+var_64]
ADD             R1, SP, #0x78+var_54
ADD             R0, SP, #0x78+var_58
BL              sub_12A600
LDR             R1, =0xFBC00000
MOV             R5, R0
CMP             R1, R5,LSL#22
BEQ             loc_11AE4C
ANDS            R0, R5, #0x80000000
BMI             loc_11AE24
LDR             R0, =byte_6D2498
LDR             R12, [R0,#(off_6D24E0 - 0x6D2498)]
CMP             R12, #0
BEQ             loc_11AE24
LDR             R2, [SP,#0x78+var_68]
LDR             R1, [SP,#0x78+var_60]
ADD             R4, SP, #0x78+var_58
STR             R2, [SP,#0x78+var_70]
LDR             R2, [SP,#0x78+var_5C]
STMEA           SP, {R1,R2}
LDR             R3, [SP,#0x78+var_64]
LDM             R4, {R1,R2}
LDR             R0, [R0,#(dword_6D2520 - 0x6D2498)]
BLX             R12
MOV             R8, R0
LDR             R0, [SP,#0x78+var_58]
CMP             R9, #0
LDRNE           R1, [SP,#0x78+var_5C]
LDR             R4, [SP,#0x78+var_54]
STR             R0, [SP,#0x78+var_40]
STRNE           R1, [R9]
CMP             R10, #0
LDRNE           R0, [SP,#0x78+var_68]
MOV             R6, R8
STRNE           R0, [R10]
SXTB            R0, R6
CMP             R0, #0
BEQ             loc_11AD88
CMP             R7, #0
LDRNE           R0, [SP,#0x78+var_40]
STRNE           R0, [R7]
ANDS            R0, R5, #0x80000000
BMI             loc_11AEB0
CMP             R4, #1
CMPNE           R4, #0xB
BEQ             loc_11AEA8
CMP             R4, #0xA
CMPNE           R4, #0xC
BEQ             loc_11AEA8
CMP             R4, #0xD
CMPNE           R4, #0xF
BEQ             loc_11AEA8
CMP             R4, #0xE
CMPNE           R4, #0x11
BEQ             loc_11AEA8
CMP             R4, #0x40 ; '@'
CMPNE           R4, #0x41 ; 'A'
BNE             loc_11AD88
NOP
BL              sub_11B5F0
LDR             R0, =0xFBC00000
CMP             R0, R5,LSL#22
MOVEQ           R0, #0xFFFFFFFF
BEQ             loc_11AEFC
BL              sub_11A0F8
CMP             R0, #0
NOP
BEQ             loc_11AF18
B               loc_11AF4C
CMP             R7, #0
STRNE           R4, [R7]
CMP             R9, #0
STRNE           R4, [R9]
CMP             R10, #0
BEQ             loc_11AEF8
LDR             R0, =dword_6D2450
LDR             R0, [R0]
STR             R0, [R10]
MOV             R0, #0
ADD             SP, SP, #0x54 ; 'T'
POP             {R4-R11,PC}
MOV             R0, #0
BL              sub_11A168
NOP
NOP
B               loc_11AD88
CMP             R11, #3
BEQ             loc_11AF4C
CMP             R4, #0xC
CMPNE           R4, #1
BEQ             loc_11AF4C
MOV             R0, #1
BL              sub_11AB4C
NOP
NOP
BL              sub_11B164
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
CMP             R4, #0xE
MOVEQ           R4, #6
BEQ             loc_11AF98
BGE             loc_11AFE8
CMP             R4, #0xB
MOVEQ           R4, #3
BEQ             loc_11AF98
BGE             loc_11AF84
CMP             R4, #1
BEQ             loc_11AF98
CMP             R4, #0xA
MOVEQ           R4, #2
BEQ             loc_11AF98
B               loc_11AF94
CMP             R4, #0xC
BEQ             loc_11B00C
CMP             R4, #0xD
BEQ             loc_11B02C
MOV             R4, #1
MOV             R0, #1
BL              sub_123358
CMP             R11, #0xE
CMPNE           R11, #5
MOVEQ           R0, #1
BLEQ            sub_123AC8
CMP             R4, #1
CMPNE           R4, #2
BEQ             loc_11B034
CMP             R4, #3
CMPNE           R4, #4
BEQ             loc_11B034
CMP             R4, #5
CMPNE           R4, #6
BEQ             loc_11B034
CMP             R4, #9
CMPNE           R4, #0x40 ; '@'
CMPNE           R4, #0x41 ; 'A'
BEQ             loc_11B034
B               loc_11B07C
CMP             R4, #0xF
BEQ             loc_11B088
CMP             R4, #0x11
MOVEQ           R4, #9
BEQ             loc_11B034
CMP             R4, #0x40 ; '@'
CMPNE           R4, #0x41 ; 'A'
BEQ             loc_11AF98
B               loc_11AF94
MOV             R4, #4
BL              sub_1193F8
NOP
NOP
BL              sub_11A7CC
NOP
NOP
B               loc_11B034
MOV             R4, #5
BL              sub_1193F8
MOV             R5, #0
BL              sub_11A0F8
CMP             R0, #0
MOVEQ           R5, #0x10
BEQ             loc_11B068
CMP             R0, #1
MOVEQ           R5, #0x20 ; ' '
BEQ             loc_11B068
CMP             R0, #2
MOVEQ           R5, #0x40 ; '@'
BEQ             loc_11B068
CMP             R0, #3
MOVEQ           R5, #0x80
MOV             R0, R5
BL              sub_11B138
NOP
NOP
BL              sub_11B1B8
CMP             R4, #7
BNE             loc_11B0B8
B               loc_11B0AC
MOV             R4, #7
MOV             R0, #1
BL              sub_11A188
MOV             R0, #1
NOP
BL              sub_11A668
NOP
NOP
B               loc_11AF98
MOV             R1, #1
MOV             R0, R1
BL              sub_11AD0C
CMP             R11, #0xE
CMPNE           R11, #4
BEQ             loc_11B0D0
CMP             R11, #5
CMPNE           R11, #0x12
BNE             loc_11B120
CMP             R4, #4
CMPNE           R4, #5
MOVNE           R0, #1
BLNE            sub_11AB4C
NOP
NOP
BL              sub_11A0F8
CMP             R0, #0
NOP
BNE             loc_11B120
CMP             R4, #7
BEQ             loc_11B120
MOV             R0, #0
BL              sub_11A188
MOV             R0, #1
NOP
BL              sub_11B138
NOP
NOP
BL              sub_11B1B8
ADD             SP, SP, #0x54 ; 'T'
MOV             R0, R4
POP             {R4-R11,PC}
