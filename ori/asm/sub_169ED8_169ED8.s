PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, R0, #0x2600
ADD             R0, R0, #0x86
VPUSH           {D8}
LDRB            R0, [R0]
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_169EF4; jumptable 00169EF4 default case
DCD loc_169F10; jump table for switch statement
MOV             R0, R4; jumptable 00169EF4 case 0
BL              sub_573AC4
LDR             R1, [R4,#0x608]
ADD             R0, R4, #0x600
CMP             R1, #0
BEQ             loc_169F44
LDR             R1, [R1,#8]
TST             R1, #0x2000
BEQ             loc_169F44
LDRSB           R0, [R0,#0x5F]
CMN             R0, #1
BEQ             loc_169F88
B               loc_169F50
LDRSB           R0, [R0,#0x5F]
CMN             R0, #1
BEQ             loc_169F90
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x16C00
ADD             R1, R1, #0xE8
LDRB            R2, [R4,#0x65F]
LDM             R1, {R5,R6}
MOV             R0, #1
MOV             R1, #0
BL              sub_300CF8
AND             R0, R0, R5
AND             R1, R1, R6
ORRS            R0, R0, R1
BEQ             loc_169F90
MOV             R6, #1
B               loc_169F94
MOV             R6, #0
LDR             R0, [R4,#0x4EC]
VLDR            S16, =0.0
ADD             R5, R4, #0x400
TST             R0, #1
BNE             loc_16A03C
VLDR            S0, [R5,#0x84]
ADD             R7, R4, #0x800
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_16A00C
LDR             R0, =0x276C
LDRB            R0, [R0,R4]
CMP             R0, #0
BNE             loc_16A00C
LDR             R0, =0x276D
LDRB            R0, [R0,R4]
CMP             R0, #0
BNE             loc_16A00C
CMP             R6, #0
BEQ             loc_16A00C
VLDR            S1, =0.1
VLDR            S2, =0.2
VLDR            S3, =5.5
VSTR            S1, [R5,#0x7C]
VLDR            S0, =-0.16
VSTR            S2, [R5,#0x84]
VSTR            S3, [R5,#0x8C]
VSTR            S0, [R5,#0x94]
VSTR            S0, [R7,#0x30]
B               loc_16A03C
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_16A03C
CMP             R6, #0
BNE             loc_16A03C
VSTR            S16, [R7,#0x30]
LDR             R0, [R4]
LDR             R1, [R0,#0x50]
MOV             R0, R4
BLX             R1
LDR             R0, [R5,#0x7C]
STR             R0, [R7,#0x28]
VLDR            S0, [R5,#0x84]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             def_169EF4; jumptable 00169EF4 default case
CMP             R6, #0
BEQ             def_169EF4; jumptable 00169EF4 default case
LDR             R0, [R4,#0x5E0]
TST             R0, #0x1000
BEQ             loc_16A074
VLDR            S0, [R4,#0x108]
VLDR            S1, [R4,#0x118]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_16A090
TST             R0, #0x400
BEQ             def_169EF4; jumptable 00169EF4 default case
VLDR            S0, [R4,#0x118]
VLDR            S1, [R4,#0x108]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             def_169EF4; jumptable 00169EF4 default case
VSTR            S16, [R5,#0x78]
VPOP            {D8}; jumptable 00169EF4 default case
POP             {R4-R8,PC}
LDR             R0, [R4]; jumptable 00169EF4 case 1
LDR             R1, [R0,#0x424]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R8,LR}
BX              R1
ADD             R0, R4, #0x2400; jumptable 00169EF4 cases 2,3
ADD             R0, R0, #0x28C
LDR             R1, =0x2690
LDR             R3, [R0]
MOV             R2, #0
STR             R3, [R1,R4]
STR             R2, [R0]
LDR             R0, [R4]
LDR             R1, [R0,#0x428]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R8,LR}
BX              R1
LDR             R0, =0x2698; jumptable 00169EF4 case 4
LDRB            R0, [R0,R4]
TST             R0, #3
BEQ             loc_16A110
LDR             R0, [R4]
LDR             R1, [R0,#0x42C]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R8,LR}
BX              R1
VPOP            {D8}
MOV             R0, R4
POP             {R4-R8,LR}
B               sub_573AC4
