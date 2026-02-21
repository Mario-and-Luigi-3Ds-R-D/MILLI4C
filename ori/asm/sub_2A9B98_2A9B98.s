PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
MOV             R6, #0
VPUSH           {D8}
SUB             SP, SP, #0x20
LDRH            R1, [R0,#0x40]
LDR             R0, [R5]
VLDR            S17, =4.0
VLDR            S16, =0.0
CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2A9BC4; jumptable 002A9BC4 default case
DCD loc_2A9BE0; jump table for switch statement
NOP; jumptable 002A9BC4 case 0
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #2
LDREQ           R0, [R5]
LDREQ           R0, [R0,#0xBC]
VLDR            S1, [R4,#0x30]
VLDR            S0, =12.0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             def_2A9BC4; jumptable 002A9BC4 default case
LDR             R0, [R4,#4]
VMOV.F32        S0, S17
MOV             R3, #0
MOV             R2, #1
LDR             R1, [R0,#0xB10]
BIC             R1, R1, #1
STR             R1, [R0,#0xB10]
LDR             R0, [R4,#4]
MOV             R1, #0x39 ; '9'
BL              sub_504304
VMOV.F32        S0, S17
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #0x33 ; '3'
BL              sub_504208
MOV             R0, #1
STRH            R0, [R4,#0x40]
LDR             R0, [R4,#0x4C]
TST             R0, #0x10
BNE             def_2A9BC4; jumptable 002A9BC4 default case
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #2
NOP
BNE             loc_2A9CAC
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R0, [R0,#0x428]
AND             R0, R0, #0x10000
MOVS            R0, R0,LSR#16
MOVNE           R0, #0x100
BNE             loc_2A9CB0
MOV             R0, #0x14
VMOV            S0, R0
VLDR            S1, [R4,#0x30]
VCVT.F32.U32    S0, S0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             def_2A9BC4; jumptable 002A9BC4 default case
LDR             R0, [R4,#0x4C]
ORR             R0, R0, #0x10
STR             R0, [R4,#0x4C]
ADD             SP, SP, #0x20 ; ' '; jumptable 002A9BC4 default case
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R1, [R4,#0x4C]; jumptable 002A9BC4 case 1
TST             R1, #0x10
BNE             loc_2A9D54
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #2
NOP
BNE             loc_2A9D2C
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R0, [R0,#0x428]
AND             R0, R0, #0x10000
MOVS            R0, R0,LSR#16
MOVNE           R0, #0x100
BNE             loc_2A9D30
MOV             R0, #0x14
VMOV            S0, R0
VLDR            S1, [R4,#0x30]
VCVT.F32.U32    S0, S0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_2A9D54
LDR             R0, [R4,#0x4C]
ORR             R0, R0, #0x10
STR             R0, [R4,#0x4C]
LDR             R0, [R4,#4]
BL              sub_50581C
CMP             R0, #0
NOP
BNE             def_2A9BC4; jumptable 002A9BC4 default case
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #2
NOP
BNE             loc_2A9DAC
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R0, [R0,#0x428]
AND             R0, R0, #0x10000
MOVS            R0, R0,LSR#16
MOVNE           R0, #0x100
BNE             loc_2A9DB0
MOV             R0, #0x14
VMOV            S0, R0
VLDR            S1, [R4,#0x30]
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
VCVT.F32.U32    S0, S0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S0, S17
BHI             loc_2A9E48
MOV             R1, #0x3A ; ':'
BL              sub_504304
VMOV.F32        S0, S17
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #0x34 ; '4'
BL              sub_504208
LDR             R0, [R4,#0x4C]
MOV             R1, #2
VMOV.F32        S0, S16
STRH            R1, [R4,#0x40]
BIC             R0, R0, #0x10
STR             R6, [R4,#0x44]!
ORR             R0, R0, #2
STR             R0, [R4,#8]
MOV             R4, #0
VMOV.F32        S1, S0
LDR             R0, =0x20147
MOV             R2, R4
MOV             R1, R4
BL              sub_1459F8
ADD             SP, SP, #0x20 ; ' '
MOV             R1, R4
VPOP            {D8}
VLDR            S0, =3.0
POP             {R4-R6,LR}
B               sub_234A9C
MOV             R1, #0x39 ; '9'
BL              sub_504304
LDR             R0, [R4,#4]
ADD             SP, SP, #0x20 ; ' '
VMOV.F32        S0, S17
VPOP            {D8}
MOV             R3, #0
POP             {R4-R6,LR}
MOV             R2, #1
MOV             R1, #0x33 ; '3'
B               sub_504208
LDR             R0, [R4,#4]; jumptable 002A9BC4 case 2
BL              sub_50581C
CMP             R0, #0
NOP
BNE             def_2A9BC4; jumptable 002A9BC4 default case
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R2, #0
LDR             R0, =0x20042
MOV             R1, R2
BL              sub_1459F8
VSTR            S16, [SP,#0x38+var_28]
VSTR            S16, [SP,#0x38+var_24]
VSTR            S16, [SP,#0x38+var_20]
LDR             R0, [R5]
LDR             R0, [R0,#0xC0]
LDR             R1, [R0]
MOV             R3, #1
ADD             R2, SP, #0x38+var_28
LDR             R12, [R1,#0x29C]
MOV             R1, #0x17
BLX             R12
VMOV.F32        S0, S17
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #0x38 ; '8'
BL              sub_504304
VMOV.F32        S0, S17
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #0x32 ; '2'
BL              sub_504208
MOV             R0, #3
STRH            R0, [R4,#0x40]
STRH            R6, [R4,#0x42]
LDR             R0, [R5]
LDR             R0, [R0,#0xC8]
TST             R0, #0x10
BEQ             loc_2A9F38
VSTR            S16, [SP,#0x38+var_38]
VSTR            S16, [SP,#0x38+var_34]
VSTR            S16, [SP,#0x38+var_30]
VSTR            S16, [SP,#0x38+var_2C]
MOV             R2, SP
MOV             R1, #5
MOV             R0, R4
BL              sub_2CF47C
VSTR            S16, [R4,#0x30]
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8}
POP             {R4-R6,PC}
DCD off_6D1648
DCFS 4.0
DCFS 0.0
DCFS 12.0
DCD 0x20147
DCFS 3.0
DCD 0x20042
LDR             R0, [R4,#4]; jumptable 002A9BC4 case 3
BL              sub_50581C
CMP             R0, #0
NOP
BNE             def_2A9BC4; jumptable 002A9BC4 default case
LDRH            R0, [R4,#0x42]
VMOV.F32        S0, S17
MOV             R3, #0
ADD             R0, R0, #1
MOV             R2, #1
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#16
STRH            R0, [R4,#0x42]
LDR             R0, [R4,#4]
BEQ             loc_2A9FD4
MOV             R1, #0x37 ; '7'
BL              sub_504304
VMOV.F32        S0, S17
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #0x31 ; '1'
BL              sub_504208
MOV             R0, #4
STRH            R0, [R4,#0x40]
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8}
POP             {R4-R6,PC}
MOV             R1, #0x38 ; '8'
BL              sub_504304
LDR             R0, [R4,#4]
ADD             SP, SP, #0x20 ; ' '
VMOV.F32        S0, S17
VPOP            {D8}
MOV             R3, #0
POP             {R4-R6,LR}
MOV             R2, #1
MOV             R1, #0x32 ; '2'
B               sub_504208
LDR             R0, [R4,#4]; jumptable 002A9BC4 case 4
BL              sub_50581C
CMP             R0, #0
NOP
BNE             def_2A9BC4; jumptable 002A9BC4 default case
STRH            R6, [R4,#0x40]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0xB10]
ORR             R1, R1, #1
STR             R1, [R0,#0xB10]
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8}
POP             {R4-R6,PC}
