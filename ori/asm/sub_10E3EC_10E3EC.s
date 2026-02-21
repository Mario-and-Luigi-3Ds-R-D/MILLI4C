PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R0, =dword_6E1340
LDR             R0, [R0]
TST             R0, #1
BNE             loc_10E458
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_10E458
LDR             R1, =flt_71203C
VLDR            S1, =1.0
VLDR            S0, =0.0
ADD             R0, R1, #0x10
VSTR            S1, [R1]
VSTR            S0, [R1,#(flt_712040 - 0x71203C)]
VSTR            S0, [R1,#(flt_712044 - 0x71203C)]
VSTR            S0, [R1,#(flt_712048 - 0x71203C)]
VSTM            R0, {S0-S1}
ADD             R0, R1, #0x24 ; '$'
VSTR            S0, [R1,#(flt_712054 - 0x71203C)]
VSTR            S0, [R1,#(flt_712058 - 0x71203C)]
VSTR            S0, [R1,#(flt_71205C - 0x71203C)]
VSTM            R0, {S0-S1}
LDR             R0, =dword_6E1340
VSTR            S0, [R1,#(flt_712068 - 0x71203C)]
NOP
LDR             R1, =flt_71203C
ADD             LR, R4, #0x18
LDM             R1, {R0,R2,R3,R5-R8,R12}
STM             LR, {R0,R2,R3,R5-R8,R12}
ADD             R0, R1, #0x20 ; ' '
LDR             R1, [R1,#(flt_712068 - 0x71203C)]
LDM             R0, {R0,R2,R3}
STR             R1, [R4,#0x44]
ADD             R4, R4, #0x38 ; '8'
STM             R4, {R0,R2,R3}
POP             {R4-R8,PC}
