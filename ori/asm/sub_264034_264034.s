PUSH            {R4-R6,LR}
SUB             SP, SP, #0x10
ADD             R4, R0, #0xC
MOV             R1, R0
MOV             R0, SP
BL              sub_263FEC
LDR             R0, [R4]
MOV             R5, SP
MOV             R6, #0
CMP             R0, #0
BEQ             loc_26406C
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [SP,#0x20+var_20]
LDR             R0, [R4]
CMP             R0, R1
BEQ             loc_2640DC
LDR             R1, [R4,#8]
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_26412C
CMP             R0, #0
BEQ             loc_2640A0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [SP,#0x20+var_20]
STR             R0, [R4],#4
ADD             R0, R5, #4
CMP             R0, R4
LDRNE           R1, [SP,#0x20+var_18]
CMPNE           R1, R4
BEQ             loc_2640DC
MOV             R3, R1
LDM             R4, {R1,R2}
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R3, [R4,#4]
STR             R4, [R3]
STR             R4, [SP,#0x20+var_18]
STR             R0, [R4]
LDR             R0, [SP,#0x20+var_20]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R6
BLX             R2
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_264118
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_264118
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_2640A0
