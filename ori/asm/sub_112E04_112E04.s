PUSH            {R4-R8,LR}
MOV             R5, R0
ADD             R0, R0, #0x7000
SUB             SP, SP, #0x60
LDRH            R0, [R0,#0x20]
CMP             R0, #0
BEQ             loc_113010
ADD             R0, R5, #0x7000
ADD             R0, R0, #0x20 ; ' '
MOV             R4, #0
MOV             R2, #8
ADR             R1, aRom_0; "rom:"
MOV             R6, R0
BL              sub_1004F0
CMP             R0, #0
LDREQ           R0, =off_6BFDFC
ADDEQ           R1, SP, #0x78+var_70
BNE             loc_113010
MOV             R7, #0
STR             R7, [SP,#0x78+var_6C]
STR             R7, [SP,#0x78+var_68]
STR             R7, [SP,#0x78+var_64]
STR             R7, [SP,#0x78+var_60]
STR             R7, [SP,#0x78+var_5C]
LDR             R2, [R0]
MOV             R8, R1
STR             R2, [SP,#0x78+var_70]
LDR             R2, [R2,#-0x30]
LDR             R0, [R0,#0xC]
STR             R0, [R1,R2]
MOV             R1, R6
MOV             R2, #1
ADD             R0, R8, #4
STR             R7, [SP,#0x78+var_60]
STR             R7, [SP,#0x78+var_5C]
STR             R7, [SP,#0x78+var_68]
STR             R7, [SP,#0x78+var_64]
BL              sub_10D7A8
ANDS            R0, R0, #0x80000000
BMI             loc_112FC0
MOV             R0, #0
MOV             R1, R0
STRD            R0, R1, [SP,#0x78+var_38]
ADD             R1, SP, #0x78+var_38
ADD             R0, R8, #4
BL              sub_113BF0
LDR             R0, [SP,#0x78+var_38]
CMP             R0, #0
BLE             loc_112FC0
MOV             R2, R4
MOV             R3, R4,ASR#31
ADD             R0, R8, #4
STR             R7, [SP,#0x78+var_2C]
STR             R7, [SP,#0x78+var_78]
BL              sub_120CD8
MOV             R3, #0x20 ; ' '
ADD             R2, SP, #0x78+var_58
ADD             R1, SP, #0x78+var_2C
ADD             R0, R8, #4
BL              sub_10D8F4
MOV             R2, #1
LDR             R0, [SP,#0x78+var_4C]
MOV             R1, R2
BL              sub_12477C
MOVS            R1, R0
LDR             R0, [SP,#0x78+var_58]
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x7000
STR             R1, [R0,#0x220]
BEQ             loc_112FB4
MOV             R2, R4
MOV             R3, R4,ASR#31
ADD             R0, R8, #4
STR             R7, [SP,#0x78+var_78]
BL              sub_120CD8
LDR             R0, [SP,#0x78+var_58]
LDR             R3, [SP,#0x78+var_4C]
ADD             R1, SP, #0x78+var_2C
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x7000
LDR             R2, [R0,#0x220]
ADD             R0, R8, #4
BL              sub_10D8F4
LDR             R1, [SP,#0x78+var_44]
LDR             R0, [SP,#0x78+var_50]
STR             R4, [SP,#0x78+var_48]
CMP             R1, #0
ADD             R4, R4, R0
BLE             loc_112FB4
LDR             R0, [SP,#0x78+var_58]
MOV             R3, #0
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x7000
LDR             R0, [R0,#0x220]
ADD             R1, R0, #0x20 ; ' '
LDM             R0, {R2,R12}
ADD             R2, R5, R2,LSL#12
ADD             R2, R2, #0x20 ; ' '
ADD             R1, R1, R12,LSL#4
ADD             R6, R1, #1
LDRSB           R12, [R1]
STR             R6, [R2],#4
ADD             R3, R3, #1
ADD             R1, R1, R12
LDR             R12, [R0,#4]
ADD             R1, R1, #1
CMP             R12, R3
BGT             loc_112F90
LDR             R0, [SP,#0x78+var_38]
CMP             R4, R0
BLT             loc_112EC8
LDR             R0, [SP,#0x78+var_6C]
BICS            R0, R0, #1
BEQ             loc_112FE8
LDR             R0, [SP,#0x78+var_6C]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x78+var_6C]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R7, [SP,#0x78+var_6C]
LDR             R0, [SP,#0x78+var_6C]
BICS            R0, R0, #1
BEQ             loc_113010
LDR             R0, [SP,#0x78+var_6C]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x78+var_6C]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R7, [SP,#0x78+var_6C]
ADD             SP, SP, #0x60 ; '`'
POP             {R4-R8,PC}
