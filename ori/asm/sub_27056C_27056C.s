PUSH            {R4,R5,LR}
MOV             R4, R0
MOV             R3, #0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R1, [R0,#0x5AC]
MOV             R0, #0
VMOV.F32        S16, S0
CMP             R1, #0
STRNE           R0, [R4,#0x5AC]
LDR             R0, =off_6CE970
MOV             R5, SP
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xB8
BL              sub_10A358
CMP             R0, #0
BEQ             loc_2705C4
VMOV.F32        S0, S16
MOV             R1, R4
BL              sub_26EB6C
STR             R0, [SP,#0x20+var_20]
ADD             R0, R5, #4
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
ADD             R0, R4, #0x400
MOV             R1, R5
MOV             R2, #0
ADD             R0, R0, #0x2C8
BL              sub_61F1E4
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_270610
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_270610
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
