LDR             R1, =off_6CE970
PUSH            {LR}
SUB             SP, SP, #0xC
LDR             R2, [R1]
LDR             R1, [R0,#0x124]
ADD             R2, R2, #0x100000
ADD             R2, R2, #0xC400
ADD             R3, R1, #0x400
VLDR            S0, [R2,#(loc_10C4EC - 0x10C400)]
VLDR            S1, [R3,#0x15C]
LDR             R2, [R1,#0x1EC]
LDR             R1, [R1,#0x1F0]
VMUL.F32        S0, S0, S1
STR             R2, [SP,#0x10+var_10]
STR             R1, [SP,#0x10+var_C]
MOV             R3, #1
MOV             R2, SP
VSTR            S0, [SP,#0x10+var_8]
LDR             R12, [R0,#0x100]
LDR             R0, [R0,#0x124]
LDR             R1, [R0,#0x1E8]
MOV             R0, R12
BL              sub_27FF14
ADD             SP, SP, #0xC
POP             {PC}
