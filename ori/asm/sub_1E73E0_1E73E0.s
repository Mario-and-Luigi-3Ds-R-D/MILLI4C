MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
VSUB.F32        S4, S1, S4
PUSH            {R4-R6,LR}
ADD             R4, R1, R2,LSL#4
VLDR            S5, =0.5
ADD             R0, R4, #0x27C
VPUSH           {D8-D9}
VMOV.F32        S16, S0
ADD             R5, R1, R2,LSL#2
VSTR            S4, [R4,#0x284]
VADD.F32        S0, S4, S1
VSTR            S1, [R4,#0x288]
VADD.F32        S17, S16, S2
VMUL.F32        S1, S0, S5
VSTM            R0, {S16-S17}
VMOV.F32        S0, S16
VSTR            S3, [R5,#0x2AC]
VSTR            S1, [R5,#0x2B8]
BL              sub_4645C0
VLDR            S18, =0.024544
VMUL.F32        S0, S0, S18
VSTR            S0, [R4,#0x2C4]
VLDR            S0, [R5,#0x2B8]
VNEG.F32        S1, S0
VMOV.F32        S0, S16
BL              sub_4645C0
VMUL.F32        S0, S0, S18
VSTR            S0, [R4,#0x2C8]
VLDR            S0, [R5,#0x2B8]
VNEG.F32        S1, S0
VMOV.F32        S0, S17
BL              sub_4645C0
VMUL.F32        S0, S0, S18
VSTR            S0, [R4,#0x2CC]
VMOV.F32        S0, S17
VLDR            S1, [R5,#0x2B8]
BL              sub_4645C0
VMUL.F32        S0, S0, S18
VSTR            S0, [R4,#0x2D0]
VPOP            {D8-D9}
POP             {R4-R6,PC}
