PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R3, #0x10000
MOV             R2, #0
LDR             R8, =off_6CE970
LDR             R0, [R8]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x1338
BL              sub_10A358
CMP             R0, #0
BEQ             locret_143ED8
MOV             R9, #0
LDR             R1, =off_6BDD80
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
BL              sub_38A3F0
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x184
BL              sub_38B510
ADD             R0, R0, #0x1B4
BL              sub_38A564
ADD             R0, R0, #0x15C
BL              sub_38AD3C
SUB             R4, R0, #0x1000
SUB             R4, R4, #0x1A0
LDR             R0, =off_6C3768
ADD             R6, R4, #0x1000
ADD             R6, R6, #0x2DC
ADD             R5, R4, #0x1000
ADD             R5, R5, #0x2E4
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
BL              sub_38A388
ADD             R0, R4, #0x1000
ADD             R5, R4, #0x10C
ADD             R0, R0, #0x44 ; 'D'
ADD             R1, R4, #0x10C
MOV             R7, R0
STR             R5, [R4,#0xEEC]
STR             R1, [R0,#4]
LDR             R0, =0x11FC
ADDS            R2, R4, #0xE90
STR             R5, [R0,R4]
BEQ             loc_143DA0
LDR             R3, [R6,#0x58]
LDR             R12, [R6,#0x54]
LDR             R1, [R6,#0x4C]
SUB             R0, R3, R12
MOV             R0, R0,ASR#2
SUB             R5, R0, #1
LDR             R0, [R6,#0x50]
CMP             R0, R1
SUBCS           R1, R0, R1
MOVCS           R1, R1,ASR#2
BCS             loc_143D54
SUB             R1, R3, R1
SUB             R3, R0, R12
MOV             R1, R1,ASR#2
ADD             R1, R1, R3,ASR#2
CMP             R5, R1
BLS             loc_143DA0
STR             R2, [R0]
LDR             R0, [R6,#0x50]
LDR             R1, [R6,#0x58]
LDR             R2, [R6,#0x54]
ADD             R0, R0, #4
CMP             R1, R0
BHI             loc_143D88
SUB             R1, R2, R1
BIC             R1, R1, #3
ADD             R0, R0, R1
B               loc_143D9C
CMP             R2, R0
BLS             loc_143D9C
SUB             R1, R1, R2
BIC             R1, R1, #3
ADD             R0, R0, R1
STR             R0, [R6,#0x50]
CMP             R7, #0
BEQ             loc_143E30
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
BCS             loc_143DE4
SUB             R1, R2, R1
SUB             R2, R0, R3
MOV             R1, R1,ASR#2
ADD             R1, R1, R2,ASR#2
CMP             R12, R1
BLS             loc_143E30
STR             R7, [R0]
LDR             R0, [R6,#0x50]
LDR             R1, [R6,#0x58]
LDR             R2, [R6,#0x54]
ADD             R0, R0, #4
CMP             R1, R0
BHI             loc_143E18
SUB             R1, R2, R1
BIC             R1, R1, #3
ADD             R0, R0, R1
B               loc_143E2C
CMP             R2, R0
BLS             loc_143E2C
SUB             R1, R1, R2
BIC             R1, R1, #3
ADD             R0, R0, R1
STR             R0, [R6,#0x50]
ADD             R1, R4, #0x1000
ADDS            R1, R1, #0x1A0
BEQ             loc_143EC4
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
BCS             loc_143E78
SUB             R2, R12, R2
SUB             R3, R0, R3
MOV             R2, R2,ASR#2
ADD             R2, R2, R3,ASR#2
CMP             R5, R2
BLS             loc_143EC4
STR             R1, [R0]
LDR             R0, [R6,#0x50]
LDR             R1, [R6,#0x58]
LDR             R2, [R6,#0x54]
ADD             R0, R0, #4
CMP             R1, R0
BHI             loc_143EAC
SUB             R1, R2, R1
BIC             R1, R1, #3
ADD             R0, R0, R1
B               loc_143EC0
CMP             R2, R0
BLS             loc_143EC0
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
