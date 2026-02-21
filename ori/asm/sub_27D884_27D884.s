PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R5, R4, #0x400
VPUSH           {D8}
CMP             R1, #0
ADD             R5, R5, #0x2F8
MOV             R0, #0
STRNE           R4, [R1,#0x6F8]
STM             R5, {R0,R1}
MOV             R3, #1
STRB            R3, [R4,#0x3F8]
STRB            R0, [R4,#0x56C]
ADD             R5, R4, #0x400
STRB            R0, [R4,#0xF6]
VLDR            S0, [R2]
VLDR            S1, [R5,#0x84]
ADD             R6, R4, #0x4C0
VLDR            S16, =0.0
VSUB.F32        S17, S1, S0
MOV             R0, R6
BL              sub_5A26D0
VSTR            S17, [R6,#0x1C]
VSTR            S16, [R6,#0x20]
VSTR            S16, [R6,#0x24]
LDR             R1, [R6,#0x20]
LDR             R0, =off_6CDF98
VSTR            S17, [R6,#4]
STR             R1, [R6,#8]
VSTR            S16, [R6,#0xC]
LDR             R0, [R0]
LDR             R1, [R0,#0xC4]
LDR             R1, [R1,#0x1C]
ADD             R1, R1, #0x400
VLDR            S0, [R1,#0x188]
VSTR            S0, [R5,#0x68]
VLDR            S1, [R5,#0x6C]
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#0x6C]
LDR             R0, [R0,#0x124]
VLDR            S1, [R0,#0x288]
VLDR            S2, [R0,#0x2DC]
VSUB.F32        S1, S1, S2
VDIV.F32        S16, S0, S1
VMOV            R0, S16
CMP             R0, #0x3F800000
ADD             R0, R4, #0x400
BLE             loc_27D954
BL              sub_5A18EC
VLDR            S0, =1.0
VSTR            S0, [R5,#0xC]
VSTR            S0, [R5,#4]
B               loc_27D964
NOP
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VSTR            S16, [R5,#4]
LDR             R0, [R4,#0x71C]
CMP             R0, #0
BEQ             loc_27D984
LDR             R1, [R0]
LDR             R1, [R1,#8]
VPOP            {D8}
POP             {R4-R6,LR}
BX              R1
VPOP            {D8}
POP             {R4-R6,PC}
