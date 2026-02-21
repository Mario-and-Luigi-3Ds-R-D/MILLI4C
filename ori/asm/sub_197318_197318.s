PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
VPUSH           {D8}
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #0
BL              sub_19AD54
LDR             R0, [R4,#0x120]
ORR             R0, R0, #1
STR             R0, [R4,#0x120]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
STR             R4, [R0,#0x1CC]
LDR             R0, [R4]
LDR             R1, [R0,#0xBC]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x120]
BIC             R0, R0, #8
STR             R0, [R4,#0x120]
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14C00
ADD             R0, R0, #0x38 ; '8'
LDR             R0, [R0]
LDR             R0, [R0,#0x28]
AND             R5, R0, #1
LDR             R0, [R6]
BL              sub_1E4614
LDR             R1, [R4,#0x3D0]
CMP             R5, #0
BIC             R1, R1, #1
ORR             R1, R1, R5
STR             R1, [R4,#0x3D0]
MOVNE           R1, #1
MOVEQ           R1, #0
BL              sub_16CA4C
LDR             R0, [R4,#0x3D0]
VLDR            S0, =0.0
VLDR            S16, =1.0
TST             R0, #1
BEQ             loc_1973F8
MOV             R1, #3
MOV             R0, R4
BL              loc_1977C4
LDR             R0, [R4]
VMOV.F32        S0, S16
MOV             R1, #1
LDR             R2, [R0,#0xE0]
MOV             R0, R4
BLX             R2
B               loc_19741C
MOV             R1, #2
MOV             R0, R4
BL              loc_1977C4
LDR             R0, [R4]
VMOV.F32        S0, S16
MOV             R1, #0
LDR             R2, [R0,#0xE0]
MOV             R0, R4
BLX             R2
LDR             R0, =off_68BBC0
MOV             R3, #0
LDM             R0, {R1,R2}
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,LR}
B               sub_1F3CE0
