PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
VLDR            S16, =0.0
VSTR            S16, [R0,#0x7C]
VSTR            S0, [R0,#0x80]
VSTR            S16, [R0,#0x84]
VSTR            S16, [R0,#0x88]
VSTR            S0, [R0,#0x8C]
VSTR            S16, [R0,#0x90]
LDR             R0, [R0,#4]
ADD             R1, R0, #0x400
LDR             R2, [R0,#0x624]
STR             R2, [R4,#0xA0]
LDR             R2, [R0,#0x628]
STR             R2, [R4,#0xA4]
VLDR            S0, [R4,#0x80]
VNEG.F32        S1, S0
VSTR            S1, [R4,#0xAC]
VLDR            S2, [R1,#0x234]
ADD             R1, R0, #0x108
ADD             R0, R0, #0x108
VADD.F32        S1, S1, S2
VSTR            S1, [R4,#0xA8]
VLDR            S5, [R4,#0x7C]
VLDR            S1, [R4,#0x84]
VLDM            R0, {S2-S4}
ADD             R0, R4, #0x7C ; '|'
VSUB.F32        S2, S2, S5
VSUB.F32        S1, S4, S1
VSUB.F32        S0, S3, S0
VSTM            R1!, {S2}
VSTM            R1, {S0-S1}
LDR             R1, [R4,#4]
LDM             R0, {R0,R2,R3}
ADD             R1, R1, #0xFC
STM             R1, {R0,R2,R3}
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E4614
ADD             R0, R0, #0x2400
ADD             R0, R0, #0x298
LDRB            R1, [R0]
STRB            R1, [R4,#0x9C]
CMP             R1, #0
STRB            R1, [R4,#0x9D]
BEQ             loc_236D68
CMP             R1, #1
VLDREQ          S16, =1.5
BEQ             loc_236D68
CMP             R1, #2
VLDREQ          S16, =1.0
BEQ             loc_236D68
CMP             R1, #3
VLDREQ          S16, =0.5
MOV             R0, R4
VSTR            S16, [R4,#0xC0]
VSTR            S16, [R4,#0xC4]
MOV             R2, R1
VPOP            {D8}
POP             {R4,LR}
B               sub_23557C
