PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R1, [R4,#8]
LDRSB           R0, [R0,#0xC]
LDR             R5, [R1,#0x18]
CMP             R0, #0
BEQ             loc_21B8EC
LDR             R6, =off_6CE970
CMP             R0, #1
BEQ             loc_21B790
CMP             R0, #2
BEQ             loc_21B828
CMP             R0, #3
BNE             loc_21B8E8
B               loc_21B8D4
LDR             R0, [R5,#0x204]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_21B8E8
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x19
MOV             R0, R5
BL              sub_14C548
LDR             R0, [R4,#8]
LDR             R5, =0xFFE683CC
MOV             R3, #0
LDRH            R1, [R0,#0x10]
CMP             R1, #0x1000
BEQ             loc_21B80C
LDR             R0, [R6]
LDR             R2, =0x30014
SUB             R0, R0, R5
BL              sub_503808
LDR             R0, [R4,#8]
LDR             R2, =0x30015
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, [R6]
SUB             R0, R0, R5
BL              sub_503808
MOV             R0, #2
NOP
B               loc_21B8CC
LDR             R0, [R6]
LDR             R2, =0x30013
SUB             R0, R0, R5
BL              sub_503808
NOP
NOP
B               loc_21B7E4
MOV             R0, R5
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_21B8E8
LDR             R0, [R4,#8]
LDR             R7, [R6]
LDRB            R0, [R0,#0x495]
CMP             R0, #0
LDR             R0, =dword_6E1330
MOVNE           R6, #2
MOVEQ           R6, #1
LDR             R0, [R0]
TST             R0, #1
BNE             loc_21B894
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_21B894
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R1, #0
MOV             R0, #7
STRD            R0, R1, [SP,#0x20+var_20]
LDR             R3, =flt_711FE4
MOV             R2, R5
MOV             R1, R6
MOV             R0, R7
BL              sub_52AE1C
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x1A
MOV             R0, R5
BL              sub_14C548
MOV             R0, #3
STRB            R0, [R4,#0xC]
B               loc_21B8E8
MOV             R0, R5
BL              sub_5C5820
CMP             R0, #0
NOP
BEQ             loc_21B8F4
MOV             R0, #1
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x1B
MOV             R0, R5
BL              sub_14C548
LDR             R0, [R4,#8]
NOP
BL              sub_4E26EC
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R7,PC}
