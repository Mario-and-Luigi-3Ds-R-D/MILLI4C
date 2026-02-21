PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
VPUSH           {D8-D9}
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x24 ; '$'
VLDR            S18, =3.4028e38
VLDR            S17, [R0]
VLDR            S19, [R0,#4]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
MOV             R1, #0
ADD             R2, R0, #0x15000
ADD             R2, R2, #0x13C
STR             R1, [R4,#0x14]
ADD             R0, R2, R1,LSL#2
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_29BD84
LDRB            R3, [R0,#0xB4]
CMP             R3, #1
BNE             loc_29BD78
VLDR            S1, [R0,#0x18]
VLDR            S0, [R0,#0x1C]
VSUB.F32        S1, S17, S1
VSUB.F32        S0, S19, S0
VMUL.F32        S16, S1, S1
VMLA.F32        S16, S0, S0
VCMPE.F32       S16, S18
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S18, S16
STRCC           R0, [R4,#0x14]
ADD             R1, R1, #1
CMP             R1, #0x20 ; ' '
BLT             loc_29BD34
MOV             R0, R4
BL              sub_29B468
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #1
NOP
BNE             loc_29BDD0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R0, [R0,#0x33C]
TST             R0, #4
MOVNE           R0, R4
BLNE            sub_29B2C4
LDR             R1, [R4,#0x70]
CMP             R1, #0
BNE             loc_29BDF0
LDR             R0, [R4,#0x74]
TST             R0, #1
BEQ             loc_29BE14
CMP             R0, #0
BEQ             loc_29BE14
LDR             R0, [R4,#0x74]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_29BE08
LDR             R2, [R0]
LDR             R1, [R2,R1]
VPOP            {D8-D9}
POP             {R4-R6,LR}
BX              R1
VPOP            {D8-D9}
POP             {R4-R6,PC}
