PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R2
VPUSH           {D8}
VMOV.F32        S16, S0
ADD             R0, R0, #0x300
MOV             R2, R2,LSL#2
ADD             R0, R0, #0xBA
BL              sub_1103A4
STRB            R5, [R4,#0x3B8]
VSTR            S16, [R4,#0x3DC]
VPOP            {D8}
POP             {R4-R6,PC}
