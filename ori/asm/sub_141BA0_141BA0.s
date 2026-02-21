PUSH            {R0-R10,LR}
MOV             R4, R2
MOV             R6, R0
MOV             R7, R1
BL              sub_13DF78
CMP             R0, #0
BEQ             loc_141D24
LDR             R5, [R4]
LDR             R2, [R4,#4]
LDRH            R8, [R4,#0x12]
ADD             R0, R5, #0xEC000000
CMP             R0, #0x8000000
BCS             loc_141D20
LDR             R0, [SP,#0x30+var_24]
MOV             R3, R5
UXTH            R12, R0
TST             R12, #0xC
BNE             loc_141BFC
AND             R0, R12, #3
CMP             R0, #1
ADDEQ           R3, R5, R2
CMP             R0, #2
ADDEQ           R3, R3, R2,LSL#1
MOV             R0, R12,LSL#28
MOV             R1, #1
CMP             R1, R0,LSR#30
BNE             loc_141C20
AND             R1, R12, #3
CMP             R1, #1
ADDEQ           R3, R3, R2,LSL#1
CMP             R1, #2
ADDEQ           R3, R3, R2,LSL#2
MOV             R1, #2
CMP             R1, R0,LSR#30
ANDEQ           R0, R12, #3
CMPEQ           R0, #1
MOV             LR, #0
BNE             loc_141C54
LDR             R9, =0x92492493
ADD             R0, R2, #0xD
MOV             R12, LR
SMLAL           R12, R0, R9, R0
MOV             R12, R0,ASR#3
SUB             R0, R12, R0,ASR#31
ADD             R3, R3, R0,LSL#3
CMP             R3, #0x14000000
BLS             loc_141D20
CMP             R3, #0x1C000000
BHI             loc_141D20
LDR             R3, =0x131A
ADD             R0, R5, #0xC000000
MOV             R2, R2,ROR#16
LDRH            R3, [R3,R6]
AND             R3, R3, #1
ADD             R3, R3, R3,LSL#1
ADD             R3, R6, R3,LSL#5
ADD             R3, R3, R7,LSL#2
ADD             R3, R3, #0x1000
LDR             R5, [R3,#0xB0]
MOV             R3, R0,ROR#16
ADD             R0, R5, #0xAC
STRH            R8, [R5,#0xBE]
STR             R2, [R5,#0xB0]
STR             R3, [R5,#0xAC]
LDRH            R2, [SP,#0x30+var_24]
STRH            R2, [R5,#0xB4]
LDRSB           R3, [R4,#0x10]
LDRH            R2, [R5,#0xBC]
AND             R3, R1, R3,LSL#1
BIC             R2, R2, #2
ORR             R2, R2, R3
STRH            R2, [R5,#0xBC]
LDRH            R2, [SP,#0x30+var_24]
MOV             R2, R2,LSL#28
CMP             R1, R2,LSR#30
BNE             loc_141D38
LDR             R1, [R4,#8]
CMP             R1, #0
BEQ             loc_141D2C
SUB             R1, R1, #2
ADD             R3, R0, #0xA
LDRH            R2, [R1,#2]!
MOV             R12, #1
STRH            R2, [R0,#0xA]
LDRH            R2, [R1,#2]
SUBS            R12, R12, #1
STRH            R2, [R3,#2]
LDRH            R2, [R1,#4]!
STRH            R2, [R3,#4]!
BNE             loc_141CF0
LDR             R1, [R4,#8]
CMP             R1, #0
LDRHNE          R1, [R0,#0x10]
ORRNE           R1, R1, #1
BNE             loc_141D34
B               loc_141D2C
MOV             R0, #0
ADD             SP, SP, #0x10
POP             {R4-R10,PC}
LDRH            R1, [R0,#0x10]
BIC             R1, R1, #1
STRH            R1, [R0,#0x10]
LDR             R0, [R5]
ORR             R0, R0, #0x40000000
ORR             R0, R0, #0x200000
STR             R0, [R5],#0xA4
MOV             R0, #1
STR             LR, [R5]
ADD             SP, SP, #0x10
POP             {R4-R10,PC}
