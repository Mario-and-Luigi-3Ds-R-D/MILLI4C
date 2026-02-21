PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, R1, #0x1C
MOV             R5, R1
VPUSH           {D8}
LDM             R0, {R0-R2}
LDR             R7, =dword_6CEC18
LDR             R6, =flt_6E348C
STM             R4, {R0-R2}
LDR             R0, [R7,#(dword_6CEC20 - 0x6CEC18)]
VLDR            S17, =36.0
VLDR            S16, =0.0
TST             R0, #1
BNE             loc_1DBA64
ADD             R0, R7, #8
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1DBA64
MOV             R0, R6
VSTR            S17, [R0]
VSTR            S16, [R0,#(flt_6E3490 - 0x6E348C)]
VSTR            S16, [R0,#(flt_6E3494 - 0x6E348C)]
VSTR            S17, [R6,#(flt_6E3498 - 0x6E348C)]
VSTR            S16, [R6,#(flt_6E349C - 0x6E348C)]
VSTR            S16, [R6,#(flt_6E34A0 - 0x6E348C)]
ADD             R0, R7, #8
NOP
LDR             R0, [R7,#(dword_6CEC1C - 0x6CEC18)]
TST             R0, #1
BNE             loc_1DBA9C
LDR             R0, =dword_6CEC1C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1DBA9C
LDR             R0, =flt_6E34A4
VSTR            S17, [R0]
VSTR            S16, [R0,#(flt_6E34A8 - 0x6E34A4)]
VSTR            S16, [R0,#(flt_6E34AC - 0x6E34A4)]
LDR             R0, =dword_6CEC1C
NOP
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BEQ             loc_1DBAC0
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1DBB00
LDR             R0, =flt_6E34A4
VLDR            S0, [R4]
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [R4]
VLDR            S0, [R4,#4]
VLDR            S1, [R0,#(flt_6E34A8 - 0x6E34A4)]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#4]
VLDR            S0, [R4,#8]
VLDR            S1, [R0,#(flt_6E34AC - 0x6E34A4)]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#8]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R8,PC}
LDR             R0, =0x495
VLDR            S0, [R4]
LDRSB           R0, [R0,R5]
ADD             R0, R0, R0,LSL#1
ADD             R0, R6, R0,LSL#2
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [R4]
VLDR            S0, [R4,#4]
VLDR            S1, [R0,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#4]
VLDR            S0, [R4,#8]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#8]
B               loc_1DBAF4
