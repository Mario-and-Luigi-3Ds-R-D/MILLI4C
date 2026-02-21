PUSH            {R4-R6,LR}
CMP             R1, #0xF0
MOV             R4, R0
VPUSH           {D8}
VMOV.F32        S16, S0
MOV             R5, R1
BEQ             loc_1C80E4
LDR             R0, [R4,#0xAA8]
VMOV.F32        S0, S16
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R5
BLX             R2
CMP             R5, #0xFD
BEQ             loc_1C8140
BGE             loc_1C8104
CMP             R5, #0xF1
BEQ             loc_1C812C
CMP             R5, #0xFC
LDRBEQ          R0, [R4,#0xAAC]
CMPEQ           R0, #0xFE
LDREQ           R0, [R4,#0xAA8]
VSTREQ          S16, [R0,#0x14]
BNE             loc_1C80DC
VPOP            {D8}
POP             {R4-R6,PC}
VCVT.U32.F32    S0, S16
VMOV            R0, S0
AND             R1, R0, #0xFF
MOV             R0, R4
BL              sub_1C7BB8
NOP
NOP
B               loc_1C80B0
CMP             R5, #0xFE
BEQ             loc_1C8158
CMP             R5, #0xFF
LDRBEQ          R0, [R4,#0xAAC]
CMPEQ           R0, #0xFE
LDREQ           R0, [R4,#0xAA8]
VSTREQ          S16, [R0,#8]
BNE             loc_1C80DC
VPOP            {D8}
POP             {R4-R6,PC}
VLDR            S0, =0.017453
VMUL.F32        S0, S16, S0
VSTR            S0, [R4,#0xF8]
VPOP            {D8}
POP             {R4-R6,PC}
LDRB            R0, [R4,#0xAAC]
CMP             R0, #0xFE
LDREQ           R0, [R4,#0xAA8]
VSTREQ          S16, [R0,#0x10]
VPOP            {D8}
POP             {R4-R6,PC}
LDRB            R0, [R4,#0xAAC]
CMP             R0, #0xFE
LDREQ           R0, [R4,#0xAA8]
VSTREQ          S16, [R0,#0xC]
VPOP            {D8}
POP             {R4-R6,PC}
