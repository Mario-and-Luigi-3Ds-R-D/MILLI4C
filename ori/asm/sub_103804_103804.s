PUSH            {R4-R7,LR}
MOVS            R5, R0
SUB             SP, SP, #0x1C
MOVS            R7, R1
MOV             R0, SP
BL              sub_1033D4
STR             R0, [SP,#0x30+var_20]
LDR             R3, =(sub_1033EE+1)
LDR             R2, =(sub_1033D4+1)
MOVS            R1, R7
MOVS            R0, #8
BL              sub_301670
STR             R0, [SP,#0x30+var_28]
LDR             R4, [R5,#4]
CMP             R4, R7
BCC             loc_10382A
MOVS            R4, R7
LDR             R6, [R5]
STR             R0, [SP,#0x30+var_24]
LSLS            R0, R4, #3
STR             R0, [SP,#0x30+var_1C]
B               loc_103844
LDR             R0, [SP,#0x30+var_24]
MOVS            R1, R6
BL              sub_302744
LDR             R0, [SP,#0x30+var_24]
ADDS            R6, #8
ADDS            R0, #8
STR             R0, [SP,#0x30+var_24]
LDR             R1, [R5]
LDR             R0, [SP,#0x30+var_1C]
ADDS            R0, R1, R0
CMP             R0, R6
BNE             loc_103834
B               loc_10385E
LDR             R0, [SP,#0x30+var_28]
LSLS            R1, R4, #3
ADDS            R0, R1, R0
LDR             R1, [SP,#0x30+var_20]
ADDS            R4, R4, #1
BL              sub_302744
CMP             R4, R7
BCC             loc_103850
LDR             R1, =(sub_1033EE+1)
LDR             R0, [R5]
BL              sub_3016C8
STR             R7, [R5,#4]
LDR             R4, [SP,#0x30+var_28]
ADD             R0, SP, #0x30+var_2C
STR             R4, [R5]
BL              sub_301A94
MOVS            R0, R4
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
