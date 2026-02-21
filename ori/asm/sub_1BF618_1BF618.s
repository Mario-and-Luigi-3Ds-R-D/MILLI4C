PUSH            {R4-R8,LR}
MOV             R5, R0
VPUSH           {D8-D9}
LDR             R0, [R0,#8]
LDRSH           R1, [R0]
CMP             R1, #0x19; switch 25 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1BF630; jumptable 001BF630 default case, cases 2-16
DCD loc_1BF69C; jump table for switch statement
MOV             R1, #1; jumptable 001BF630 cases 0,1
STRB            R1, [R0,#0x4B5]
LDR             R0, [R5,#8]
LDRH            R0, [R0,#2]
CMP             R0, #0x1B
BNE             def_1BF630; jumptable 001BF630 default case, cases 2-16
LDR             R8, =off_6D1648
MOV             R6, #2
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
VLDR            S2, =-16.0
LDR             R2, [R0,#4]
LDRB            R1, [R0,#0x110]
LDR             R0, [R5,#4]
VLDR            S1, =16.0
LDR             R3, =0x65E
ADD             R2, R2, #0x14000
VLDR            S0, [R0,#0x108]
LDRB            R2, [R2,#0x28D]
LDRSB           R3, [R3,R0]
VADD.F32        S17, S0, S2
VADD.F32        S18, S0, S1
VLDR            S16, [R0,#0x10C]
CMP             R3, #0
ADD             R7, R2, R1
BGE             def_1BF630; jumptable 001BF630 default case, cases 2-16
CMP             R7, #2
BLS             def_1BF630; jumptable 001BF630 default case, cases 2-16
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R2, =0x1428D
LDR             R1, [R0,#4]
LDRB            R2, [R2,R1]
CMP             R2, R6
ADDGT           R0, R1, R6,LSL#2
ADDGT           R0, R0, #0x14000
SUBLE           R1, R6, R2
LDRGT           R4, [R0,#0x184]
ADDLE           R0, R0, R1,LSL#2
LDRLE           R4, [R0,#0x10]
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1BF760; jumptable 001BF760 default case, case 5
DCD loc_1BF800; jump table for switch statement
LDRB            R0, [R4,#0xDE]; jumptable 001BF760 default case, case 5
TST             R0, #1
BEQ             loc_1BF800; jumptable 001BF760 cases 0-4,6
TST             R0, #4
BNE             loc_1BF800; jumptable 001BF760 cases 0-4,6
LDR             R0, [R4,#0x648]
TST             R0, #1
BEQ             loc_1BF800; jumptable 001BF760 cases 0-4,6
ADD             R0, R4, #0x400
VLDR            S4, [R4,#0x10C]
VLDR            S1, [R0,#0x234]
VLDR            S0, [R4,#0x108]
VLDR            S2, [R0,#0x224]
VADD.F32        S1, S1, S4
VLDR            S3, [R0,#0x228]
VADD.F32        S2, S2, S0
VADD.F32        S0, S3, S0
VCMP.F32        S16, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1BF800; jumptable 001BF760 cases 0-4,6
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1BF800; jumptable 001BF760 cases 0-4,6
VCMPE.F32       S18, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_1BF800; jumptable 001BF760 cases 0-4,6
LDR             R1, [R5,#4]
LDRB            R0, [R4,#0xDC]
STRB            R0, [R1,#0x65E]
VPOP            {D8-D9}; jumptable 001BF630 default case, cases 2-16
POP             {R4-R8,PC}
ADD             R0, R6, #1; jumptable 001BF760 cases 0-4,6
UXTH            R6, R0
CMP             R6, R7
BCC             loc_1BF714
VPOP            {D8-D9}
POP             {R4-R8,PC}
VLDR            S18, =80.0; jumptable 001BF630 case 17
VLDR            S16, =20.0
VMOV.F32        S0, S18
VMOV.F32        S1, S16
VMOV.F32        S2, S0
BL              sub_589698
VMOV.F32        S17, S0
VMOV.F32        S1, S16
VMOV.F32        S0, S18
VMOV.F32        S2, S17
BL              sub_589638
VLDR            S1, =0.0
LDR             R0, [R5,#4]
VCMPE.F32       S0, S1
LDR             R1, [R0]
VMRS            APSR_nzcv, FPSCR
LDR             R1, [R1,#0x214]
VLDR            S2, =-1.75
VNEGLT.F32      S0, S0
VMOV.F32        S1, S0
VMOV.F32        S0, S17
BLX             R1
VLDR            S0, =-1.0
ADD             R0, R5, #0x1000
VSTR            S0, [R0,#0x18C]
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R5,#4]; jumptable 001BF630 case 18
VLDR            S2, =1.75
VLDR            S1, =0.0
VLDR            S0, =-1.65
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
VPOP            {D8-D9}
POP             {R4-R8,LR}
BX              R1
LDRH            R0, [R0,#2]; jumptable 001BF630 case 19
CMP             R0, #0x11
BEQ             def_1BF630; jumptable 001BF630 default case, cases 2-16
ADD             R0, R5, #0x1000
VLDR            S0, =-1.0
VLDR            S2, =-1.75
VSTR            S0, [R0,#0x18C]
LDR             R0, [R5,#4]
VLDR            S1, =1.0
VLDR            S0, =7.0
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
VPOP            {D8-D9}
POP             {R4-R8,LR}
BX              R1
LDR             R0, [R5,#4]; jumptable 001BF630 case 20
VLDR            S2, =-30.0
VLDR            S1, =1.6
VLDR            S0, =-20.0
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
BLX             R1
LDR             R1, [R5,#8]
MOV             R0, #0
STRB            R0, [R1,#0x4B5]
VPOP            {D8-D9}
POP             {R4-R8,PC}
MOV             R1, #0; jumptable 001BF630 case 21
STRB            R1, [R0,#0x4B5]
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R5,#4]; jumptable 001BF630 cases 22,23
LDR             R1, [R0,#0x4EC]
BIC             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R5,#4]; jumptable 001BF630 case 24
VLDR            S0, =0.0
ADD             R1, R5, #0x1000
ADD             R0, R0, #0x400
VLDR            S1, =129.36
VSTR            S0, [R0,#0x78]
ADD             R1, R1, #0x198
ADD             R0, R5, #0x1000
VSTM            R1, {S0-S1}
ADD             R0, R0, #0x1A8
VLDR            S2, =90.0
VLDR            S3, =3.0
VSTM            R0, {S2-S3}
VPOP            {D8-D9}
POP             {R4-R8,PC}
