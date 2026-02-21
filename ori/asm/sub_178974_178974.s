PUSH            {R4,LR}
LDR             R1, [R3,#8]
VLDR            S0, [R3,#0x6C]
CMP             R1, #0
BEQ             loc_178994
CMP             R1, #1
BNE             loc_1789E4
B               loc_1789B8
LDR             R1, [R0,#4]
ADD             R0, R1, #8
ADD             R3, R0, #0x94
LDR             R2, [R0]
ADD             R1, R1, #0x14000
VLDM            R3, {S1-S2}
LDR             R1, [R1,#0x180]
LDR             R2, [R2,#0x18]
B               loc_1789E0
LDR             R1, [R0,#4]
VMOV.F32        S1, S0
ADD             R0, R1, #8
ADD             R1, R1, #0x14000
LDR             R2, [R0]
VLDR            S3, [R0,#0x90]
LDR             R1, [R1,#0x180]
VLDR            S2, [R0,#0x98]
LDR             R2, [R2,#0x18]
VMOV.F32        S0, S3
BLX             R2
MOV             R0, #0
POP             {R4,PC}
