PUSH            {R0-R12,LR}
MOV             R10, R0
ADD             R0, SP, #0x38+arg_0
MOV             R9, R3
LDM             R0, {R7,R11}
LDR             R0, [SP,#0x38+var_30]
MUL             R1, R7, R7
MUL             R2, R0, R0
MOV             R0, #0
MLA             R8, R3, R9, R2
CMP             R8, R1
BGT             loc_11B74C
LDR             R1, [SP,#0x38+var_34]
STRH            R0, [R1]
STRH            R0, [R10]
ADD             SP, SP, #0x10
POP             {R4-R12,PC}
MOV             R6, R8,LSL#14
CMP             R6, #0
MOVLE           R4, R0
BLE             loc_11B79C
CMP             R6, #1
MOV             R0, R6
MOV             R5, #1
BLE             loc_11B77C
MOV             R5, R5,LSL#1
MOV             R0, R0,ASR#1
CMP             R0, R5
BGT             loc_11B76C
MOV             R1, R5
MOV             R0, R6
BL              sub_2FEFCC
MOV             R4, R5
ADD             R0, R0, R4
MOV             R5, R0,ASR#1
CMP             R5, R4
BLT             loc_11B77C
MUL             R0, R11, R11
MOV             R1, R4
CMP             R0, R8
SUBLE           R6, R11, R7
LDR             R0, [SP,#0x38+var_30]
MOVLE           R5, R6,LSL#7
SUBGT           R5, R4, R7,LSL#7
RSBGT           R6, R7, R4,ASR#7
MUL             R0, R0, R5
BL              sub_2FEFCC
STRH            R0, [R10]
MUL             R0, R9, R5
MOV             R1, R4
BL              sub_2FEFCC
LDR             R2, [SP,#0x38+var_34]
SXTH            R1, R6
STRH            R0, [R2]
ADD             SP, SP, #0x10
MOV             R0, R1
POP             {R4-R12,PC}
