CMP             R0, #0
BXEQ            LR
PUSH            {R4-R12,LR}
MOV             R5, R0
MOV             R10, R1
LDR             R8, =off_6D2420
LDR             R7, =off_6D2428
LDR             R0, [R8]
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_10ABC0
LDR             R0, [R0,#0x40]
MOV             R9, #0
MOV             R6, #2
CMP             R0, #1
BEQ             loc_10ABB4
LDR             R12, [R7]
CMP             R12, #0
MOVEQ           R4, #0
BEQ             loc_10AB90
MOV             R3, #0x48 ; 'H'
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R4, R0
MOVNE           R1, #0x48 ; 'H'
BLNE            sub_2FFE8C
MOV             R0, #1
STR             R0, [R10]
MOV             R9, R0
STR             R0, [R4,#0x40]
LDR             R0, [R8]
SUB             R5, R5, #1
LDR             R1, [R0,#4]
STR             R1, [R4,#0x44]
STR             R4, [R0,#4]
LDR             R0, [R8]
LDR             R4, [R0,#4]
B               loc_10ACC4
MOV             R6, #0
CMP             R5, #0
MOV             R4, R6
BLS             locret_10AC30
LDR             R12, [R7]
CMP             R12, #0
MOVEQ           R9, #0
BEQ             loc_10AC00
MOV             R3, #0x48 ; 'H'
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R9, R0
MOVNE           R1, #0x48 ; 'H'
BLNE            sub_2FFE8C
CMP             R6, #0
LDREQ           R1, [R8]
MOV             R0, R9
STRNE           R0, [R6,#0x44]
MOV             R6, R0
STREQ           R0, [R1,#4]
ADD             R1, R4, #1
STR             R1, [R10,R4,LSL#2]
ADD             R4, R4, #1
CMP             R4, R5
STR             R1, [R0,#0x40]
BCC             loc_10ABD0
POP             {R4-R12,PC}
LDR             R0, [R8,#0x40]
CMP             R0, R6
MOVHI           R11, #0
BHI             loc_10ACA0
B               loc_10ACBC
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R7, #0
BEQ             loc_10AC7C
MOV             R3, #0x48 ; 'H'
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R7, R0
MOVNE           R1, #0x48 ; 'H'
BLNE            sub_2FFE8C
ADD             R0, R11, R6
STR             R0, [R7,#0x40]
STR             R0, [R10,R9,LSL#2]
STR             R7, [R4,#0x44]
SUB             R5, R5, #1
ADD             R11, R11, #1
ADD             R9, R9, #1
MOV             R4, R7
STR             R8, [R7,#0x44]
LDR             R0, [R8,#0x40]
SUB             R0, R0, R6
CMP             R0, R11
BLS             loc_10ACB8
CMP             R5, #0
BNE             loc_10AC48
LDR             R6, [R8,#0x40]
MOV             R4, R8
ADD             R6, R6, #1
LDR             R8, [R4,#0x44]
CMP             R8, #0
BEQ             loc_10ACDC
CMP             R5, #0
BNE             loc_10AC34
POP             {R4-R12,PC}
CMP             R5, #0
LDRHI           R11, =off_6D2428
MOVNE           R8, #0
BEQ             locret_10AC30
BLS             loc_10AD44
LDR             R12, [R11]
CMP             R12, #0
MOVEQ           R7, #0
BEQ             loc_10AD20
MOV             R3, #0x48 ; 'H'
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R7, R0
MOVNE           R1, #0x48 ; 'H'
BLNE            sub_2FFE8C
STR             R7, [R4,#0x44]
STR             R6, [R7,#0x40]
STR             R6, [R10,R9,LSL#2]
ADD             R8, R8, #1
CMP             R8, R5
MOV             R4, R7
ADD             R6, R6, #1
ADD             R9, R9, #1
BCC             loc_10ACF0
MOV             R0, #0
STR             R0, [R4,#0x44]
POP             {R4-R12,PC}
