PUSH            {LR}
SUB             SP, SP, #0x3C
STR             R1, [SP,#0x40+var_38]
MOVS            R1, #1
STR             R1, [SP,#0x40+var_2C]
LDR             R1, =(sub_1001DC+1 - 0x1001F8)
STR             R3, [SP,#0x40+var_3C]
ADD             R1, PC; sub_1001DC
STR             R1, [SP,#0x40+var_34]
MOVS            R1, R2
STR             R0, [SP,#0x40+var_30]
MOV             R0, SP
BL              sub_2FE188
ADD             SP, SP, #0x3C ; '<'
POP             {PC}
