PUSH            {R4-R6,LR}
SUB             SP, SP, #0x10
LDRD            R2, R3, [R1]
LDR             R1, [R1,#8]
MOV             R5, R0
MOV             R6, #0
STRD            R2, R3, [SP,#0x20+var_20]
STR             R1, [SP,#0x20+var_18]
MOV             R0, #0x810000
MOV             R4, R0
MOV             R0, R5
BL              sub_4F264C
MOV             R1, R0
MOV             R3, R4
MOV             R2, #0
MOV             R0, #0x48 ; 'H'
BL              sub_10A358
CMP             R0, #0
BEQ             loc_146838
MOV             R2, #1
STRB            R2, [R0,#4]
LDR             R2, =off_6B2C84
MOV             R4, R0
MOV             R1, SP
STR             R2, [R0],#8
MOV             R2, #0
STR             R5, [R0]
LDR             R0, =unk_64E82C
LDM             R0, {R3,R12}
STR             R3, [R4,#0xC]
STR             R12, [R4,#0x10]
STRB            R6, [R4,#0x14]
STRB            R2, [R4,#0x15]
LDR             R0, [R4,#8]
CMP             R0, #0
MOVNE           R0, R4
BLNE            sub_21BC70
MOV             R0, R4
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
