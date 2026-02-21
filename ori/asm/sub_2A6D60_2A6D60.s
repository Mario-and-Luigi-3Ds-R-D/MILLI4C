PUSH            {R4-R8,LR}
MOV             R4, R0
SUB             SP, SP, #8
LDRB            R0, [R0,#0xB9]
LDRB            R2, [R4,#0xB8]
CMP             R0, R1
SUB             R6, R0, R2
MOVEQ           R5, #1
MOVNE           R5, #0
MOV             R0, R4
BL              sub_2A04E0
CMP             R5, #0
BNE             loc_2A6EF4
LDRB            R0, [R4,#0xB9]
LDRB            R1, [R4,#0xB8]
ADD             R5, R4, #0x7000
ADD             R5, R5, #0x510
SUB             R0, R0, R1
CMP             R6, R0
BEQ             loc_2A6DCC
MOV             R0, R4
BL              sub_5CDFB8
VSTMEA          SP, {S0-S1}
MOV             R1, SP
LDR             R0, [R5]
LDR             R0, [R0,#0x208]
BL              sub_215A04
LDR             R6, [R5]
LDR             R7, =off_6CE970
MOV             R8, #1
LDRB            R0, [R6,#0xFE]
CMP             R0, #0
BEQ             loc_2A6E30
MOV             R0, R4
BL              sub_29F9A4
LDR             R0, [R0]
ADD             R6, R6, #0x8000
ADD             R6, R6, #0x304
UXTH            R1, R0
LDR             R0, [R6]
TST             R0, R8,LSL R1
LDRNE           R0, [R7]
MOVEQ           R0, #2
BLNE            sub_5EE79C
LDR             R1, [R5]
MOV             R3, #0x100
MOV             R2, #0
ADD             R12, R1, #0x400
ADD             R12, R12, #0x11C
MOV             R1, R0
MOV             R0, R12
BL              sub_11DCDC
LDR             R0, [R5]
LDR             R12, [R7]
LDR             R2, =0x30010
MOV             R3, #0
LDR             R1, [R0,#0x208]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, R4
NOP
BL              sub_29F9A4
LDR             R0, [R0]
UXTH            R4, R0
AND             R0, R4, #0xF000
CMP             R0, #0x1000
BEQ             loc_2A6EB8
CMP             R0, #0xB000
CMPNE           R0, #0xC000
BNE             loc_2A6EF4
LDR             R0, [R7]
LDR             R1, =byte_19CF35
LDRB            R1, [R1,R0]; byte_19CF35
CMP             R1, #0
BEQ             loc_2A6EF4
BL              sub_528E64
LDR             R1, =0x19DFE8
LDR             R2, [R7]
ADD             R1, R1, R2; loc_19DFE8
LDRB            R2, [R0,#0x495]
LDR             R0, [R1]
ADD             SP, SP, #8
MOV             R1, R4
POP             {R4-R8,LR}
B               sub_1CC63C
MOV             R0, R4
BL              sub_50EFA0
LDRB            R0, [R0,#0x14]
CMP             R0, #0
MOVEQ           R2, R8
BEQ             loc_2A6EDC
CMP             R0, #1
MOVNE           R2, #3
MOVEQ           R2, #2
LDR             R0, [R7]
ADD             SP, SP, #8
MOV             R3, #0
POP             {R4-R8,LR}
MOV             R1, #2
B               sub_52A660
ADD             SP, SP, #8
POP             {R4-R8,PC}
