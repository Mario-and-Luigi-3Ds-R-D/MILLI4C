PUSH            {R4-R8,LR}
MOV             R5, R0
BL              sub_19283C
MOV             R1, #1
MOV             R0, R5
BL              sub_162904
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC8]
TST             R0, #7
MOVNE           R4, #0
BEQ             locret_16481C
ADD             R0, R5, R4,LSL#2
ADD             R6, R0, #0x14000
LDR             R0, [R6,#0x184]
CMP             R0, #0
BEQ             loc_164810
LDRB            R1, [R0,#0xDE]
TST             R1, #1
BEQ             loc_164810
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
LDR             R6, [R6,#0x184]
ADD             R0, R4, R4,LSL#2
ADD             R0, R5, R0,LSL#3
ADD             R7, R0, #0x17000
LDR             R0, [R6]
ADD             R7, R7, #0xC8
LDR             R1, [R0,#8]
MOV             R0, R6
BEQ             loc_1647A4
BLX             R1
SUB             R0, R0, #5
CMP             R0, #4
BLS             loc_1647B8
B               loc_164810
NOP
BLX             R1
SUB             R0, R0, #5
CMP             R0, #4
BHI             loc_164810
VLDR            S4, [R7,#8]
VLDR            S2, [R7,#4]
VLDR            S1, [R7,#0xC]
VLDR            S0, [R7]
LDR             R0, [R6]
VSUB.F32        S4, S1, S4
VSUB.F32        S2, S2, S0
VLDR            S3, [R7,#0x20]
LDR             R1, [R0,#0x284]
MOV             R0, R6
BLX             R1
VLDR            S4, [R7,#0x18]
VLDR            S2, [R7,#0x14]
VLDR            S1, [R7,#0x1C]
VLDR            S0, [R7,#0x10]
LDR             R0, [R6]
VSUB.F32        S4, S1, S4
VSUB.F32        S2, S2, S0
VLDR            S3, [R7,#0x24]
LDR             R1, [R0,#0x2D0]
MOV             R0, R6
BLX             R1
ADD             R4, R4, #1
CMP             R4, #0x40 ; '@'
BLT             loc_16473C
POP             {R4-R8,PC}
