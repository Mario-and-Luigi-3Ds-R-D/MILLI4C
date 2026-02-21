PUSH            {R4,LR}
ADD             R2, R0, #0x14
VPUSH           {D8}
LDR             R0, [R0,#4]
VLDM            R1, {S0-S1}
LDRB            R0, [R0,#0x705]
VLDM            R2, {S2-S3}
CMP             R0, #0
VSUB.F32        S17, S0, S2
VSUB.F32        S16, S1, S3
BNE             loc_2206D4
LDR             R4, =off_6D1648
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #6
BNE             loc_2206D4
VMUL.F32        S0, S17, S17
LDR             R1, =0x47E1C800
VMLA.F32        S0, S16, S16
VMOV            R0, S0
CMP             R0, R1
BGT             loc_2206D4
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R1, [R0]
LDR             R1, [R1,#0x5C]
BLX             R1
CMP             R0, #0
MOVEQ           R0, #1
BEQ             loc_2206D8
MOV             R0, #0
VPOP            {D8}
POP             {R4,PC}
