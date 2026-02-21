PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R5, [R0,#4]
SUB             SP, SP, #0x14
MOV             R0, R5
BL              sub_5A18EC
VLDR            S0, =0.0
ADD             R1, SP, #0x20+var_1C
VSTR            S0, [R5,#0xC]
VSTR            S0, [R5,#4]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x20+var_1C]
STR             R2, [SP,#0x20+var_20]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x20+var_18]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x20+var_20]
BL              sub_5CCEF4
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_26FB50
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_26FB50
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x20+var_1C]
VLDR            S0, =10.0
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x20+var_14
REV             R0, R0
STR             R0, [SP,#0x20+var_14]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
BL              sub_4E665C
LDR             R0, [R4,#4]
NOP
BL              sub_26CE2C
LDR             R0, =off_6CDF98
LDR             R0, [R0]
BL              sub_278968
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
