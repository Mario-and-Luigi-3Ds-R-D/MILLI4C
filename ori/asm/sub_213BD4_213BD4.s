PUSH            {R3-R5,LR}
LDR             R0, [R2,#8]
LDR             R2, =0x139014
SXTB            R1, R0
LDR             R0, =off_6CE970
CMN             R1, #1
LDR             R0, [R0]
ADD             R0, R0, R2
BEQ             loc_213C3C
LDR             R2, =0x1D07
SMULBB          R1, R1, R2
ADD             R0, R0, R1,LSL#2
ADD             R4, R0, #0x27400
ADD             R5, R0, #0x2E800
ADD             R4, R4, #0x1D8
ADD             R5, R5, #0x1F4
CMP             R4, R5
BEQ             loc_213C34
MOV             R0, R4
BL              sub_54626C
ADD             R4, R4, #0x7400
ADD             R4, R4, #0x1C
CMP             R4, R5
BNE             loc_213C1C
MOV             R0, #0
POP             {R3-R5,PC}
LDR             R2, =0x44A58
ADD             R4, R0, #0x27400
LDR             R1, =0x1D07
ADD             R4, R4, #0x1D8
LDRB            R0, [R0,R2]
SMULBB          R0, R0, R1
ADD             R5, R4, R0,LSL#2
B               loc_213C14
