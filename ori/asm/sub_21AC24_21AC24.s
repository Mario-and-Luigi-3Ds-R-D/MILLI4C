PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
SUB             SP, SP, #0xC
LDR             R5, [R0,#0x18]
LDR             R0, [R5,#0x204]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_21ACE8
MOV             R2, SP
VLDR            S0, =0.0
VLDR            S1, =1.0
MOV             R1, #1
VSTMEA          SP, {S0-S1}
VSTR            S0, [SP,#0x18+var_10]
LDR             R0, [R4,#0x14]
ADD             R0, R0, #4
VLDM            R0, {S1-S2}
ADD             R0, R5, #0x1DC
BL              sub_5A2954
LDRB            R0, [R4,#0x19]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #2
AND             R1, R0, #0xFF
MOV             R0, R5
BL              sub_14C430
LDR             R0, [R4,#8]
LDR             R12, =off_6CE970
LDR             R2, =0x300A4
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
SUB             R0, R12, R0
BL              sub_503808
LDR             R0, [R4,#8]
LDRB            R0, [R0,#0x48C]
CMP             R0, #0
BEQ             loc_21ACDC
MOV             R2, #0
MOV             R1, #5
MOV             R0, R5
BL              sub_501E18
LDR             R1, =off_64E794
LDRD            R0, R1, [R1,#(off_64E7B4 - 0x64E794)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
