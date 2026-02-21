PUSH            {R4-R8,LR}
SUB             SP, SP, #0x20
MOV             R7, R0
LDR             R8, =0x70AC
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, R8
BL              sub_10A358
MOVS            R4, R0
MOVEQ           R5, #0
BEQ             loc_1ED7D0
MOV             R1, R8
BL              sub_2FFE8C
LDR             R2, [R4,#0x14]
LDR             R1, =nullsub_962
MOV             R3, #4
BIC             R2, R2, #0xFF
STR             R2, [R4,#0x14]
MOV             R2, #0x114
ADD             R0, R4, #0x16C
BLX             sub_1002F4
ADD             R0, R0, #0x400
LDR             R1, =nullsub_962
MOV             R3, #1
MOV             R2, #0x114
ADD             R0, R0, #0x1A4
BLX             sub_1002F4
LDR             R1, =nullsub_1039
MOV             R3, #0x3E ; '>'
MOV             R2, #0x114
ADD             R0, R0, #0x3D8
BLX             sub_1002F4
ADD             R0, R0, #0x4400
LDR             R1, =nullsub_1039
MOV             R3, #0x1E
MOV             R2, #0x114
ADD             R0, R0, #0x16C
BLX             sub_1002F4
SUB             R5, R0, #0x5000
SUB             R5, R5, #0x54 ; 'T'
MOV             R4, #0xA000
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, R4
BL              sub_1143B4
ADD             R1, SP, #0x38+var_20
STR             R0, [SP,#0x38+var_24]
STM             R1, {R0,R4}
MOV             R6, R0
LDR             R0, =off_6B784C
MOV             R1, R4
STR             R0, [SP,#0x38+var_28]
MOV             R0, #0
STR             R0, [SP,#0x38+var_38]
STR             R0, [SP,#0x38+var_34]
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_2C]
MOV             R0, R5
BL              sub_2FCC2C
MOV             R1, R7
ADD             R0, R5, #0x10
BL              sub_35B060
LDR             R0, [R7]
ADD             R1, SP, #0x38+var_28
LDR             R2, [R0,#0xA8]
MOV             R0, R7
BLX             R2
STR             R4, [SP,#0x38+var_2C]
STR             R6, [SP,#0x38+var_30]
ADD             R1, SP, #0x38+var_30
MOV             R0, SP
STMEA           SP, {R5,R8}
BL              sub_59B768
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R8,PC}
