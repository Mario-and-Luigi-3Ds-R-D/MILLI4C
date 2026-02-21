PUSH            {R4-R10,LR}
MOV             R5, R0
VPUSH           {D8-D9}
LDR             R0, [R0,#0x1A0]
TST             R0, #1
BEQ             loc_1E0744
LDR             R9, =off_6D1648
TST             R0, #2
BEQ             loc_1E0760
LDR             R4, [R5,#0x11C]
LDR             R1, [R4,#0x120]
TST             R1, #4
BNE             loc_1E0744
BIC             R0, R0, #1
STR             R0, [R5,#0x1A0]
LDR             R0, [R9]
MOV             R5, #0
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0xAC]
LDR             R0, [R0,#0x1A0]
TST             R0, #1
BEQ             loc_1E074C
LDR             R0, [R4,#0x120]
BIC             R0, R0, #4
STR             R0, [R4,#0x120]
VPOP            {D8-D9}
POP             {R4-R10,PC}
VPOP            {D8-D9}
MOV             R1, R5
MOV             R0, R4
POP             {R4-R10,LR}
B               sub_1FF828
ADD             R8, R5, #0x100
LDRSH           R0, [R8,#0x74]
CMP             R0, #0
LDRLE           R6, [R5,#0x11C]
SUBGT           R0, R0, #1
MOVLE           R0, #0
BGT             loc_1E08AC
ADD             R4, R5, R0,LSL#2
LDR             R2, [R4,#0x120]
CMP             R2, #0
BEQ             loc_1E0798
LDRB            R1, [R2,#0x171]
CMP             R1, #0
BEQ             loc_1E07D0
ADD             R0, R0, #1
CMP             R0, #3
BLT             loc_1E077C
MOV             R7, #0
MOV             R4, R7
STR             R6, [R5,#0x11C]
ADD             R1, R5, R4,LSL#2
LDR             R0, [R1,#0x120]
CMP             R0, #0
BEQ             loc_1E0894
LDRB            R2, [R0,#0x171]
CMP             R2, #0
BEQ             loc_1E0880
B               loc_1E0894
MOV             R1, #1
MOV             R0, R2
BL              sub_532AA0
LDR             R6, [R4,#0x110]
MOV             R0, R6
BL              sub_301CD8
LDR             R0, [R9]
NOP
BL              sub_1E4604
VLDR            S16, [R0,#0x10C]
VLDR            S17, [R0,#0x108]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R9]
VSUB.F32        S18, S16, S0
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VMOV.F32        S1, S18
MOV             R2, #0
VSUB.F32        S0, S17, S0
LDR             R0, =0x20032
MOV             R1, R2
BL              sub_1459F8
MOV             R0, #0x11C
LDRH            R0, [R0,R6]
CMP             R0, #0x13
BNE             loc_1E07A4
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R9]
VSUB.F32        S16, S16, S0
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VMOV.F32        S1, S16
MOV             R2, #0
VSUB.F32        S0, S17, S0
LDR             R0, =0x20033
MOV             R1, R2
BL              sub_1459F8
NOP
NOP
B               loc_1E07A4
LDR             R1, [R1,#0x110]
MOV             R7, #1
CMP             R1, R6
MOVEQ           R1, #1
BLEQ            sub_532AA0
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_1E07B0
CMP             R7, #0
MOVNE           R0, #0xA
BEQ             loc_1E08B8
STRH            R0, [R8,#0x74]
VPOP            {D8-D9}
POP             {R4-R10,PC}
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R6, R0, #0x15000
ADD             R6, R6, #0x14C
MOV             R4, #0
LDR             R0, [R6,R4,LSL#2]
CMP             R0, #0
BEQ             loc_1E08F0
LDRB            R1, [R0,#0xB4]
CMP             R1, #7
BNE             loc_1E08F0
LDR             R1, [R0,#0x120]
TST             R1, #1
BLEQ            sub_301CD8
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BLT             loc_1E08CC
LDR             R0, [R5,#0x1A0]
ORR             R0, R0, #2
STR             R0, [R5,#0x1A0]
VPOP            {D8-D9}
POP             {R4-R10,PC}
