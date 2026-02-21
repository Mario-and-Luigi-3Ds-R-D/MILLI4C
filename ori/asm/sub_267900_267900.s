PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#4]
CMP             R0, #1
BNE             locret_267954
ADD             R0, R4, #0x3A4
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             locret_267954
ADD             R0, R4, #8
BL              sub_5C4A1C
CMP             R0, #0
BNE             locret_267954
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #8
BL              sub_14C430
MOV             R0, #2
STRB            R0, [R4,#4]
POP             {R4,PC}
