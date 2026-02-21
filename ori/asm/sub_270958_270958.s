PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R1, =off_63EF64
MOV             R4, R0
VPUSH           {D8}
VMOV.F32        S16, S0
STRB            R5, [R0,#0xD8]
STRB            R5, [R0,#0xAF]
VSTR            S16, [R0,#0xC0]
LDRD            R0, R1, [R1,#(off_63EF6C - 0x63EF64)]
STRD            R0, R1, [R4,#8]
ADD             R0, R4, #0x78 ; 'x'
STRB            R5, [R4,#0x114]
BL              sub_5A18EC
ADD             R0, R4, #0x44 ; 'D'
BL              sub_5A18EC
STRB            R5, [R4,#0xAD]
VLDR            S17, =0.0
STRB            R5, [R4,#0xAE]
LDR             R0, [R4,#0x14]
VMOV.F32        S1, S16
VMOV.F32        S0, S17
STR             R0, [R4,#0xC4]
ADD             R0, R4, #0x78 ; 'x'
BL              sub_5A14A4
VLDR            S0, =0.5
ADD             R0, R4, #0xDC
VMUL.F32        S1, S16, S0
VMOV.F32        S0, S17
VPOP            {D8}
POP             {R4-R6,LR}
B               sub_5A14A4
