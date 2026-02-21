MOV             R3, R1
ADD             R1, R2, #8
PUSH            {R4-R6,LR}
LDM             R1, {R1,R12}
LDR             R6, =0x1D07
LDR             R4, =off_6CE970
VLDR            S0, =0.0
SXTB            R1, R1
VLDR            S1, =1.0
SMULBB          R1, R1, R6
LDR             R5, [R4]
LDR             R4, =sub_1605EC
ANDS            R12, R12, #0xFF
ADD             R1, R5, R1,LSL#2
ADD             R1, R1, R4
BEQ             loc_20BCE0
CMP             R12, #1
BEQ             loc_20BD00
CMP             R12, #2
BNE             loc_20BD3C
B               loc_20BD14
ADD             R1, R1, #0x7000
LDR             R12, [R1,#0x2E4]
CMN             R12, #1
BEQ             loc_20BD3C
LDR             R1, [R1,#0x3B8]
TST             R1, #6
BEQ             loc_20BD3C
B               loc_20BD38
ADD             R1, R1, #0x7000
LDR             R1, [R1,#0x2E4]
CMN             R1, #1
BNE             loc_20BD3C
B               loc_20BD38
LDR             R12, =0x72E4
LDR             R12, [R12,R1]
CMN             R12, #1
BNE             loc_20BD3C
ADD             R1, R1, #0x5000
ADD             R1, R1, #0x830
LDR             R1, [R1]
TST             R1, #1
BNE             loc_20BD3C
VMOV.F32        S0, S1
CMP             R3, #0
ADDNE           R1, R3, #4
LDRH            R3, [R2,#2]
MOVEQ           R1, #0
MOV             R2, R1
MOV             R1, R0
MOV             R0, R3
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
