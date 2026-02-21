PUSH            {R4-R10,LR}
MOV             R4, R0
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E238B - 0x6E2378)]
CMP             R0, #1
BEQ             loc_144094
LDR             R8, =off_6CE970
MOV             R3, #0x10000
MOV             R2, #0
LDR             R0, [R8]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x1AC4
BL              sub_10A358
CMP             R0, #0
BEQ             locret_1441F0
MOV             R9, #0
LDR             R1, =off_6BE06C
STRB            R9, [R0,#4]
STRB            R9, [R0,#5]
STRH            R9, [R0,#6]
MOV             R7, R4
STR             R1, [R0],#8
BL              sub_14CB8C
LDR             R1, =off_6C3078
STR             R1, [R0]
STR             R9, [R0,#0x100]
STRB            R9, [R0,#0xF2]
ADD             R0, R0, #0x104
BL              sub_394D64
ADD             R0, R0, #0x1400
ADD             R0, R0, #0xAC
BL              sub_3961F0
ADD             R0, R0, #0x220
BL              sub_394FF0
ADD             R0, R0, #0x154
BL              sub_39595C
SUB             R4, R0, #0x1800
SUB             R4, R4, #0x12C
LDR             R0, =off_6C3768
ADD             R6, R4, #0x1800
ADD             R6, R6, #0x268
ADD             R5, R4, #0x1000
ADD             R5, R5, #0xA70
STM             R6, {R0,R9}
MOV             R1, #0x44 ; 'D'
MOV             R0, R5
BL              sub_2FFE8C
STR             R5, [R5,#0x48]
ADD             R0, R5, #0x44 ; 'D'
STR             R5, [R5,#0x44]
STR             R0, [R5,#0x50]
STR             R5, [R5,#0x4C]
STR             R9, [R4,#0x108]
LDR             R1, [R4,#0x14]
ADD             R0, R4, #8
CMP             R1, #0
MOVEQ           R1, #0
BLEQ            sub_14C3E8
LDR             R0, [R8]
MOV             R2, R7
ADD             R1, R0, #0x68 ; 'h'
ADD             R0, R4, #0x10C
BL              sub_394CB0
LDR             R0, =0x1614
ADD             R5, R4, #0x10C
ADD             R1, R4, #0x10C
STR             R5, [R0,R4]
ADD             R0, R4, #0x1400
ADD             R0, R0, #0x3D8
MOV             R7, R0
STR             R1, [R0,#4]
LDR             R0, =0x1988
ADD             R1, R4, #0x1400
ADDS            R1, R1, #0x1B8
STR             R5, [R0,R4]
BEQ             loc_1440B8
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
BCS             loc_144060
SUB             R2, R3, R2
SUB             R3, R0, R12
MOV             R2, R2,ASR#2
ADD             R2, R2, R3,ASR#2
CMP             R5, R2
BLS             loc_1440B8
STR             R1, [R0]
LDR             R0, [R6,#0x50]
LDR             R1, [R6,#0x58]
LDR             R2, [R6,#0x54]
ADD             R0, R0, #4
CMP             R1, R0
BHI             loc_1440A0
SUB             R1, R2, R1
BIC             R1, R1, #3
ADD             R0, R0, R1
B               loc_1440B4
MOV             R0, R4
POP             {R4-R10,LR}
B               sub_148760
CMP             R2, R0
BLS             loc_1440B4
SUB             R1, R1, R2
BIC             R1, R1, #3
ADD             R0, R0, R1
STR             R0, [R6,#0x50]
CMP             R7, #0
BEQ             loc_144148
LDR             R2, [R6,#0x58]
LDR             R3, [R6,#0x54]
LDR             R1, [R6,#0x4C]
SUB             R0, R2, R3
MOV             R0, R0,ASR#2
SUB             R12, R0, #1
LDR             R0, [R6,#0x50]
CMP             R0, R1
SUBCS           R1, R0, R1
MOVCS           R1, R1,ASR#2
BCS             loc_1440FC
SUB             R1, R2, R1
SUB             R2, R0, R3
MOV             R1, R1,ASR#2
ADD             R1, R1, R2,ASR#2
CMP             R12, R1
BLS             loc_144148
STR             R7, [R0]
LDR             R0, [R6,#0x50]
LDR             R1, [R6,#0x58]
LDR             R2, [R6,#0x54]
ADD             R0, R0, #4
CMP             R1, R0
BHI             loc_144130
SUB             R1, R2, R1
BIC             R1, R1, #3
ADD             R0, R0, R1
B               loc_144144
CMP             R2, R0
BLS             loc_144144
SUB             R1, R1, R2
BIC             R1, R1, #3
ADD             R0, R0, R1
STR             R0, [R6,#0x50]
ADD             R1, R4, #0x1800
ADDS            R1, R1, #0x12C
BEQ             loc_1441DC
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
BCS             loc_144190
SUB             R2, R3, R2
SUB             R3, R0, R12
MOV             R2, R2,ASR#2
ADD             R2, R2, R3,ASR#2
CMP             R5, R2
BLS             loc_1441DC
STR             R1, [R0]
LDR             R0, [R6,#0x50]
LDR             R1, [R6,#0x58]
LDR             R2, [R6,#0x54]
ADD             R0, R0, #4
CMP             R1, R0
BHI             loc_1441C4
SUB             R1, R2, R1
BIC             R1, R1, #3
ADD             R0, R0, R1
B               loc_1441D8
CMP             R2, R0
BLS             loc_1441D8
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
