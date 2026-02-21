PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8-D10}
LDR             R0, [R0,#0x4EC]
TST             R0, #1
BNE             loc_16B8CC
ADD             R0, R4, #0x400
VLDR            S20, =0.0
LDR             R1, =0x2686
VLDR            S0, [R0,#0xC8]
VMOV.F32        S18, S20
VLDR            S1, =2.0
LDRB            R1, [R1,R4]
ADD             R6, R4, #0x2400
VMUL.F32        S0, S0, S1
ADD             R6, R6, #0x298
CMP             R1, #1
VMOV.F32        S19, S18
VMOV.F32        S16, S18
VMOV.F32        S17, S18
LDRBEQ          R5, [R6]
MOVNE           R5, #0
CMP             R5, #0
BEQ             loc_16B630
CMP             R5, #1
BEQ             loc_16B650
CMP             R5, #2
BEQ             loc_16B670
CMP             R5, #3
BNE             loc_16B6AC
B               loc_16B690
ADD             R0, R0, #0x1BC
VLDR            S1, [R4,#0x108]
VLDR            S16, [R4,#0x10C]
VLDM            R0, {S2-S3}
VSUB.F32        S17, S16, S0
VADD.F32        S18, S1, S2
VADD.F32        S19, S1, S3
B               loc_16B6AC
ADD             R0, R0, #0x1BC
VLDR            S1, [R4,#0x10C]
VLDR            S19, [R4,#0x108]
VLDM            R0, {S2-S3}
VSUB.F32        S18, S19, S0
VSUB.F32        S16, S1, S2
VSUB.F32        S17, S1, S3
B               loc_16B6AC
ADD             R0, R0, #0x1BC
VLDR            S1, [R4,#0x108]
VLDR            S17, [R4,#0x10C]
VLDM            R0, {S2-S3}
VADD.F32        S16, S17, S0
VSUB.F32        S19, S1, S2
VSUB.F32        S18, S1, S3
B               loc_16B6AC
ADD             R0, R0, #0x1BC
VLDR            S1, [R4,#0x10C]
VLDR            S18, [R4,#0x108]
VLDM            R0, {S2-S3}
VADD.F32        S19, S18, S0
VADD.F32        S17, S1, S2
VADD.F32        S16, S1, S3
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
LDR             R0, [R0]
LDR             R1, [R0]
TST             R1, #1
BNE             loc_16B8CC
LDR             R1, [R0]
TST             R1, #2
BNE             loc_16B8C0
LDR             R1, [R0,#4]
LDR             R1, [R1,#8]
TST             R1, #1
BEQ             loc_16B8C0
VLDR            S0, [R0,#0x18]
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
BLE             loc_16B708
LDRB            R1, [R6]
CMP             R1, #0
BNE             loc_16B8C0
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
BCS             loc_16B720
LDRB            R1, [R6]
CMP             R1, #2
BNE             loc_16B8C0
ADD             R1, R0, #0x20 ; ' '
CMP             R5, #0
VLDM            R1, {S1-S3}
CMPNE           R5, #2
VLDR            S0, [R0,#0x2C]
BEQ             loc_16B834
VCMPE.F32       S18, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_16B8C0
VCMPE.F32       S19, S3
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S16, S2
VMRSCS          APSR_nzcv, FPSCR
BLS             loc_16B8C0
VCMPE.F32       S17, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_16B8C0
VLDR            S2, [R0,#0xC]
VLDR            S1, [R0,#0x18]
VLDR            S0, [R0,#8]
VSUB.F32        S4, S16, S2
VSUB.F32        S2, S17, S2
VSUB.F32        S6, S18, S0
VSUB.F32        S5, S19, S0
VLDR            S3, [R0,#0x1C]
VMUL.F32        S4, S4, S1
VMUL.F32        S1, S2, S1
VMOV.F32        S0, S4
VMOV.F32        S2, S1
VMLS.F32        S4, S3, S6
VMLS.F32        S1, S3, S6
VMLS.F32        S0, S3, S5
VMLS.F32        S2, S3, S5
VCMPE.F32       S20, S4
VMRS            APSR_nzcv, FPSCR
BHI             loc_16B7D4
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
BLT             loc_16B7D4
VCMPE.F32       S20, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_16B7D4
VCMPE.F32       S2, S20
VMRS            APSR_nzcv, FPSCR
BGE             loc_16B8C0
VCMPE.F32       S4, S20
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S0, S20
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_16B7FC
VCMPE.F32       S1, S20
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S2, S20
VMRSCC          APSR_nzcv, FPSCR
BCC             loc_16B8C0
CMP             R5, #0
BEQ             loc_16B864
CMP             R5, #1
BEQ             loc_16B87C
CMP             R5, #2
BEQ             loc_16B894
CMP             R5, #3
BEQ             loc_16B8AC
ADD             R1, R4, #0x2400
ADD             R1, R1, #0x28C
LDR             R2, [R1]
CMP             R2, #0
BNE             loc_16B8F4
B               loc_16B8E8
VCMPE.F32       S18, S0
VMRS            APSR_nzcv, FPSCR
BGE             loc_16B8C0
VCMPE.F32       S19, S3
VMRS            APSR_nzcv, FPSCR
BLS             loc_16B8C0
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
VCMPELE.F32     S17, S1
VMRSLE          APSR_nzcv, FPSCR
BGT             loc_16B8C0
B               loc_16B764
VCMPE.F32       S4, S20
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S0, S20
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_16B8C0
B               loc_16B81C
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S2, S20
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_16B8C0
B               loc_16B81C
VCMPE.F32       S1, S20
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S2, S20
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_16B8C0
B               loc_16B81C
VCMPE.F32       S4, S20
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S1, S20
VMRSCS          APSR_nzcv, FPSCR
BCS             loc_16B81C
LDR             R1, [R0,#0x34]!
TST             R1, #1
BEQ             loc_16B6D0
VPOP            {D8-D10}
MOV             R0, #0
POP             {R4-R6,PC}
DCD 0x2686
DCFS 2.0
DCFS 0.0
DCD off_6D1648
STR             R0, [R1]
LDR             R0, [R0,#4]
STR             R0, [R4,#0x608]
MOV             R0, #1
VPOP            {D8-D10}
POP             {R4-R6,PC}
