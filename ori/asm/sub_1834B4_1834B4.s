PUSH            {R3-R9,LR}
MOV             R5, R0
ADD             R0, SP, #0x20+arg_0
MOV             R7, R1
LDM             R0, {R4,R6}
MOV             R8, R3
LDR             R0, =off_6D1648
MOV             R1, R2
STR             R6, [SP,#0x20+var_20]
MOV             R3, R4
LDR             R0, [R0]
MOV             R2, R8
LDR             R0, [R0,#0xA0]
BL              sub_2D3F94
LDM             R6, {R1-R3}
ADD             R9, R0, #0x1D0
CMP             R4, #0
STM             R9, {R1-R3}
BEQ             loc_183530
VMOV            S0, R1
VLDR            S1, [R4,#0x108]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x1D0]
VLDR            S0, [R0,#0x1D4]
VLDR            S1, [R4,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x1D4]
VLDR            S0, [R0,#0x1D8]
VLDR            S1, [R4,#0x110]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x1D8]
LDRB            R2, [R5,#0x460]
MOV             R1, #0
CMP             R2, #0
LDRGT           R3, [R5,#0x45C]
BLE             loc_183564
ADD             R12, R1, R1,LSL#1
ADD             R12, R3, R12,LSL#2
LDR             R12, [R12,#4]
CMP             R12, #0
BEQ             loc_183590
ADD             R1, R1, #1
CMP             R2, R1
BGT             loc_183544
MOV             R4, #0
CMP             R2, #0
LDRGT           R3, [R5,#0x458]
MOV             R1, #0
BLE             loc_1835A8
LDR             R12, [R3,R1,LSL#2]
CMP             R12, R4
BNE             loc_18359C
MOV             R2, #0
STR             R2, [R3,R1,LSL#2]
B               loc_1835A8
ADD             R1, R1, R1,LSL#1
ADD             R4, R3, R1,LSL#2
B               loc_183568
ADD             R1, R1, #1
CMP             R2, R1
BGT             loc_183578
STRH            R8, [R4]
ADD             R1, R4, #4
STR             R0, [R4,#4]
STR             R1, [R0,#0x180]
CMP             R7, #0
LDRGE           R0, [R5,#0x458]
STRGE           R4, [R0,R7,LSL#2]
MOV             R0, R4
POP             {R3-R9,PC}
