PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R1, R0, #0x3D8
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             locret_1D293C
ADD             R0, R0, #0x3A0
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             locret_1D293C
LDR             R0, =0x106418
LDR             R0, [R4,R0]
CMP             R0, #0
BNE             locret_1D293C
ADD             R5, R4, #0x1A0000
ADD             R5, R5, #0x68 ; 'h'
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1D2928
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R5]
LDR             R2, =dword_65400C
ADD             R0, R4, #0x1A0000
ADD             R0, R0, #0x5C ; '\'
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
POP             {R4-R6,PC}
