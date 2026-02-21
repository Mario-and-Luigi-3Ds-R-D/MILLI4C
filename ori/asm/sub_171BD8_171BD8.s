LDR             R1, =0x2698
PUSH            {R4,LR}
VPUSH           {D8}
LDRB            R1, [R1,R0]
SUB             R1, R1, #4
CMP             R1, #7; switch 7 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_171BF0; jumptable 00171BF0 default case, case 3
DCD loc_171C14; jump table for switch statement
VLDR            S1, =0.8; jumptable 00171BF0 cases 0-2
VLDR            S16, =12.0
B               def_171BF0; jumptable 00171BF0 default case, case 3
VLDR            S1, =1.6; jumptable 00171BF0 cases 4-6
VLDR            S16, =24.0
ADD             R4, R0, #0x400; jumptable 00171BF0 default case, case 3
VLDR            S3, =-2.0
VLDR            S0, [R4,#0xE0]
VLDR            S2, [R4,#0xC8]
VMUL.F32        S0, S0, S3
VSUB.F32        S1, S2, S1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S1
VSTR            S0, [R4,#0xC8]
BL              sub_5806E0
VLDR            S0, [R4,#0xC4]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVHI.F32      S0, S16
VSTR            S0, [R4,#0xC4]
VPOP            {D8}
POP             {R4,PC}
