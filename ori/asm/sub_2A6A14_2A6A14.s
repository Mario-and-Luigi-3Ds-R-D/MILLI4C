PUSH            {R4-R10,LR}
MOV             R4, R0
LDR             R10, =off_6CE970
VPUSH           {D8}
SUB             SP, SP, #8
LDR             R0, [R10]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
MOV             R1, R0,ASR#31
ADD             R0, R0, R1,LSR#24
MOV             R0, R0,ASR#8
VMOV            S0, R0
ADD             R0, R4, #0x100
VCVT.F32.S32    S16, S0
VMOV.F32        S0, S16
BL              sub_5A2484
LDM             R0, {R1,R2}
ADD             R3, R4, #0x24 ; '$'
LDR             R0, [R0,#8]
VMOV.F32        S0, S16
STR             R0, [R4,#0x2C]
STM             R3, {R1,R2}
ADD             R0, R4, #0x158
STR             R1, [R4,#0xEE0]
LDR             R1, [R4,#0x28]
STR             R1, [R4,#0xEE4]
LDR             R1, [R4,#0x2C]
STR             R1, [R4,#0xEE8]
BL              sub_5A2484
VMOV.F32        S0, S16
ADD             R0, R4, #0x1B0
BL              sub_5A2484
LDRB            R0, [R4,#0xFD]
MOV             R7, #0
MOV             R2, R7
CMP             R0, #1
BNE             loc_2A6ADC
LDR             R0, [R10]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
BL              sub_1464D4
MOV             R7, R0
LDR             R0, [R10]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(flt_19B0AC - 0x19B000)]
BL              sub_1464D4
MOV             R2, R0; int
MOV             R0, #0x80
VMOV.F32        S0, S16
STR             R0, [SP,#0x30+var_30]; float
MOV             R3, #0x40 ; '@'; int
MOV             R1, R7; int
ADD             R0, R4, #0xDF0; int
BL              sub_2A0228
LDRB            R0, [R4,#0xFD]
MOV             R9, #1
ADD             R5, R4, #0xC00
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2A6B08; jumptable 002A6B08 default case, cases 0,2,4
DCD def_2A6B08; jump table for switch statement
LDRB            R0, [R4,#0xFE]; jumptable 002A6B08 case 1
CMP             R0, #0
BEQ             def_2A6B08; jumptable 002A6B08 default case, cases 0,2,4
ADD             R0, R4, #0xDF0
BL              sub_29F9A4
MOV             R8, R0
LDR             R0, [R0]
ADD             R6, R4, #0x8000
ADD             R6, R6, #0x304
UXTH            R5, R0
LDR             R0, [R6]
MOV             R9, R9,LSL R5
TST             R0, R9
TSTNE           R7, #0x100
BEQ             def_2A6B08; jumptable 002A6B08 default case, cases 0,2,4
LDR             R0, [R10]
MOV             R1, R5
BL              sub_5EE79C
EOR             R2, R0, #1
LDR             R0, [R10]
MOV             R1, R5
BL              sub_52C058
LDR             R0, [R10]
MOV             R1, R5
BL              sub_5EE79C
CMP             R0, #0
LDR             R0, =0xFFE683CC
LDR             R12, [R10]
LDRNE           R2, =0x3006D
LDREQ           R2, =0x3006E
MOV             R3, #0
MOV             R1, R4
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R10]
MOV             R1, R5
BL              sub_5EE79C
CMP             R0, #0
MOVNE           R0, #3
MOVEQ           R0, #0xFF
STRB            R0, [R8,#5]
LDR             R0, [R6]
MOV             R1, R5
TST             R0, R9
LDRNE           R0, [R10]
MOVEQ           R0, #2
BLNE            sub_5EE79C
ADD             SP, SP, #8
MOV             R1, R0
VPOP            {D8}
ADD             R0, R4, #0x400
POP             {R4-R10,LR}
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #0x11C
B               sub_11DCDC
ADD             R0, R4, #0x100; jumptable 002A6B08 case 3
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_2A6B08; jumptable 002A6B08 default case, cases 0,2,4
ADD             R5, R5, #0x348
VLDM            R5, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             def_2A6B08; jumptable 002A6B08 default case, cases 0,2,4
LDR             R0, [R4,#0x208]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_2A6B08; jumptable 002A6B08 default case, cases 0,2,4
ADD             R0, R4, #0xDF0
BL              sub_29F9A4
LDR             R0, [R0]
UXTH            R5, R0
LDR             R0, [R10]
BL              sub_5EE520
CMP             R0, #4
NOP
BEQ             loc_2A6C7C
CMP             R0, #5
CMPNE           R0, #6
BNE             loc_2A6CF0
B               loc_2A6CBC
MOV             R0, R5
BL              sub_50EFA0
LDRB            R0, [R0,#0x14]
CMP             R0, #0
MOVEQ           R2, R9
BEQ             loc_2A6CA0
CMP             R0, #1
MOVNE           R2, #3
MOVEQ           R2, #2
LDR             R0, [R10]
MOV             R3, #0
MOV             R1, #2
BL              sub_52A660
NOP
NOP
B               loc_2A6CF0
LDR             R0, [R10]
LDR             R1, =byte_19CF35
LDRB            R1, [R1,R0]; byte_19CF35
CMP             R1, #0
BEQ             loc_2A6CF0
BL              sub_528E64
LDR             R1, =0x19DFE8
LDR             R2, [R10]
ADD             R1, R1, R2; loc_19DFE8
LDRB            R2, [R0,#0x495]
LDR             R0, [R1]
MOV             R1, R5
BL              sub_1CC63C
MOV             R0, #4
B               loc_2A6D38
ADD             R0, R4, #0x100; jumptable 002A6B08 case 5
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_2A6B08; jumptable 002A6B08 default case, cases 0,2,4
ADD             R5, R5, #0x348
VLDM            R5, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             def_2A6B08; jumptable 002A6B08 default case, cases 0,2,4
LDR             R0, [R4,#0x208]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_2A6B08; jumptable 002A6B08 default case, cases 0,2,4
STRB            R0, [R4,#0xFD]
ADD             SP, SP, #8; jumptable 002A6B08 default case, cases 0,2,4
VPOP            {D8}
POP             {R4-R10,PC}
