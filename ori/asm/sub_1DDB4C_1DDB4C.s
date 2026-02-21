PUSH            {R4-R7,LR}
MOV             R5, R0
LDR             R0, =off_6CE970
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0]
BL              sub_528E64
LDR             R4, [R0,#0x2A8]
MOV             R6, R0
MOV             R1, R0
MOV             R0, SP
BL              sub_1DB9F8
MOV             R0, R6
BL              sub_5EB6A0
LDR             R7, =flt_6E34B0
VLDR            S16, =0.0
CMP             R0, #0
MOV             R1, SP
VMOV.F32        S1, S16
VLDRNE          S0, [R7,#(flt_6E35C8 - 0x6E34B0)]
VLDREQ          S0, [R7,#(flt_6E35C4 - 0x6E34B0)]
MOV             R0, R6
BL              loc_4E412C
CMP             R4, #0
BEQ             loc_1DDBE0
MOV             R0, R4
BL              sub_5EC344
CMP             R0, #0
BEQ             loc_1DDBE0
MOV             R0, R4
BL              sub_5EB6A0
CMP             R0, #0
VMOV.F32        S1, S16
VLDREQ          S0, [R7,#(flt_6E35C4 - 0x6E34B0)]
VLDRNE          S0, [R7,#(flt_6E35C8 - 0x6E34B0)]
MOV             R0, R4
BL              sub_4E4124
LDR             R1, =unk_656B78
ADD             R2, R5, #0x20000
ADD             R2, R2, #0xA00
LDRD            R0, R1, [R1,#(off_656B8C - 0x656B78)]
STRD            R0, R1, [R2,#0xBC]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
