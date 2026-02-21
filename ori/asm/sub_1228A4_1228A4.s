PUSH            {R4-R7,LR}
SUB             SP, SP, #0x24
LDR             R12, [SP,#0x38+arg_0]
CMP             R12, #0
BEQ             loc_1228C4
ADD             R12, R0, #0xE1000000
CMP             R12, #0x600000
BCS             loc_122918
LDR             R4, =byte_6E1170
ADD             LR, SP, #0x38+var_28
LDR             R7, [R4,#(off_6E1174 - 0x6E1170)]; dword_69B120
LDR             R12, [R7]
LDR             R5, [R7,#(dword_69B130 - 0x69B120)]
LDR             R6, [R7,#(dword_69B134 - 0x69B120)]
LDR             R7, [R7,#(dword_69B138 - 0x69B120)]
STR             R12, [SP,#0x38+var_38]
MOV             R12, #0
STM             LR, {R5-R7}
STRB            R12, [SP,#0x38+var_38]
LDRB            R12, [R4]
ADD             R4, SP, #0x38+var_30
STR             R1, [SP,#0x38+var_34]
STRB            R12, [SP,#0x38+var_38+3]
STR             R3, [SP,#0x38+var_1C]
STM             R4, {R0,R2}
BL              sub_129DA8
MOV             R1, SP
ADD             R0, R0, #0x58 ; 'X'
BL              sub_129940
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R7,PC}
