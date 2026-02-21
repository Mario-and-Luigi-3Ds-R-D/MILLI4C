PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
SUB             SP, SP, #0xC
ADD             R1, SP, #0x18+var_14
LDR             R0, [R0,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x18+var_14]
STR             R2, [SP,#0x18+var_18]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x18+var_10]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, =off_6CDF98
MOV             R1, SP
LDR             R0, [R0]
BL              sub_5CCD1C
LDR             R1, [SP,#0x18+var_10]
MOV             R5, R0
ADD             R0, SP, #0x18+var_14
CMP             R1, R0
BNE             loc_2723EC
LDR             R0, [SP,#0x18+var_18]
CMP             R0, #0
BEQ             loc_2723EC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x18+var_14]
CMP             R5, #0
STR             R1, [R0,#4]
STR             R0, [R1]
BEQ             loc_27240C
LDR             R0, [R4,#4]
MOV             R1, #2
BL              sub_2703B0
ADD             R0, R4, #0x28 ; '('
BL              sub_528B1C
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
