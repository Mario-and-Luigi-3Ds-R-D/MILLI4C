PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R7, R3
MOV             R11, R2
ADD             R2, R4, #0x10
VPUSH           {D8-D10}
SUB             SP, SP, #4
ADD             R0, SP, #0x40+arg_4
VMOV.F32        S17, S0
LDM             R0, {R6,R9,R10}
VMOV.F32        S16, S1
LDR             R8, [SP,#0x40+arg_0]
LDR             R0, =unk_6EB568
VLDR            S20, [SP,#0x40+arg_10]
MOV             R1, R11
BL              sub_51CCCC
VLDR            S18, =-1.0
VLDR            S19, =1.0
CMP             R5, #0
BEQ             loc_158590
ADD             R1, R4, #0x10
MOV             R0, R5
STR             R1, [SP,#0x40+var_40]
BL              sub_5C414C
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S19
BGE             loc_158578
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S18
LDR             R0, =unk_6EB568
LDR             R1, [SP,#0x40+var_40]
BL              sub_51CC84
NOP
NOP
B               loc_1585BC
VMOV.F32        S0, S17
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S19
BGE             loc_1585B0
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S18
LDR             R0, =unk_6EB568
ADD             R1, R4, #0x10
BL              sub_51CC84
STR             R11, [R4,#0x30]
STRB            R7, [R4,#0x41]
STRH            R6, [R4,#0x42]
STRH            R9, [R4,#0x44]
STRH            R10, [R4,#0x46]
VSTR            S16, [R4,#0x48]
CMP             R5, #0
VSTR            S20, [R4,#0x4C]
BEQ             loc_1585E8
CMP             R7, #0
BEQ             loc_158604
MOV             R0, #0
STR             R0, [R4,#0x50]
CMP             R8, #0
MOVNE           R0, #1
STRBNE          R0, [R4,#0x40]
BNE             loc_158664
B               loc_158620
MOV             R0, R5
MOV             R1, R4
STR             R5, [R4,#0x50]
BL              sub_14C980
NOP
NOP
B               loc_1585F0
CMP             R6, #0
BEQ             loc_158640
MOV             R1, R6
ADD             R0, R4, #0x34 ; '4'
BL              sub_123C70
MOV             R0, #2
NOP
B               loc_158660
LDR             R0, =unk_6EB568
ADD             R1, R4, #0x10
BL              sub_51C20C
LDRSH           R1, [R4,#0x44]
CMP             R1, #0
ADDGT           R0, R4, #0x34 ; '4'
BLGT            sub_123C70
MOV             R0, #3
STRB            R0, [R4,#0x40]
LDR             R0, [R4,#0x64]
CMP             R0, #0
BEQ             loc_15867C
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
VLDR            S0, [R4,#0x48]
ADD             SP, SP, #4
ADD             R1, R4, #0x10
VPOP            {D8-D10}
MOV             R2, #0
POP             {R4-R11,LR}
LDR             R0, =unk_6EB568
B               sub_20175C
