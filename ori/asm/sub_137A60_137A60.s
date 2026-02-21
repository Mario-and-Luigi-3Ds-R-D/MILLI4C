PUSH            {R4,LR}
VMOV            R0, S1
MOV             R2, #0
MOV             R3, #0x2000000
VPUSH           {D8-D10}
MOV             R1, #0xFF000000
VMOV.F32        S17, S0
VLDR            S18, =1.0
VLDR            S19, =0.0
VMOV            R4, S17
VMOV.F32        S16, S18
SUB             R12, R4, #0x800000
CMP             R12, #0x7F000000
ADD             R12, R3, R0,LSL#1
BCS             loc_137AA8
CMP             R12, #0x40000000
BCS             loc_137D90
B               loc_137B58
CMP             R12, #0x40000000
BCC             loc_137B58
ADD             R3, R4, #0x40000000
ADD             R3, R3, #0x3F800000
CMP             R3, #0x7F000000
BCS             loc_137B18
VABS.F32        S17, S17
MOV             R3, R0,LSL#1
VMOV            R4, S17
MOV             R3, R3,LSR#24
CMP             R3, #0x7F
BLT             loc_137AF8
CMP             R3, #0x97
BGE             loc_137D90
MOV             R12, #1
RSB             R3, R3, #0x96
MOV             R3, R12,LSL R3
SUB             R12, R3, #1
TST             R12, R0
BEQ             loc_137B0C
MOV             R0, #1
BLX             sub_100622
VDIV.F32        S0, S19, S19
VPOP            {D8-D10}
POP             {R4,PC}
TST             R0, R3
VLDRNE          S16, =-1.0
B               loc_137D90
MOV             R3, R4,LSL#1
CMP             R3, #0
MOVNE           R3, #0x1000000
CMPNE           R3, R4,LSL#1
BLS             loc_137B48
MOV             R2, #0xFFFFFFE5
VLDR            S0, =1.3422e8
VMUL.F32        S17, S17, S0
VMOV            R4, S17
TST             R4, #0x80000000
BNE             loc_137AC0
B               loc_137D90
SUB             R3, R4, #0x800000
CMP             R3, #0x7F000000
BCC             loc_137D90
B               loc_137BAC
ADD             R3, R3, R0,LSL#1
CMP             R3, #0x2000000
BCC             loc_137B94
VCMP.F32        S1, S19
VMRS            APSR_nzcv, FPSCR
BNE             loc_137B84
MOV             R3, R4,LSL#1
CMP             R3, #0
CMPNE           R1, R4,LSL#1
BLS             loc_137AB0
B               loc_137C88
AND             R0, R0, #0x80000000
ORR             R0, R0, #0x1F800000
VMOV            S1, R0
B               loc_137AB0
CMP             R3, #0x1000000
BCS             loc_137BAC
VMOV            R3, S1
SUB             R3, R3, #0x800000
VMOV            S1, R3
B               loc_137AB0
LDR             R2, =0x3FFFFF
BIC             R3, R4, #0x80000000
SUB             R1, R3, #0x40000001
SUB             R1, R1, #0x3F800000
CMP             R1, R2
BCC             loc_137BFC
BIC             R1, R0, #0x80000000
SUB             R12, R1, #0x40000001
SUB             R12, R12, #0x3F800000
CMP             R2, R12
BHI             loc_137BFC
CMP             R4, #0x3F800000
BEQ             loc_137C88
MOVS            R2, R0,LSL#1
BEQ             loc_137C88
LDR             R2, =0x7F800000
CMP             R3, R2
BHI             loc_137BFC
CMP             R1, R2
BLS             loc_137C08
VADD.F32        S0, S17, S1
VPOP            {D8-D10}
POP             {R4,PC}
CMP             R4, R2
BNE             loc_137C1C
TST             R0, #0x80000000
BNE             loc_137D28
B               loc_137D60
MOV             R1, R0,LSL#1
MOV             R1, R1,LSR#24
CMP             R1, #0x7F
BLT             loc_137C4C
CMP             R1, #0x97
BGE             loc_137C60
MOV             R3, #1
RSB             R1, R1, #0x96
MOV             R1, R3,LSL R1
SUB             R3, R1, #1
TST             R3, R0
BEQ             loc_137C54
MOV             R1, #0
B               loc_137C64
TST             R1, R0
MOVNE           R1, #1
BNE             loc_137C64
MOV             R1, #2
CMN             R4, #0x800000
BEQ             loc_137C94
CMP             R4, #0
BEQ             loc_137CBC
CMP             R4, #0x80000000
BEQ             loc_137CC8
ADD             R1, R4, #0x40000000
ADDS            R1, R1, #0x800000
BNE             loc_137D40
VMOV.F32        S0, S18
VPOP            {D8-D10}
POP             {R4,PC}
TST             R0, #0x80000000
BEQ             loc_137CA8
CMP             R1, #1
BEQ             loc_137D34
B               loc_137D28
CMP             R1, #1
VPOPEQ          {D8-D10}
VLDREQ          S0, =-Inf
POPEQ           {R4,PC}
B               loc_137D60
TST             R0, #0x80000000
BNE             loc_137CF0
B               loc_137D28
CMP             R0, R2
BEQ             loc_137D28
CMN             R0, #0x800000
BEQ             loc_137CF0
TST             R0, #0x80000000
BEQ             loc_137D18
CMP             R1, #0
BEQ             loc_137CF0
CMP             R1, #1
BEQ             loc_137D04
MOV             R0, #2
BLX             sub_100622
VDIV.F32        S0, S18, S19
VPOP            {D8-D10}
POP             {R4,PC}
MOV             R0, #2
BLX             sub_100622
VDIV.F32        S0, S18, S17
VPOP            {D8-D10}
POP             {R4,PC}
CMP             R1, #0
BEQ             loc_137D28
CMP             R1, #1
BEQ             loc_137D34
VMOV.F32        S0, S19
VPOP            {D8-D10}
POP             {R4,PC}
VPOP            {D8-D10}
VLDR            S0, =-0.0
POP             {R4,PC}
MOV             R1, #0x7F000000
MOV             R2, #1
CMP             R1, R4,LSL#1
MOVLS           R1, #1
MOVHI           R1, #0
ADD             R0, R2, R0,ASR#31
CMP             R1, R0
BNE             loc_137D28
VPOP            {D8-D10}
VLDR            S0, =+Inf
POP             {R4,PC}
DCFS 1.0
DCFS 0.0
DCFS -1.0
DCFS 1.3422e8
DCD 0x3FFFFF
DCD 0x7F800000
DCFS -Inf
DCFS -0.0
DCFS +Inf
LDR             R0, =0xC0801000
VLDR            S4, =0.33333
VLDR            S3, =0.5
ADD             R0, R0, R4
CMP             R0, #0x2000
BHI             loc_137E0C
VCVT.F64.F32    D3, S17
VLDR            D4, =1.0
VLDR            S2, =0.25
VSUB.F64        D3, D3, D4
VCVT.F32.F64    S0, D3
VMLS.F32        S4, S0, S2
VMOV.F32        S2, S3
VMUL.F32        S5, S0, S0
VMLS.F32        S2, S0, S4
VNMUL.F32       S5, S5, S2
VLDR            S2, =23.086
VMUL.F32        S4, S0, S2
VLDR            S2, =-0.0028168
VMUL.F32        S2, S0, S2
VLDR            S0, =23.083
VMLA.F32        S2, S5, S0
VADD.F32        S0, S4, S2
VMOV            R0, S0
ADD             R0, R0, #0x800
MOV             R0, R0,LSR#12
MOV             R0, R0,LSL#12
VMOV            S0, R0
VSUB.F32        S4, S4, S0
VADD.F32        S4, S4, S2
B               loc_137F68
ADD             R0, R4, #0x40000
VLDR            S6, =0.0625
MOV             R0, R0,LSR#19
AND             R3, R0, #0xF
VMOV            S2, R3
MOV             R0, R0,LSL#20
MOV             R0, R0,LSR#24
SUB             R12, R0, #0x7F
VCVT.F32.S32    S5, S2
VMOV.F32        S2, S18
SUB             R0, R4, R12,LSL#23
VMOV            S0, R0
ADD             R12, R12, R2
VMLA.F32        S2, S5, S6
VMOV.F32        S7, S2
VADD.F32        S5, S0, S7
VSUB.F32        S6, S0, S7
VMOV            R0, S5
ADD             R0, R0, #0x800
MOV             R2, R0,LSR#12
MOV             R2, R2,LSL#12
VMOV            S2, R2
VSUB.F32        S7, S7, S2
VADD.F32        S8, S7, S0
VDIV.F32        S7, S18, S5
VMUL.F32        S0, S6, S7
VMOV            R0, S0
ADD             R0, R0, #0x800
MOV             R0, R0,LSR#12
MOV             R0, R0,LSL#12
VMOV            S0, R0
VMLS.F32        S6, S0, S2
VMLS.F32        S6, S0, S8
VMUL.F32        S5, S6, S7
VLDR            S6, =0.20008
VADD.F32        S2, S0, S5
VMUL.F32        S2, S2, S2
VMLA.F32        S4, S2, S6
VMUL.F32        S6, S4, S2
VMUL.F32        S4, S0, S18
VMUL.F32        S2, S5, S18
VADD.F32        S0, S0, S5
VLDR            S5, =-0.0056337
VMLA.F32        S2, S6, S0
VADD.F32        S0, S4, S2
VMOV            R0, S0
ADD             R0, R0, #0x800
MOV             R0, R0,LSR#12
MOV             R0, R0,LSL#12
VMOV            S0, R0
VSUB.F32        S4, S4, S0
VADD.F32        S2, S4, S2
VLDR            S4, =46.172
VMUL.F32        S4, S0, S4
VMUL.F32        S0, S0, S5
VLDR            S5, =46.166
VMLA.F32        S0, S2, S5
VADD.F32        S2, S4, S0
VMOV            R0, S2
ADD             R0, R0, #0x800
MOV             R0, R0,LSR#12
MOV             R0, R0,LSL#12
VMOV            S2, R0
LDR             R0, =(unk_69B2C8 - 0x137F1C)
VSUB.F32        S4, S4, S2
VADD.F32        S5, S4, S0
ADD             R0, PC, R0; unk_69B2C8
ADD             R0, R0, R3,LSL#3
VLDR            S7, [R0]
VLDR            S6, [R0,#4]
MOV             R0, R12,LSL#4
VMOV            S0, R0
VCVT.F32.S32    S4, S0
VADD.F32        S0, S5, S6
VADD.F32        S0, S0, S2
VADD.F32        S0, S0, S7
VADD.F32        S0, S0, S4
VMOV            R0, S0
ADD             R0, R0, #0x800
MOV             R0, R0,LSR#12
MOV             R0, R0,LSL#12
VMOV            S0, R0
VSUB.F32        S4, S0, S4
VSUB.F32        S4, S4, S7
VSUB.F32        S2, S4, S2
VSUB.F32        S2, S2, S6
VSUB.F32        S4, S5, S2
VMOV            R0, S1
ADD             R0, R0, #0x800
MOV             R0, R0,LSR#12
MOV             R0, R0,LSL#12
VMOV            S2, R0
VSUB.F32        S6, S1, S2
VMUL.F32        S5, S0, S2
VMUL.F32        S1, S0, S6
VADD.F32        S0, S2, S6
VMLA.F32        S1, S4, S0
VADD.F32        S0, S5, S1
VMOV            R0, S0
ADD             R0, R0, #0x800
MOV             R0, R0,LSR#12
MOV             R0, R0,LSL#12
VMOV            S0, R0
VSUB.F32        S2, S5, S0
VADD.F32        S4, S2, S1
VADD.F32        S1, S0, S4
VCMPE.F32       S1, S19
VMRS            APSR_nzcv, FPSCR
VLDRCC          S3, =-0.5
VADD.F32        S1, S3, S1
VLDR            S3, =0.00093841
VCVT.S32.F32    S1, S1
VMOV            R0, S1
MOV             R2, R0,ASR#4
VMOV            S1, R2
LDR             R2, =(unk_69B388 - 0x138008)
VCVT.F32.S32    S2, S1
VMOV            S1, R0
AND             R0, R0, #0xF
VCVT.F32.S32    S1, S1
VSUB.F32        S0, S0, S1
VLDR            S1, =0.000013551
VADD.F32        S0, S0, S4
VLDR            S4, =0.043322
VMLA.F32        S3, S0, S1
ADD             R2, PC, R2; unk_69B388
ADD             R2, R2, R0,LSL#2
VLDR            S1, [R2]
LDR             R2, =(unk_69B3C8 - 0x13801C)
VMLA.F32        S4, S0, S3
ADD             R2, PC, R2; unk_69B3C8
ADD             R2, R2, R0,LSL#2
VLDR            S5, [R2]
LDR             R2, =(unk_69B348 - 0x13802C)
ADD             R2, PC, R2; unk_69B348
VMUL.F32        S0, S4, S0
VLDR            S4, =126.0
ADD             R0, R2, R0,LSL#2
VLDR            S3, [R0]
VMLA.F32        S1, S5, S0
VABS.F32        S0, S2
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
VADD.F32        S17, S1, S3
BCS             loc_1380E8
VLDR            S0, =127.0
VLDR            S1, =8388600.0
VADD.F32        S0, S2, S0
VMUL.F32        S0, S0, S1
VMOV            R0, S0
BL              sub_140C20
VMUL.F32        S1, S16, S17
VMOV            S0, R0
VPOP            {D8-D10}
VMUL.F32        S0, S0, S1
POP             {R4,PC}
ALIGN 0x10
DCD 0xC0801000
DCFS 0.33333
DCFS 0.5
ALIGN 0x10
DCFD 1.0
DCFS 0.25
DCFS 23.086
DCFS -0.0028168
DCFS 23.083
DCFS 0.0625
DCFS 0.20008
DCFS 46.172
DCFS -0.0056337
DCFS 46.166
DCD unk_69B2C8 - 0x137F1C
DCFS -0.5
DCFS 0.000013551
DCFS 0.00093841
DCFS 0.043322
DCD unk_69B388 - 0x138008
DCD unk_69B3C8 - 0x13801C
DCD unk_69B348 - 0x13802C
DCFS 126.0
DCFS 127.0
DCFS 8388600.0
VLDR            S1, =192.0
VLDR            S18, =1.5846e29
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_138168
VCVT.S32.F32    S0, S2
VMUL.F32        S1, S16, S17
VMOV            R0, S0
ADD             R3, R0, R0,LSR#31
MOV             R2, R3,ASR#1
SUB             R0, R0, R3,ASR#1
MOV             R2, R2,LSL#23
ADD             R2, R2, #0x3F800000
VMOV            S0, R2
MOV             R0, R0,LSL#23
ADD             R0, R0, #0x3F800000
VMUL.F32        S1, S0, S1
VMOV            S0, R0
VMUL.F32        S17, S1, S0
VMOV            R0, S17
CMP             R1, R0,LSL#1
BEQ             loc_1381A0
VMOV            R0, S17
MOVS            R0, R0,LSL#1
BEQ             loc_138174
VMOV            R0, S17
BL              sub_141718
CMP             R0, #4
BLEQ            sub_141744
VMOV.F32        S0, S17
VPOP            {D8-D10}
POP             {R4,PC}
VCMPE.F32       S2, S19
VMRS            APSR_nzcv, FPSCR
BCS             loc_1381A0
MOV             R0, #2
BLX             sub_100622
BL              sub_141744
VMOV            R0, S0
BIC             R1, R0, #0x80000000
VMOV            R0, S16
VPOP            {D8-D10}
AND             R0, R0, #0x80000000
ORR             R0, R0, R1
VMOV            S0, R0
POP             {R4,PC}
MOV             R0, #2
BLX             sub_100622
VMUL.F32        S0, S18, S18
VMOV            R0, S0
BIC             R1, R0, #0x80000000
VMOV            R0, S16
VPOP            {D8-D10}
AND             R0, R0, #0x80000000
ORR             R0, R0, R1
VMOV            S0, R0
POP             {R4,PC}
