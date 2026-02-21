PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R8, R1
VLDR            S2, =10000.0
VLDR            S3, =0.0
VPUSH           {D8}
LDR             R1, [R0,#4]
ADD             R12, R1, #0x400
VLDR            S16, [R1,#0x10C]
VLDR            S0, [R12,#0x1CC]
LDR             R0, [R1,#0x610]
VADD.F32        S17, S16, S0
LDR             R2, [R0,#8]
TST             R2, #0x400
BNE             loc_23C344
TST             R2, #1
BEQ             loc_23C344
VLDR            S0, [R1,#0x108]
CMP             R8, #0
BEQ             loc_23C2F0
VLDR            S4, [R12,#0x224]
VLDR            S1, [R0,#0x2C]
VADD.F32        S0, S0, S4
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#0x34]
MOVEQ           R3, #1
MOVNE           R3, #0
TST             R2, #0x800
VMOVNE.F32      S1, S2
VMOVEQ.F32      S1, S3
VADD.F32        S1, S0, S1
VLDR            S0, [R0,#0x30]
B               loc_23C324
VLDR            S4, [R12,#0x228]
VLDR            S1, [R0,#0xC]
VADD.F32        S0, S0, S4
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#0x14]
MOVNE           R3, #0
MOVEQ           R3, #1
TST             R2, #0x800
VMOVNE.F32      S1, S2
VMOVEQ.F32      S1, S3
VADD.F32        S1, S0, S1
VLDR            S0, [R0,#0x10]
CMP             R3, #0
BEQ             loc_23C344
VCMPE.F32       S16, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_23C344
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
BGE             loc_23C4F0
LDR             R2, [R0]
TST             R2, #1
ADDEQ           R0, R0, #0x88
BEQ             loc_23C298
LDR             R9, =off_6D1648
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
MOV             R5, #2
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R7, R1, R0
CMP             R7, #2
BLE             loc_23C508
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R5
BLE             loc_23C3C0
LDR             R0, [R0,#4]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
B               loc_23C3D8
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R2, [R1,#0x28D]
SUB             R1, R5, R2
ADD             R0, R0, R1,LSL#2
LDR             R4, [R0,#0x10]
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_23C3EC; jumptable 0023C3EC default case, case 5
DCD loc_23C4FC; jump table for switch statement
LDR             R0, [R4]; jumptable 0023C3EC default case, case 5
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
LDR             R0, [R6,#4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R6,#4]
LDRB            R1, [R4,#0xDC]
LDRB            R2, [R0,#0xDC]
CMP             R2, R1
BEQ             loc_23C4FC; jumptable 0023C3EC cases 0-4,6
LDRB            R1, [R4,#0xDE]
TST             R1, #1
BEQ             loc_23C4FC; jumptable 0023C3EC cases 0-4,6
TST             R1, #4
BNE             loc_23C4FC; jumptable 0023C3EC cases 0-4,6
LDR             R1, [R0,#0x740]
CMP             R1, R4
BEQ             loc_23C4FC; jumptable 0023C3EC cases 0-4,6
LDR             R1, [R4,#0x648]
TST             R1, #1
BEQ             loc_23C4FC; jumptable 0023C3EC cases 0-4,6
CMP             R8, #0
ADD             R2, R0, #0x400
ADD             R1, R4, #0x400
BEQ             loc_23C4A8
VLDR            S0, [R2,#0x224]
VLDR            S3, [R0,#0x108]
VLDR            S2, [R4,#0x108]
VLDR            S1, [R1,#0x228]
VADD.F32        S0, S3, S0
VADD.F32        S1, S2, S1
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_23C4CC
B               loc_23C4FC; jumptable 0023C3EC cases 0-4,6
VLDR            S0, [R2,#0x228]
VLDR            S3, [R0,#0x108]
VLDR            S1, [R4,#0x108]
VLDR            S2, [R1,#0x224]
VADD.F32        S0, S3, S0
VADD.F32        S1, S1, S2
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_23C4FC; jumptable 0023C3EC cases 0-4,6
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R1,#0x234]
VADD.F32        S1, S0, S1
VCMPE.F32       S16, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_23C4FC; jumptable 0023C3EC cases 0-4,6
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_23C4FC; jumptable 0023C3EC cases 0-4,6
VPOP            {D8}
MOV             R0, #1
POP             {R4-R10,PC}
ADD             R5, R5, #1; jumptable 0023C3EC cases 0-4,6
CMP             R5, R7
BLT             loc_23C388
VPOP            {D8}
MOV             R0, #0
POP             {R4-R10,PC}
