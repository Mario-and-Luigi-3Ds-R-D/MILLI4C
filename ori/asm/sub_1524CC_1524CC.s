PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
LDR             R0, [R5,#0x204]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             locret_1525AC
MOV             R0, R5
BL              sub_14D83C
MOV             R0, #0
STRB            R0, [R5,#0xF3]
LDR             R0, [R4,#0x34]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
LDR             R0, [R4,#8]
LDR             R6, =off_6CE970
MOV             R1, #0
LDR             R5, [R0,#0x18]
LDR             R0, [R6]
BL              sub_5EE540
VCVT.S32.F32    S0, S0
LDR             R7, =unk_63FC24
VMOV            R0, S0
CMP             R0, #1
BEQ             loc_152554
CMP             R0, #2
BEQ             locret_1525AC
CMP             R0, #3
BNE             loc_152590
B               loc_152578
VLDR            S0, =0.0
MOV             R1, #0
VSTR            S0, [R5,#0x98]
LDR             R0, [R6]
VLDR            S0, =2.0
BL              sub_52A480
LDRD            R0, R1, [R7,#(off_63FC90 - 0x63FC24)]
NOP
B               loc_1525A8
VLDR            S0, =1.0
MOV             R1, #0
VSTR            S0, [R5,#0x98]
LDR             R0, [R6]
VLDR            S0, =4.0
BL              sub_52A480
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #4
MOV             R0, R5
BL              sub_14C548
LDRD            R0, R1, [R7,#(off_63FC98 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R8,PC}
