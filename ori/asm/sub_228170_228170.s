ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2E8
LDR             R0, [R0]
NOP
PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, =off_6CDA80
MOV             R1, #7
VPUSH           {D8}
SUB             SP, SP, #0xC
STRB            R1, [R4]
LDR             R0, [R0]
LDR             R1, =0x126F4
LDR             R5, [R1,R0]
LDR             R1, [R4,#4]
VLDR            S17, [R5,#0x200]
VLDR            S16, [R1,#0x24]
BL              sub_5C976C
VLDR            S2, [R5,#0x1D4]
LDR             R0, [R4,#4]
MOV             R1, SP
VADD.F32        S0, S0, S2
VLDR            S1, [R0,#0x2C]
VSTR            S16, [SP,#0x20+var_20]
ADD             R0, SP, #0x20+var_1C
VSTM            R0, {S0-S1}
VMOV.F32        S0, S17
LDR             R0, [R4,#4]
ADD             R0, R0, #0x11C
BL              sub_5A2138
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
