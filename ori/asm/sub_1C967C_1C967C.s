PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R6, R1
LDR             R1, [R5,#0xC4]
SUB             SP, SP, #0x70
MOV             R2, #0x58 ; 'X'
ADD             R0, SP, #0x80+var_7C
LDR             R4, [R1,#4]
LDR             R1, [R4,#4]
LDR             R1, [R1,#0x86C]
AND             R1, R1, #0xF
STRH            R1, [SP,#0x80+var_80]
ADD             R1, R4, #0x800
ADD             R1, R1, #0x7C ; '|'
BL              sub_127EB8
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x610]
LDR             R0, [R4,#0xB2C]
BL              sub_233788
STRH            R0, [SP,#0x80+var_24]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x610]
LDR             R0, [R4,#0xB30]
BL              sub_233788
STRH            R0, [SP,#0x80+var_22]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x86C]
AND             R0, R0, #0xF
CMP             R0, #4
BEQ             loc_1C9700
CMP             R0, #5
BNE             loc_1C9774
B               loc_1C973C
LDR             R0, [SP,#0x80+var_68]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
MOVNE           R0, #1
STR             R0, [SP,#0x80+var_68]
LDR             R0, [SP,#0x80+var_64]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
MOVNE           R0, #1
STR             R0, [SP,#0x80+var_64]
B               loc_1C9774
LDR             R0, [SP,#0x80+var_7C]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
MOVNE           R0, #1
STR             R0, [SP,#0x80+var_7C]
LDR             R0, [SP,#0x80+var_78]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
MOVNE           R0, #1
STR             R0, [SP,#0x80+var_78]
LDR             R0, [R5,#0xBC]
LDR             R2, =0x14490
LDR             R0, [R0,#0x94]
STR             R0, [SP,#0x80+var_20]
LDR             R0, [R5,#0xC0]
ADD             R1, R0, #0x14400
LDRB            R3, [R2,R0]
ADD             R1, R1, #0x1C
ADD             R2, R0, #0x14400
STRB            R3, [SP,#0x80+var_1C]
LDRB            R1, [R1]
ADD             R2, R2, #0x1D
ADD             R0, R0, #0x14400
STRB            R1, [SP,#0x80+var_1B]
LDRB            R1, [R2]
MOV             R2, #0x6C ; 'l'
STRB            R1, [SP,#0x80+var_1A]
LDR             R0, [R0,#0x20]
MOV             R1, SP
STR             R0, [SP,#0x80+var_18]
LDR             R0, [R6,#8]
BL              sub_1103A4
LDR             R0, [R6,#8]
ADD             R0, R0, #0x6C ; 'l'
STR             R0, [R6,#8]
ADD             SP, SP, #0x70 ; 'p'
POP             {R4-R6,PC}
