PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R3, #0x10000
MOV             R2, #0
LDR             R9, =off_6CE970
LDR             R0, [R9]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x36614
BL              sub_10A358
CMP             R0, #0
BEQ             locret_148AD8
MOV             R7, #0
LDR             R1, =off_6BEE9C
STRB            R7, [R0,#4]
STRB            R7, [R0,#5]
STRH            R7, [R0,#6]
MOV             R10, R4
STR             R1, [R0],#8
BL              sub_14CB8C
LDR             R1, =off_6C3078
STR             R1, [R0]
STR             R7, [R0,#0x100]
STRB            R7, [R0,#0xF2]
ADD             R0, R0, #0x104
BL              sub_407D84
ADD             R5, R0, #0x36000
LDR             R8, =off_6C3768
ADD             R5, R5, #0x188
ADD             R4, R0, #0x36000
SUB             R6, R0, #0x10C
ADD             R4, R4, #0x190
STR             R7, [R5,#4]
MOV             R1, #0x44 ; 'D'
MOV             R0, R4
STR             R8, [R5]
BL              sub_2FFE8C
STR             R4, [R4,#0x48]
ADD             R0, R4, #0x44 ; 'D'
STR             R4, [R4,#0x44]
STR             R0, [R4,#0x50]
LDR             R0, =off_6BEC5C
MOV             R2, #0xFFFFFF00
STR             R4, [R4,#0x4C]
STR             R0, [R5]
REV             R2, R2
STR             R7, [R5,#0x5C]
STR             R7, [R5,#0x60]
LDR             R1, =off_6C3B20
STR             R2, [R5,#0x6C]
MOV             R2, #0xFFFFFF00
STR             R1, [R5,#0x64]
REV             R2, R2
STR             R7, [R5,#0x68]
STR             R2, [R5,#0x70]
MOV             R2, #0xFFFFFF00
VLDR            S0, =0.0
REV             R2, R2
VSTR            S0, [R5,#0x74]
STR             R2, [R5,#0x78]
MOV             R2, #0xFFFFFF00
ADD             R0, R5, #0x64 ; 'd'
REV             R2, R2
ADD             R1, R5, #0x84
STR             R2, [R0,#0x18]
VSTR            S0, [R0,#0x1C]
LDR             R0, =off_6BEC38
STM             R1, {R0,R7}
ADD             R0, R6, #0x36000
ADD             R0, R0, #0x324
STR             R7, [R5,#0x8C]
BL              sub_408E90
ADD             R0, R0, #0x158
BL              sub_409884
SUB             R4, R0, #0x36400
STR             R7, [R0,#0x140]
ADD             R6, R0, #0x13C
ADD             R5, R0, #0x144
STR             R8, [R0,#0x13C]
SUB             R4, R4, #0x7C ; '|'
MOV             R1, #0x44 ; 'D'
MOV             R0, R5
BL              sub_2FFE8C
STR             R5, [R5,#0x48]
ADD             R0, R5, #0x44 ; 'D'
STR             R5, [R5,#0x44]
STR             R0, [R5,#0x50]
STR             R5, [R5,#0x4C]
STR             R7, [R4,#0x108]
LDR             R1, [R4,#0x14]
ADD             R0, R4, #8
CMP             R1, #0
MOVEQ           R1, #0
BLEQ            sub_14C3E8
LDR             R0, [R9]
MOV             R2, R10
ADD             R1, R0, #0x68 ; 'h'
ADD             R0, R4, #0x10C
BL              sub_407A0C
LDR             R0, =0x362F0
ADD             R5, R4, #0x10C
ADD             R1, R4, #0x10C
STR             R5, [R0,R4]
ADD             R0, R4, #0x36000
ADD             R0, R0, #0x324
MOV             R7, R0
STR             R1, [R0,#4]
LDR             R0, =0x364D8
ADD             R1, R4, #0x36000
ADDS            R1, R1, #0x294
STR             R5, [R0,R4]
BEQ             loc_1489A4
LDR             R3, [R6,#0x58]
LDR             R12, [R6,#0x54]
LDR             R2, [R6,#0x4C]
SUB             R0, R3, R12
MOV             R0, R0,ASR#2
SUB             R5, R0, #1
LDR             R0, [R6,#0x50]
CMP             R0, R2
SUBCS           R2, R0, R2
MOVCS           R2, R2,ASR#2
BCS             loc_148958
SUB             R2, R3, R2
SUB             R3, R0, R12
MOV             R2, R2,ASR#2
ADD             R2, R2, R3,ASR#2
CMP             R5, R2
BLS             loc_1489A4
STR             R1, [R0]
LDR             R0, [R6,#0x50]
LDR             R1, [R6,#0x58]
LDR             R2, [R6,#0x54]
ADD             R0, R0, #4
CMP             R1, R0
BHI             loc_14898C
SUB             R1, R2, R1
BIC             R1, R1, #3
ADD             R0, R0, R1
B               loc_1489A0
CMP             R2, R0
BLS             loc_1489A0
SUB             R1, R1, R2
BIC             R1, R1, #3
ADD             R0, R0, R1
STR             R0, [R6,#0x50]
CMP             R7, #0
BEQ             loc_148A30
LDRD            R2, R3, [R6,#0x54]
LDR             R1, [R6,#0x4C]
SUB             R0, R3, R2
MOV             R0, R0,ASR#2
SUB             R12, R0, #1
LDR             R0, [R6,#0x50]
CMP             R0, R1
SUBCS           R1, R0, R1
MOVCS           R1, R1,ASR#2
BCS             loc_1489E4
SUB             R1, R3, R1
SUB             R2, R0, R2
MOV             R1, R1,ASR#2
ADD             R1, R1, R2,ASR#2
CMP             R12, R1
BLS             loc_148A30
STR             R7, [R0]
LDR             R0, [R6,#0x50]
LDR             R1, [R6,#0x58]
LDR             R2, [R6,#0x54]
ADD             R0, R0, #4
CMP             R1, R0
BHI             loc_148A18
SUB             R1, R2, R1
BIC             R1, R1, #3
ADD             R0, R0, R1
B               loc_148A2C
CMP             R2, R0
BLS             loc_148A2C
SUB             R1, R1, R2
BIC             R1, R1, #3
ADD             R0, R0, R1
STR             R0, [R6,#0x50]
ADD             R1, R4, #0x36400
ADDS            R1, R1, #0x7C ; '|'
BEQ             loc_148AC4
ADD             R3, R6, #0x54 ; 'T'
LDR             R2, [R6,#0x4C]
LDM             R3, {R3,R12}
SUB             R0, R12, R3
MOV             R0, R0,ASR#2
SUB             R5, R0, #1
LDR             R0, [R6,#0x50]
CMP             R0, R2
SUBCS           R2, R0, R2
MOVCS           R2, R2,ASR#2
BCS             loc_148A78
SUB             R2, R12, R2
SUB             R3, R0, R3
MOV             R2, R2,ASR#2
ADD             R2, R2, R3,ASR#2
CMP             R5, R2
BLS             loc_148AC4
STR             R1, [R0]
LDR             R0, [R6,#0x50]
LDR             R1, [R6,#0x58]
LDR             R2, [R6,#0x54]
ADD             R0, R0, #4
CMP             R1, R0
BHI             loc_148AAC
SUB             R1, R2, R1
BIC             R1, R1, #3
ADD             R0, R0, R1
B               loc_148AC0
CMP             R2, R0
BLS             loc_148AC0
SUB             R1, R1, R2
BIC             R1, R1, #3
ADD             R0, R0, R1
STR             R0, [R6,#0x50]
LDR             R1, [R6]
MOV             R0, R6
LDR             R1, [R1,#0x14]
BLX             R1
MOV             R0, R4
POP             {R4-R10,PC}
