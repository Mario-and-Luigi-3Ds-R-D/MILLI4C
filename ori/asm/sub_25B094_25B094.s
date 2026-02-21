LDR             R1, =off_6CE098
PUSH            {LR}
SUB             SP, SP, #0xC
MOV             R2, #4
STRB            R2, [R0]
LDR             R1, [R1]
LDR             R12, [R1,#0x8C]
ADD             R12, R12, #0x1B0
LDM             R12, {R2,R3,R12}
STMEA           SP, {R2,R3,R12}
VMOV            S2, R12
LDR             R2, =0x129EC
LDR             R3, [R1,#0x8C]
LDR             R2, [R2,R1]
VLDR            S1, [R3,#0x184]
LDR             R2, [R2]
VLDR            S0, [R2,#0x90]
MOV             R2, SP
VADD.F32        S0, S0, S1
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0x10+var_8]
LDR             R1, [R1,#0x8C]
LDR             R0, [R0,#0x90]
VLDR            S0, [R1,#0x1C8]
ADD             R0, R0, #0x11C
MOV             R1, #0
BL              sub_5A2298
ADD             SP, SP, #0xC
POP             {PC}
