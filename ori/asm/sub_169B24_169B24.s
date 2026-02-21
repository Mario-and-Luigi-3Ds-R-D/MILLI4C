PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x34
BL              sub_53D718
LDR             R0, =0x2686
VLDR            S16, =0.0
VLDR            S18, =0.1
LDRB            R0, [R0,R4]
VMOV.F32        S17, S16
CMP             R0, #2
CMPNE           R0, #3
BNE             loc_169B80
LDR             R0, [R4,#0x4EC]
VLDR            S16, =-20.0
TST             R0, #1
BNE             loc_169B80
MOV             R0, #0x26C0
LDRB            R0, [R0,R4]
CMP             R0, #0
VLDREQ          S1, =90.0
VLDREQ          S19, =0.5
BEQ             loc_169BD0
MOV             R0, #0
MOV             R1, #0x3F800000
STR             R0, [SP,#0x50+var_4C]
STR             R1, [SP,#0x50+var_50]
STR             R0, [SP,#0x50+var_48]
VSTR            S17, [SP,#0x50+var_44]
STRD            R0, R1, [SP,#0x50+var_40]
STR             R0, [SP,#0x50+var_38]
VSTR            S16, [SP,#0x50+var_34]
STR             R0, [SP,#0x50+var_30]
STRD            R0, R1, [SP,#0x50+var_2C]
VSTR            S18, [SP,#0x50+var_24]
LDR             R1, [R4,#0x7FC]
MOV             R2, SP
ADD             R0, R1, #0x20 ; ' '
ADD             R1, R1, #0x20 ; ' '
BL              sub_141F30
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D9}
POP             {R4,R5,PC}
ADD             R5, R4, #0x2600
ADD             R5, R5, #0xAA
MOV             R0, #0x168
LDRB            R1, [R5]
SMULBB          R0, R1, R0
VMOV            S0, R0
VCVT.F32.U32    S2, S0
VDIV.F32        S0, S2, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S1, =8.0
LDRB            R0, [R5]
MOV             R1, #0x5A ; 'Z'
VMUL.F32        S0, S0, S1
ADD             R0, R0, #1
VMLA.F32        S16, S0, S19
BL              sub_2FEFCC
STRB            R1, [R5]
NOP
B               loc_169B80
