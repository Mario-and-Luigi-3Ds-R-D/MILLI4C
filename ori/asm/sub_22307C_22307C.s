PUSH            {R4-R10,LR}
MOV             R7, R0
LDR             R10, =off_6CDA80
VPUSH           {D8}
VMOV.F32        S17, S0
LDR             R0, [R10]
SUB             SP, SP, #0x10
ADD             R1, R0, #0x12400
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x108
ADD             R1, R1, #0x2F4
LDR             R0, [R0]
LDR             R8, [R1]
ADD             R0, R8, R0,LSL#2
LDR             R1, [R0,#0x164]
LDR             R4, [R0,#0x140]
LDR             R0, [R0,#0x188]
ADD             R6, R4, R1
ADD             R9, R6, R0
MOV             R5, #0
LDR             R2, =dword_6D1F40
MOV             R1, #0x64 ; 'd'
MOV             R0, R5
BL              sub_47EADC
CMP             R4, R0
NOP
BLS             loc_2230F0
VLDR            S16, =3.0
B               loc_22310C
CMP             R6, R0
BLS             loc_223100
VLDR            S16, =5.0
B               loc_22310C
CMP             R9, R0
BCC             loc_223184
VLDR            S16, =7.0
LDR             R0, [R10]
LDR             R2, =dword_6D1F40
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
LDR             R0, [R0,#0xE8]
SUB             R1, R0, #1
MOV             R0, #0
BL              sub_47EADC
ADD             R0, R8, R0,LSL#2
LDR             R1, =0x126FC
LDR             R0, [R0,#0xEC]
CMP             R5, #0
STR             R0, [SP,#0x38+var_38]
LDR             R0, [R10]
VLDR            S0, [R8,#0x110]
LDR             R1, [R1,R0]
VLDR            S1, [R1,#0x28]
MOV             R1, SP
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x38+var_34]
VSTR            S17, [SP,#0x38+var_30]
BEQ             loc_223198
BL              sub_2271A0
LDR             R0, [R7,#0x14]
ADD             R0, R0, #1
STR             R0, [R7,#0x14]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R10,PC}
LDRD            R0, R1, [R7,#0x10]
MOV             R5, #1
CMP             R1, R0
BEQ             loc_2230C8
B               loc_22310C
VMOV.F32        S0, S16
BL              sub_226D60
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R10,PC}
