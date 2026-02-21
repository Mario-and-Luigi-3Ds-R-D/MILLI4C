PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R6, =off_6CDA80
SUB             SP, SP, #0x10
LDR             R0, [R6]
BL              sub_5C96FC
CMP             R0, #0
BEQ             loc_2280D4
LDR             R0, [R6]
MOV             R1, #6
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R4, [R0]
STRB            R1, [R5]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x1C4
BL              sub_5A26D0
LDR             R0, [R5,#4]
VLDR            S0, [R4,#0x94]
ADD             R1, R4, #0xAC
ADD             R0, R0, #0x1C4
BL              sub_5A2138
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2EC
LDR             R1, [R0]
LDRD            R2, R3, [R1,#0x2C]
LDR             R1, [R1,#0x34]
STRD            R2, R3, [SP,#0x20+var_20]
STR             R1, [SP,#0x20+var_18]
LDR             R1, [R4,#0xA0]
STR             R1, [SP,#0x20+var_20]
LDR             R1, [R4,#0xA4]
STR             R1, [SP,#0x20+var_1C]
LDR             R0, [R0]
VLDR            S0, [R4,#0x84]
VLDR            S1, [R4,#0xA8]
VLDR            S2, [R0,#0x34]
VADD.F32        S0, S2, S0
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_18]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x11C
BL              sub_5A26D0
LDR             R0, [R5,#4]
VLDR            S0, [R4,#0x94]
MOV             R1, SP
ADD             R0, R0, #0x11C
BL              sub_5A2138
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
