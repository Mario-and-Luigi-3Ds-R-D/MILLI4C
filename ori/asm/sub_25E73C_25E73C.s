PUSH            {R4,LR}
LDR             R2, [R0,#0xC78]
LDRB            R12, [R0,#0x3F8]
MOV             R4, R0
MOV             R3, #0
LDR             R2, [R2]
CMP             R12, #6; switch 6 cases
MOV             R1, #2
MOV             R0, #1
LDRCC           PC, [PC,R12,LSL#2]; switch jump
B               def_25E760; jumptable 0025E760 default case, case 0
DCD def_25E760; jump table for switch statement
LDR             R12, [R4,#0xC6C]; jumptable 0025E760 case 1
VLDR            S2, [R2,#0x2FC]
VLDR            S0, [R12,#4]
VLDR            S1, [R12]
VSUB.F32        S0, S0, S1
VLDR            S1, [R2,#0x300]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_25E7B8
VMOV.F32        S2, S1
VMOV.F32        S3, S0
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BGE             loc_25E86C
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_25E83C
B               loc_25E878; jumptable 0025E760 case 3
LDR             R3, [R4,#0xC6C]; jumptable 0025E760 case 2
VLDR            S0, [R3,#4]
VLDR            S1, [R3]
VSUB.F32        S0, S0, S1
VLDR            S1, [R2,#0x2FC]
VNEG.F32        S1, S1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGE             loc_25E86C
B               loc_25E878; jumptable 0025E760 case 3
STR             R0, [R1,#4]
B               def_25E760; jumptable 0025E760 default case, case 0
LDR             R12, [R4,#0xC6C]; jumptable 0025E760 case 4
VLDR            S2, [R2,#0x338]
VLDR            S0, [R12,#4]
VLDR            S1, [R12]
VSUB.F32        S0, S0, S1
VLDR            S1, [R2,#0x33C]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_25E830
VMOV.F32        S2, S1
VMOV.F32        S3, S0
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BGE             loc_25E86C
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_25E878; jumptable 0025E760 case 3
ADD             R1, R4, #0xC70
STRB            R3, [R4,#0xC70]
B               loc_25E7F0
LDR             R3, [R4,#0xC6C]; jumptable 0025E760 case 5
VLDR            S0, [R3,#4]
VLDR            S1, [R3]
VSUB.F32        S0, S0, S1
VLDR            S1, [R2,#0x338]
VNEG.F32        S1, S1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_25E878; jumptable 0025E760 case 3
ADD             R1, R4, #0xC70
STRB            R0, [R4,#0xC70]
B               loc_25E7F0
STRB            R1, [R4,#0xC70]; jumptable 0025E760 case 3
STR             R0, [R4,#0xC74]
LDRB            R0, [R4,#0xC70]; jumptable 0025E760 default case, case 0
CMP             R0, #1
BNE             loc_25E8A8
LDR             R0, [R4,#0xC6C]
VLDR            S0, [R0,#4]
VLDR            S1, [R0]
ADD             R0, R4, #0xC30
VSUB.F32        S1, S0, S1
VLDR            S0, =1.0
BL              sub_5A12F8
LDRB            R0, [R4,#0xC70]
POP             {R4,PC}
