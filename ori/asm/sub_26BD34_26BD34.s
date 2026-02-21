PUSH            {R4-R8,LR}
MOV             R8, R1
VPUSH           {D8-D10}
BL              sub_14F198
ADD             R0, R0, #0x400
MOV             R1, #1
ADD             R0, R0, #4
BL              sub_2744B0
SUB             R4, R0, #0x400
LDR             R0, =dword_6D1F40
SUB             R4, R4, #4
BL              sub_546DB0
MOV             R0, R0,LSL#2
LDR             R6, =off_6CDF98
MOV             R0, R0,LSR#16
MOV             R1, #0x34 ; '4'
ADD             R5, R1, R0,LSL#2
STRB            R5, [R4,#0x400]
LDR             R0, [R6]
MOV             R2, #0
LDR             R1, [R0,#0x138]
MOV             R0, R4
BL              sub_14E6E0
MOV             R1, #1
MOV             R0, R4
BL              sub_14C450
MOV             R7, #1
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R5
MOV             R0, R4
STRB            R7, [R4,#0xF1]
BL              sub_14C548
MOV             R1, R8
MOV             R0, R4
BL              sub_14E984
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
CMP             R5, #0x34 ; '4'
VLDR            S5, =-19.0
VLDR            S0, =0.0
VLDR            S2, =-1.0
VLDR            S4, =20.0
VLDR            S3, =52.0
VLDR            S1, =1.0
CMPNE           R5, #0x38 ; '8'
BEQ             loc_26BE08
CMP             R5, #0x3C ; '<'
BEQ             loc_26BE20
CMP             R5, #0x40 ; '@'
BEQ             loc_26BE3C
B               loc_26BE54
VMOV.F32        S16, S5
VMOV.F32        S17, S0
VMOV.F32        S18, S2
VMOV.F32        S19, S4
VMOV.F32        S20, S3
B               loc_26BE34
VMOV.F32        S17, S0
VMOV.F32        S18, S2
VLDR            S16, =-29.0
VLDR            S19, =25.0
VLDR            S20, =34.0
VMOV.F32        S21, S1
B               loc_26BE54
VMOV.F32        S17, S0
VMOV.F32        S18, S2
VMOV.F32        S21, S1
VLDR            S16, =-17.0
VLDR            S19, =23.0
VLDR            S20, =51.0
ADD             R2, R4, #0x400
ADD             R2, R2, #0x28 ; '('
STRB            R7, [R4,#0x421]
ADD             R0, R4, #0x400
VSTM            R2, {S16-S21}
ADD             R0, R0, #4
MOV             R1, R8
BL              sub_274350
LDR             R0, [R6]
LDR             R12, =off_6CE970
MOV             R1, #0
MOV             R3, R1
LDR             R2, [R0,#0x124]
LDR             R2, [R2,#0x1C4]
STR             R2, [R4,#0x3F8]
LDR             R0, [R0,#0x124]
LDR             R2, =0x300DA
LDR             R0, [R0,#0x1C8]
STR             R0, [R4,#0x3FC]
STRB            R1, [R4,#0x3F4]
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
MOV             R1, R4
SUB             R0, R12, R0
BL              sub_503720
VPOP            {D8-D10}
MOV             R0, R4
POP             {R4-R8,PC}
