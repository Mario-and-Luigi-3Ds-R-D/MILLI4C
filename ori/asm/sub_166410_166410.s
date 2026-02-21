PUSH            {R4-R8,LR}
MOV             R5, R1
LDR             R7, =off_6D1648
VPUSH           {D8}
LDR             R0, [R7]
BL              sub_1E45C8
LDR             R6, [R0,#4]
LDR             R0, [R7]
BL              sub_1E45C8
LDR             R4, [R0,#8]
EOR             R0, R5, #1
LDRB            R1, [R4,#0xDE]
BIC             R1, R1, #4
ORR             R0, R1, R0,LSL#2
BIC             R0, R0, #1
ORR             R0, R0, R5
STRB            R0, [R4,#0xDE]
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x84]
MOV             R0, R4
BLX             R2
LDR             R0, [R7]
BL              sub_1E45C8
LDR             R1, [R0,#0x14]
CMP             R5, #0
BIC             R1, R1, #0x10000
ORR             R1, R1, R5,LSL#16
STR             R1, [R0,#0x14]
BEQ             loc_1664E4
LDR             R0, [R7]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R1, R0, #0x108
LDR             R0, [R4]
LDR             R2, [R0,#0x6C]
MOV             R0, R4
BLX             R2
VLDR            S16, =0.0
ADD             R0, R6, #0x800
VSTR            S16, [R0,#0x2C]
VSTR            S16, [R0,#0x28]
LDR             R0, [R7]
BL              sub_1E45C8
LDR             R1, [R0]
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R2, #0
LDR             R3, [R1,#0xEC]
MOV             R1, R2
VPOP            {D8}
POP             {R4-R8,LR}
BX              R3
LDR             R1, [R4,#0x4EC]
BIC             R1, R1, #1
STR             R1, [R4,#0x4EC]
VPOP            {D8}
POP             {R4-R8,PC}
