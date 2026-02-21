PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CE098
SUB             SP, SP, #0x28
ADD             R1, SP, #0x38+var_2C
LDR             R0, [R6]
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_2C]
STR             R2, [SP,#0x38+var_30]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x38+var_28]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R5, [SP,#0x38+var_30]
LDR             R0, [R5,#0xA74]
BL              sub_24D5B8
LDR             R0, [R5,#0xB5C]
MOV             R1, #0
STRB            R1, [R0,#0x44]
MOV             R0, #2
STR             R0, [R5,#0x80]
LDR             R1, [SP,#0x38+var_28]
ADD             R0, SP, #0x38+var_2C
CMP             R1, R0
BNE             loc_256B98
LDR             R0, [SP,#0x38+var_30]
CMP             R0, #0
BEQ             loc_256B98
BL              sub_25AEE4
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x38+var_2C]
MOV             R3, #0x100
MOV             R2, #0
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, #3
STRB            R0, [R4,#0xC]
MOV             R1, #0xD
ADD             R0, R4, #0x14
BL              sub_14C548
LDR             R1, =off_6CE970
LDR             R0, [R6]
LDR             R1, [R1]
LDR             R0, [R0,#0x8C]
ADD             R2, R1, #0x100000
ADD             R2, R2, #0xC400
VLDR            S0, [R0,#0x374]
VLDR            S1, [R2,#(loc_10C4EC - 0x10C400)]
LDR             R1, [R0,#0x288]
LDR             R0, [R0,#0x28C]
VMUL.F32        S0, S1, S0
STR             R1, [SP,#0x38+var_20]
STR             R0, [SP,#0x38+var_1C]
ADD             R1, SP, #0x38+var_20
ADD             R0, R4, #0x4B0
VSTR            S0, [SP,#0x38+var_18]
BL              sub_14E984
MOV             R0, #1
STRB            R0, [R4,#0x5A2]
MOV             R0, #0xFFFFFF00
ADD             R5, R4, #0x4B0
REV             R0, R0
ADD             R4, R4, #0x400
ADD             R4, R4, #0x3DC
STR             R0, [SP,#0x38+var_34]
MOV             R0, R4
BL              sub_4E63E0
LDR             R0, [SP,#0x38+var_34]
ADD             R1, SP, #0x38+var_34
VLDR            S0, =4.0
STR             R0, [R4,#4]
STR             R0, [R4]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x38+var_34]
ADD             R0, R5, #0x32C
BL              sub_4E665C
ADD             SP, SP, #0x28 ; '('
POP             {R4-R6,PC}
