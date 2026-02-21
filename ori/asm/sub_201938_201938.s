PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x1D3]
SUB             SP, SP, #0x38
CMP             R0, #2
BNE             loc_2019AC
LDR             R0, [R4,#4]
CMP             R0, #0
ADDNE           R1, R0, #0xE0
MOVEQ           R1, #0
MOV             R0, SP
BL              sub_234B94
VLDR            S0, [R4,#0x1D8]
VLDR            S1, =6.2832
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S1, [SP,#0x40+var_14]
VLDR            S2, =7.5
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x40+var_14]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x758]!
LDR             R2, [R1,#0x13C]
MOV             R1, SP
BLX             R2
MOV             R0, SP
NOP
ADD             SP, SP, #0x38 ; '8'
POP             {R4,PC}
