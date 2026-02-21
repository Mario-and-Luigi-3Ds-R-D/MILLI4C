PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
VPUSH           {D8-D9}
LDR             R0, [R0,#8]
LDRSH           R0, [R0]
SUB             R0, R0, #0x1C
CMP             R0, #0xB; switch 11 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1AD954; jumptable 001AD954 default case, cases 1-4
DCD loc_1AD988; jump table for switch statement
ADD             R4, R4, #0x1000; jumptable 001AD954 case 0
VLDR            S16, =0.71111
VLDR            S0, [R4,#0x1B0]
LDR             R1, =0x43340000
VMOV            R0, S0
VMUL.F32        S0, S0, S16
CMP             R0, R1
BLT             loc_1AD9E8
BL              sub_464380
VLDR            S1, [R4,#0x1D8]
VLDR            S2, =60.0
VLDR            S3, =150.0
VADD.F32        S2, S1, S2
VMLA.F32        S1, S0, S2
VADD.F32        S0, S1, S3
VMUL.F32        S16, S0, S16
VMOV.F32        S0, S16
BL              sub_464380
VSTR            S0, [R5]
VMOV.F32        S0, S16
BL              sub_464318
VSTR            S0, [R6]
VPOP            {D8-D9}
POP             {R4-R8,PC}
NOP
BL              sub_464380
VLDR            S3, [R4,#0x1D8]
VLDR            S1, =60.0
VLDR            S2, =90.0
VADD.F32        S1, S3, S1
VMLA.F32        S2, S0, S1
VSUB.F32        S0, S2, S1
VMUL.F32        S16, S0, S16
VMOV.F32        S0, S16
BL              sub_464380
VSTR            S0, [R5]
VMOV.F32        S0, S16
BL              sub_464318
VSTR            S0, [R6]
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, =0x39A8; jumptable 001AD954 cases 5-7,10
LDR             R7, [R0,R4]
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R7,#0xAAC]
ADD             R4, R4, #0x3800
VLDR            S17, =0.017453
CMPEQ           R0, #3
LDREQ           R7, [R7,#0xAA8]
MOVNE           R7, #0
VLDR            S1, [R4,#0x18C]
VLDR            S18, =4.7124
VLDR            S0, [R7,#0x23C]
VLDR            S16, =40.744
VMLA.F32        S0, S1, S17
VADD.F32        S0, S0, S18
VMUL.F32        S0, S0, S16
BL              sub_464380
VSTR            S0, [R5]
VLDR            S0, [R7,#0x23C]
VLDR            S1, [R4,#0x18C]
VMLA.F32        S0, S1, S17
VADD.F32        S0, S0, S18
VMUL.F32        S0, S0, S16
BL              sub_464318
VSTR            S0, [R6]
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, =0x39A8; jumptable 001AD954 cases 8,9
LDR             R7, [R0,R4]
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R7,#0xAAC]
ADD             R4, R4, #0x3800
VLDR            S17, =0.017453
CMPEQ           R0, #3
LDREQ           R7, [R7,#0xAA8]
MOVNE           R7, #0
VLDR            S1, [R4,#0x18C]
VLDR            S16, =4.7124
VLDR            S0, [R7,#0x23C]
VLDR            S18, =40.744
VMLA.F32        S0, S1, S17
VADD.F32        S0, S0, S16
VMUL.F32        S0, S0, S18
BL              sub_464380
VSTR            S0, [R5]
VLDR            S0, [R7,#0x23C]
VLDR            S1, [R4,#0x18C]
VMLA.F32        S0, S1, S17
VADD.F32        S0, S0, S16
VMUL.F32        S0, S0, S18
BL              sub_464318
VSTR            S0, [R6]
VPOP            {D8-D9}
POP             {R4-R8,PC}
ADD             R4, R4, #0x1000; jumptable 001AD954 default case, cases 1-4
VLDR            S16, =0.71111
VLDR            S0, [R4,#0x1B0]
VMUL.F32        S0, S0, S16
BL              sub_464380
VLDR            S2, [R4,#0x1D8]
VLDR            S3, =60.0
VLDR            S1, =90.0
VADD.F32        S2, S2, S3
VMLA.F32        S1, S0, S2
VMUL.F32        S16, S1, S16
VMOV.F32        S0, S16
BL              sub_464380
VSTR            S0, [R5]
VMOV.F32        S0, S16
BL              sub_464318
VSTR            S0, [R6]
VPOP            {D8-D9}
POP             {R4-R8,PC}
