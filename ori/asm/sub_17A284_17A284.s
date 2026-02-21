LDR             R1, =off_6D1648
PUSH            {R4-R8,LR}
MOV             R6, R2
SUB             SP, SP, #0x10
LDRH            R2, [R3]
LDR             R1, [R1]
ADD             R4, R3, #8
CMP             R2, #0x56 ; 'V'
BEQ             loc_17A2BC
CMP             R2, #0x57 ; 'W'
BEQ             loc_17A394
CMP             R2, #0x58 ; 'X'
BNE             loc_17A4F4
B               loc_17A43C
LDR             R0, [R0,#4]
LDR             R2, [R1,#0xBC]
CMP             R0, R2
MOVNE           R0, #0
MOVEQ           R0, #1
ADD             R1, R1, R0,LSL#2
LDR             R0, [R4,#4]
LDR             R5, [R1,#0xBC]
UXTH            R7, R0
MOV             R8, R0,LSR#16
LDR             R0, [R5]
LDR             R1, [R0,#0x3C]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_17A4F4
LDR             R0, =0x13D04
LDRH            R0, [R0,R5]
CMP             R0, R8
BNE             loc_17A4F4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_17A370
LDR             R0, =0x13C24
LDR             R0, [R0,R5]
LDR             R1, [R0,#0x400]
TST             R1, #2
BEQ             loc_17A370
ADD             R5, R5, #0x13000
ADD             R5, R5, #0xC70
ADD             R2, R0, #0x390
LDR             R1, [R5]
LDR             R3, [R1,#0x14]
STR             R2, [SP,#0x28+var_28]
LDR             R2, [R1,R3]!
LDR             R3, [R0]
ADD             R2, R1, R2,LSL#2
ADD             R2, R2, R7,LSL#2
LDR             R12, [R3,#0x5C]
LDR             R2, [R2,#4]
MOV             R3, R6
ADD             R1, R1, R2
MOV             R2, #0
BLX             R12
B               loc_17A4F4
ADD             R5, R5, #0x13C00
ADD             R5, R5, #0x24 ; '$'
MOV             R3, R6
LDR             R0, [R5]
MOV             R2, #0
LDR             R1, [R0]
LDR             R12, [R1,#0x48]
MOV             R1, R7
B               loc_17A4F0
LDR             R0, [R0,#4]
LDR             R2, [R1,#0xBC]
CMP             R0, R2
MOVNE           R0, #0
MOVEQ           R0, #1
ADD             R0, R1, R0,LSL#2
LDR             R5, [R0,#0xBC]
LDR             R0, [R5]
LDR             R1, [R0,#0x3C]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_17A4F4
LDR             R0, [R6]
LDR             R1, [R4,#4]
LDR             R2, [R4]
ADD             R1, R1, R0
CMP             R2, #0
BEQ             loc_17A418
LDR             R0, =0x13C24
LDR             R0, [R0,R5]
LDR             R2, [R0,#0x400]
TST             R2, #2
BEQ             loc_17A418
ADD             R2, R0, #0x390
STR             R2, [SP,#0x28+var_28]
LDR             R2, [R6,#0x70]
LDR             R3, [R0]
MOV             R2, R2,LSL#4
LDR             R12, [R3,#0x5C]
MOV             R2, R2,LSR#31
MOV             R3, R6
B               loc_17A4F0
ADD             R5, R5, #0x13C00
ADD             R5, R5, #0x24 ; '$'
MOV             R3, R6
LDR             R0, [R5]
LDR             R2, [R0]
LDR             R12, [R2,#0x44]
MOV             R2, #0
BLX             R12
B               loc_17A4F4
LDR             R2, [R4]
CMN             R2, #1
ADDNE           R0, R1, R2,LSL#2
BNE             loc_17A464
LDR             R0, [R0,#4]
LDR             R2, [R1,#0xBC]
CMP             R0, R2
MOVEQ           R0, #1
MOVNE           R0, #0
ADD             R0, R1, R0,LSL#2
LDR             R5, [R0,#0xBC]
LDR             R0, [R5]
LDR             R1, [R0,#0x3C]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_17A4F4
LDR             R3, [R4,#4]
LDR             R0, =0x13C24
MOV             R1, #0x138
LDR             R12, [R4,#0xC]
ADD             R2, R3, R3,LSL#3
LDR             R0, [R0,R5]
ADD             R2, R2, R3,LSL#4
ADD             R5, R5, #0x13000
ADD             R1, R1, R2,LSL#3
ADD             R5, R5, #0xC70
ADD             R2, R0, R1
LDR             R1, [R5]
LDR             R5, [R1,#0x14]
ADD             R1, R1, R5
ADD             R12, R1, R12,LSL#2
LDR             R12, [R12,#4]
ADD             R1, R1, R12
LDR             R12, [R4,#8]
CMP             R12, #0
BEQ             loc_17A500
LDR             R12, [R2,#0x70]
TST             R12, #2
BEQ             loc_17A500
STR             R2, [SP,#0x28+var_28]
LDR             R2, [R0]
MOV             R3, R6
LDR             R12, [R2,#0x5C]
MOV             R2, #0
BLX             R12
ADD             SP, SP, #0x10
MOV             R0, #0
POP             {R4-R8,PC}
MOV             R12, #0
STR             R2, [SP,#0x28+var_20]
STR             R6, [SP,#0x28+var_24]
STR             R12, [SP,#0x28+var_28]
LDR             R2, [R0]
AND             R3, R3, #0xFF
LDR             R12, [R2,#0x58]
B               loc_17A4EC
