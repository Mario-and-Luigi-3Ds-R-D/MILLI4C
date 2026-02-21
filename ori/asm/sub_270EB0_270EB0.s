PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R2, =off_63EF74
MOV             R1, #2
STRB            R1, [R4,#0xD8]
ADD             R3, R4, #8
VSTR            S16, [R4,#0xC0]
LDM             R2, {R1,R2}
MOV             R0, #0
STM             R3, {R1,R2}
STRB            R0, [R4,#0x114]
STRB            R0, [R4,#0xAD]
ADD             R0, R4, #0x78 ; 'x'
BL              sub_5A18EC
ADD             R0, R4, #0x44 ; 'D'
BL              sub_5A18EC
VLDR            S0, =0.5
VLDR            S17, =0.0
ADD             R0, R4, #0x44 ; 'D'
VMUL.F32        S16, S16, S0
VMOV.F32        S0, S17
VMOV.F32        S1, S16
BL              sub_5A14A4
VMOV.F32        S1, S16
VMOV.F32        S0, S17
VPOP            {D8}
ADD             R0, R4, #0x78 ; 'x'
POP             {R4,LR}
B               sub_5A14A4
