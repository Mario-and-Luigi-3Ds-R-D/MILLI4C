PUSH            {R4-R8,LR}
MOV             R5, R0
VPUSH           {D8-D9}
LDR             R0, [R0,#0x34]
TST             R0, #8
BEQ             loc_1F57C8
LDR             R8, =off_6D1648
TST             R0, #0x10
BEQ             loc_1F57E4
LDR             R4, [R5,#0x44]
LDR             R1, [R4,#0x120]
TST             R1, #4
BNE             loc_1F57C8
BIC             R0, R0, #8
STR             R0, [R5,#0x34]
LDR             R0, [R8]
MOV             R5, #0
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0xA8]
LDR             R0, [R0,#0x34]
TST             R0, #8
BEQ             loc_1F57D0
LDR             R0, [R4,#0x120]
BIC             R0, R0, #4
STR             R0, [R4,#0x120]
VPOP            {D8-D9}
POP             {R4-R8,PC}
VPOP            {D8-D9}
MOV             R1, R5
MOV             R0, R4
POP             {R4-R8,LR}
B               sub_1FF828
LDRSH           R0, [R5,#0xA0]
CMP             R0, #0
LDRLE           R6, [R5,#0x44]
SUBGT           R0, R0, #1
MOVLE           R0, #0
BGT             loc_1F5938
ADD             R4, R5, R0,LSL#2
LDR             R2, [R4,#0x4C]
CMP             R2, #0
BEQ             loc_1F5818
LDRB            R1, [R2,#0x171]
CMP             R1, #0
BEQ             loc_1F5850
ADD             R0, R0, #1
CMP             R0, #3
BLT             loc_1F57FC
MOV             R7, #0
MOV             R4, R7
STR             R6, [R5,#0x44]
ADD             R0, R5, R4,LSL#2
LDR             R2, [R0,#0x4C]
CMP             R2, #0
BEQ             loc_1F5920
LDRB            R1, [R2,#0x171]
CMP             R1, #0
BEQ             loc_1F5904
B               loc_1F5920
MOV             R1, #1
MOV             R0, R2
BL              sub_532AA0
LDR             R6, [R4,#0x38]
MOV             R1, #1
MOV             R0, R6
BL              sub_306EE0
LDR             R0, [R8]
NOP
BL              sub_1E4604
ADD             R0, R0, #0x108
VLDM            R0, {S16-S17}
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R8]
VSUB.F32        S18, S17, S0
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VMOV.F32        S1, S18
MOV             R2, #0
VSUB.F32        S0, S16, S0
LDR             R0, =0x20032
MOV             R1, R2
BL              sub_1459F8
MOV             R0, #0x11C
LDRH            R0, [R0,R6]
CMP             R0, #0x13
BNE             loc_1F5824
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R8]
VSUB.F32        S17, S17, S0
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VMOV.F32        S1, S17
MOV             R2, #0
VSUB.F32        S0, S16, S0
LDR             R0, =0x20033
MOV             R1, R2
BL              sub_1459F8
NOP
NOP
B               loc_1F5824
LDR             R0, [R0,#0x38]
MOV             R7, #1
CMP             R0, R6
BNE             loc_1F5920
MOV             R1, #1
MOV             R0, R2
BL              sub_532AA0
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_1F5830
CMP             R7, #0
MOVNE           R0, #0xA
BEQ             loc_1F5944
STRH            R0, [R5,#0xA0]
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R6, R0, #0x15000
ADD             R6, R6, #0x14C
MOV             R4, #0
LDR             R0, [R6,R4,LSL#2]
CMP             R0, #0
BEQ             loc_1F5980
LDRB            R1, [R0,#0xB4]
CMP             R1, #0
BNE             loc_1F5980
LDR             R1, [R0,#0x120]
TST             R1, #1
MOVEQ           R1, #1
BLEQ            sub_306EE0
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BLT             loc_1F5958
LDR             R0, [R5,#0x34]
ORR             R0, R0, #0x10
STR             R0, [R5,#0x34]
VPOP            {D8-D9}
POP             {R4-R8,PC}
