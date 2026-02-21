PUSH            {R4,R5,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8-D10}
VMOV.F32        S17, S2
VMOV.F32        S16, S0
VMOV.F32        S19, S1
VLDR            S0, =0.5
VLDR            S1, =0.71111
SUB             SP, SP, #0xC
VMUL.F32        S0, S17, S0
ADD             R1, SP, #0x30+var_2C
MOV             R0, SP
VMUL.F32        S0, S0, S1
BL              sub_462B20
VLDMEA          SP, {S0-S1}
MOV             R0, R5
VDIV.F32        S20, S0, S1
VMUL.F32        S18, S20, S16
BL              sub_485BDC
VMUL.F32        S1, S18, S0
VSTR            S17, [R4,#0x98]
VSTR            S16, [R4,#0x90]
VSTR            S19, [R4,#0x94]
LDR             R0, [R4,#0xB8]
ADD             SP, SP, #0xC
VNMUL.F32       S2, S20, S16
VMOV.F32        S5, S19
VMOV.F32        S4, S16
VMOV.F32        S3, S18
VPOP            {D8-D10}
VNEG.F32        S0, S1
POP             {R4,R5,LR}
B               sub_4C4CFC
