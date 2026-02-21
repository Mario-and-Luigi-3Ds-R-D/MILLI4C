PUSH            {R4-R8,LR}
ADD             R1, R0, #0x12400
ADD             R8, R0, #0x10000
ADD             R8, R8, #0x2700
VPUSH           {D8}
MOV             R7, R0
LDR             R0, [R8]
SUB             SP, SP, #8
ADD             R6, R7, #0x12400
ADD             R6, R6, #0x318
LDR             R2, [R0,#0x78]
MOV             R5, #0
STR             R2, [SP,#0x28+var_28]
LDR             R0, [R0,#0x7C]
VMOV            S16, R2
VMOV            S0, R0
STR             R0, [SP,#0x28+var_28]
VLDR            S1, [R1,#0x334]
LDR             R0, =0x12714
LDR             R1, [R6]
VSUB.F32        S0, S0, S16
LDR             R4, [R0,R7]
CMP             R1, R4
VMLA.F32        S16, S0, S1
BEQ             loc_1F9E08
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BLX             R1
CMP             R0, #0
BEQ             loc_1F9DF8
LDR             R0, [R4]
LDRB            R1, [R0,#4]
CMP             R1, #0
ADDEQ           R5, R5, #1
BEQ             loc_1F9DF0
LDR             R0, [R0,#0x14]
LDR             R0, [R0,#0x3F4]
ADD             R5, R5, R0
CMP             R5, #2
BHI             loc_1F9E08
LDR             R0, [R6]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_1F9DB8
LDR             R0, [R4]
ADD             R5, R7, #0x12000
ADD             R5, R5, #0x730
LDRB            R1, [R0,#4]
CMP             R1, #0
BEQ             loc_1F9E64
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
LDR             R0, [R5]
LDR             R1, [R8]
MOV             R2, #0x94
ADD             R2, R2, R0,LSL#2
ADD             R1, R1, R2
ADD             R0, R0, #1
LDR             R1, [R1]
VMOV            S0, R1
STR             R1, [SP,#0x28+var_28]
STR             R0, [R5]
ADD             SP, SP, #8
VPOP            {D8}
VADD.F32        S0, S2, S0
POP             {R4-R8,PC}
MOV             R0, #0
STR             R0, [R5]
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
VADD.F32        S0, S2, S16
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R8,PC}
