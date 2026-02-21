PUSH            {R4-R7,LR}
MOV             R6, R0
MOV             R1, #1
ADD             R0, R0, #0xEC
VPUSH           {D8}
SUB             SP, SP, #0x1C
BL              sub_14C450
LDR             R4, =off_6CDD80
MOV             R2, #0
LDR             R0, [R4]
LDR             R1, [R0,#0xF3C]
ADD             R0, R6, #0xEC
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x15
ADD             R0, R6, #0xEC
BL              sub_14C548
LDR             R0, [R4]
ADD             R7, SP, #0x38+var_34
ADD             R4, R6, #0x70 ; 'p'
LDR             R0, [R0,#8]
LDR             R1, [R0,#0xA0]
VMOV            S16, R1
STR             R1, [SP,#0x38+var_38]
LDR             R1, [R0,#0x94]
STR             R1, [SP,#0x38+var_34]
LDR             R1, [R0,#0x98]
STR             R1, [SP,#0x38+var_30]
LDR             R0, [R0,#0x9C]
STR             R0, [SP,#0x38+var_2C]
LDM             R7, {R1-R3}
STM             R4, {R1-R3}
LDR             R5, [R6,#8]
LDR             R4, [R5,#8]
CMP             R4, R5
BEQ             loc_249C5C
LDR             R1, [R4]
MOV             R0, R4
LDR             R2, [R1,#0x14]
MOV             R1, R7
BLX             R2
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_249C3C
ADD             R1, SP, #0x38+var_34
ADD             R0, R6, #0xEC
BL              sub_14E984
ADD             R0, R6, #0x400
MOV             R1, #0
VLDR            S0, =0.0
VSTR            S16, [R0,#0x11C]
STRB            R1, [R6,#0x4E9]
VSTR            S0, [R0,#0x138]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
