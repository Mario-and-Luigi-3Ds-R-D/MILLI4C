PUSH            {R4-R6,LR}
LDR             R4, =off_6CE970
LDR             R3, [R2,#8]
LDR             R12, =0x139014
LDR             R4, [R4]
SXTB            R3, R3
CMN             R3, #1
ADD             R12, R12, R4
BEQ             loc_20657C
LDR             R4, =0x1D07
SMULBB          R3, R3, R4
ADD             R3, R12, R3,LSL#2
ADD             R3, R3, #0x27400
ADD             R3, R3, #0x1D8
ADD             R12, R3, R4,LSL#2
CMP             R3, R12
BEQ             loc_2065B8
LDR             R4, =0x72E4
LDR             R4, [R4,R3]
CMN             R4, #1
BEQ             loc_2065A0
B               loc_2065B8
LDR             R3, =0x44A58
LDR             R4, =0x1D07
ADD             R5, R12, R3
ADD             R3, R12, #0x27400
LDRB            R12, [R5]
ADD             R3, R3, #0x1D8
SMULBB          R12, R12, R4
ADD             R12, R3, R12,LSL#2
B               loc_206560
LDR             R4, =0x5830
LDR             R4, [R4,R3]
TST             R4, #1
ADDEQ           R3, R3, #0x7400
ADDEQ           R3, R3, #0x1C
BEQ             loc_206560
CMP             R3, R12
MOVEQ           R0, #0
BEQ             locret_2065D4
CMP             R1, #0
ADDNE           R1, R1, #4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
