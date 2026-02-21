PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VMOV.F64        D9, D0
STRB            R1, [R4,#0xC64]
LDR             R2, [R4,#0xC78]
LDRB            R1, [R0,#0xC64]
LDR             R0, [R2]
CMP             R1, #0
ADDEQ           R0, R0, #0x370
BEQ             loc_25E6C8
CMP             R1, #1
CMPNE           R1, #2
ADDEQ           R0, R0, #0x380
BNE             loc_25E6CC
VLDM            R0, {S16-S17}
LDR             R5, [R4,#0x444]
MOV             R0, R5
BL              sub_5A26D0
ADD             R0, R4, #0x28 ; '('
ADD             R3, R5, #0x1C
LDM             R0, {R0-R2}
ADD             R5, R5, #4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
LDR             R5, [R4,#0x440]
MOV             R0, R5
BL              sub_5A26D0
ADD             R0, R4, #0x28 ; '('
ADD             R3, R5, #0x1C
LDM             R0, {R0-R2}
ADD             R5, R5, #4
VMOV.F32        S3, S17
VMOV.F32        S2, S16
STM             R3, {R0-R2}
VMOV.F32        S1, S18
VMOV.F32        S0, S19
STM             R5, {R0-R2}
MOV             R0, R4
BL              sub_25F0A8
MOV             R0, #1
STRB            R0, [R4,#0x3F8]
VPOP            {D8-D9}
POP             {R4-R6,PC}
