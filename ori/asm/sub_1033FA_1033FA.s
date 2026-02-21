PUSH            {R4-R7,LR}
MOVS            R6, R0
SUB             SP, SP, #0x14
ADD             R0, SP, #0x28+var_20
BL              sub_103078
LDR             R1, [SP,#0x28+var_20]
MOVS            R2, #2
MOV             R0, SP
BL              sub_301784
ADD             R0, SP, #0x28+var_20
BL              sub_3015EC
MOVS            R4, #0
MOVS            R5, #0xFF
LSLS            R2, R4, #0x18
LSRS            R2, R2, #0x18
MOVS            R1, #0x10
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BNE             loc_10343E
B               loc_103444
LSLS            R2, R5, #0x18
LSRS            R2, R2, #0x18
MOVS            R1, #0x10
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BNE             loc_10344A
SUBS            R5, R5, #1
CMP             R5, R4
BHI             loc_10342C
B               loc_10344A
ADDS            R4, R4, #1
CMP             R4, R5
BCC             loc_10341A
STR             R5, [R6,#0x20]
STR             R4, [R6,#0x1C]
LDR             R7, [R6,#0x2C]
B               loc_10348C
MOVS            R0, R4
SUBS            R0, #0x61 ; 'a'
CMP             R0, #0x19
BHI             loc_103484
LSLS            R2, R4, #0x18
LSRS            R2, R2, #0x18
MOVS            R1, #0x10
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BEQ             loc_103484
MOVS            R0, R4
SUBS            R0, #0x20 ; ' '
LSLS            R2, R0, #0x18
STR             R0, [SP,#0x28+var_1C]
LSRS            R2, R2, #0x18
MOVS            R1, #8
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BEQ             loc_103484
LDR             R0, [SP,#0x28+var_1C]
B               loc_103486
MOVS            R0, R4
STRB            R0, [R7]
ADDS            R7, R7, #1
ADDS            R4, R4, #1
CMP             R4, R5
BLS             loc_103452
MOVS            R4, #0
MOVS            R5, #0xFF
LSLS            R2, R4, #0x18
LSRS            R2, R2, #0x18
MOVS            R1, #8
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BNE             loc_1034B8
B               loc_1034BE
LSLS            R2, R5, #0x18
LSRS            R2, R2, #0x18
MOVS            R1, #8
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BNE             loc_1034C4
SUBS            R5, R5, #1
CMP             R5, R4
BHI             loc_1034A6
B               loc_1034C4
ADDS            R4, R4, #1
CMP             R4, R5
BCC             loc_103494
STR             R5, [R6,#0x28]
STR             R4, [R6,#0x24]
LDR             R7, [R6,#0x30]
B               loc_103506
MOVS            R0, R4
SUBS            R0, #0x41 ; 'A'
CMP             R0, #0x19
BHI             loc_1034FE
LSLS            R2, R4, #0x18
LSRS            R2, R2, #0x18
MOVS            R1, #8
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BEQ             loc_1034FE
MOVS            R0, R4
ADDS            R0, #0x20 ; ' '
LSLS            R2, R0, #0x18
STR             R0, [SP,#0x28+var_1C]
LSRS            R2, R2, #0x18
MOVS            R1, #0x10
MOVS            R0, R6
BL              sub_301998
CMP             R0, #0
BEQ             loc_1034FE
LDR             R0, [SP,#0x28+var_1C]
B               loc_103500
MOVS            R0, R4
STRB            R0, [R7]
ADDS            R7, R7, #1
ADDS            R4, R4, #1
CMP             R4, R5
BLS             loc_1034CC
MOV             R0, SP
BL              sub_3017BC
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
