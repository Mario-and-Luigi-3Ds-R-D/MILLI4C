PUSH            {R4-R10,LR}
MOV             R4, R0
LDR             R7, =off_6D1648
VPUSH           {D8-D12}
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
LDR             R1, =0x11F4
LDR             R1, [R1,R4]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14000
LDR             R6, [R0,#0x184]
LDR             R0, [R7]
LDR             R5, [R6,#0xAA8]
BL              sub_1E45C8
LDR             R0, [R0,#0x890]
VLDR            S17, =-1.0
TST             R0, #1
BNE             loc_1BDBC0
MOV             R2, #0
LDR             R0, =0xCA03
MOV             R1, R2
BL              sub_116B34
VLDR            S16, =0.0
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1BDBF4
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x4EC]
TST             R1, #1
BEQ             loc_1BDF1C
LDR             R1, [R0]
VLDR            S0, [R5,#0x44]
VMOV.F32        S1, S17
LDR             R1, [R1,#0x214]
VNEG.F32        S0, S0
VPOP            {D8-D12}
VMOV.F32        S2, S1
POP             {R4-R10,LR}
BX              R1
LDR             R0, =0x11F8
VLDR            S19, =50.0
VLDR            S21, =179.0
VLDR            S20, =2.0
LDRB            R0, [R0,R4]
VLDR            S24, =-1.75
VLDR            S23, =-0.54
CMP             R0, #0
LDR             R0, [R4,#4]
VLDR            S22, =1.0
ADD             R7, R4, #0x1000
MOV             R9, #0x12
LDR             R1, [R0,#0x4EC]
MOV             R8, #0xFFFFFFFF
ADD             R7, R7, #0x184
AND             R1, R1, #1
BEQ             loc_1BE0EC
CMP             R1, #0
BNE             loc_1BDC58
VMOV.F32        S1, S16
LDR             R1, [R0]
VLDR            S0, [R5,#0x44]
LDR             R1, [R1,#0x214]
VMOV.F32        S2, S1
BLX             R1
LDR             R0, [R4,#4]
LDRH            R1, [R5,#0x52]
ADD             R2, R0, #0x108
CMP             R1, #0
VLDM            R2, {S0-S1}
VSUB.F32        S18, S0, S19
VADD.F32        S19, S0, S19
VADD.F32        S5, S1, S21
BEQ             loc_1BDD30
CMP             R1, #2
VMOVNE.F32      S0, S16
VLDR            S2, [R6,#0x108]
VLDREQ          S0, [R5,#0x3C]
CMP             R1, #1
VMOV.F32        S6, S2
VMOVNE.F32      S7, S16
VSUB.F32        S20, S2, S0
VLDREQ          S7, [R5,#0x3C]
VLDR            S0, [R6,#0x10C]
VLDR            S2, =0.5
VLDR            S4, [R5,#0x40]
VADD.F32        S21, S6, S7
VMOV.F32        S3, S0
VCMPE.F32       S20, S19
VMRS            APSR_nzcv, FPSCR
VMLA.F32        S0, S4, S2
VMLS.F32        S3, S4, S2
VCMPELT.F32     S18, S21
VMRSLT          APSR_nzcv, FPSCR
VCMPELT.F32     S3, S5
VMRSLT          APSR_nzcv, FPSCR
BGE             loc_1BDCE4
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BDFB8
ADD             R0, R0, #0x4F00
MOV             R1, #0x11
STRH            R1, [R0,#0x16]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x4F00
STRH            R1, [R0,#0x14]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
LDR             R0, [R4,#4]
LDR             R1, =0x7188
ADD             R0, R0, #0x7000
STR             R8, [R0,#0x184]
LDR             R0, [R4,#4]
LDRB            R1, [R1,R0]
CMP             R1, #0
BNE             loc_1BDF3C
B               loc_1BDF24
VLDR            S4, [R6,#0x108]
VLDR            S2, =0.5
VLDR            S6, [R5,#0x40]
VMOV.F32        S0, S4
VLDR            S7, [R5,#0x3C]
VMLS.F32        S4, S6, S2
VLDR            S3, [R6,#0x10C]
VMLA.F32        S0, S6, S2
VADD.F32        S6, S3, S7
VCMPE.F32       S4, S19
VMRS            APSR_nzcv, FPSCR
VCMPELT.F32     S18, S0
VMRSLT          APSR_nzcv, FPSCR
VCMPELT.F32     S3, S5
VMRSLT          APSR_nzcv, FPSCR
BGE             loc_1BDD7C
VCMPE.F32       S6, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BDE48
VCMPE.F32       S5, S3
VMRS            APSR_nzcv, FPSCR
BCC             loc_1BE330
ADD             R0, R0, #0x4F00
MOV             R1, #0x11
STRH            R1, [R0,#0x16]
LDR             R0, [R4,#4]
MOV             R2, #0
ADD             R0, R0, #0x4F00
STRH            R1, [R0,#0x14]
MOV             R0, #0x14
STRH            R2, [R7]
STRH            R0, [R7,#2]
STRB            R2, [R7,#4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x7000
STR             R8, [R0,#0x184]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
LDR             R0, [R4,#4]
VLDR            S3, [R5,#0x58]
ADD             R1, R0, #0x400
VLDR            S0, [R1,#0xC4]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BDE1C
VLDR            S0, [R5,#0x5C]
VMUL.F32        S4, S3, S3
LDR             R1, [R0]
VMLS.F32        S0, S3, S2
VMOV.F32        S2, S24
LDR             R1, [R1,#0x214]
VMUL.F32        S0, S0, S20
VPOP            {D8-D12}
POP             {R4-R10,LR}
VDIV.F32        S1, S4, S0
VMOV.F32        S0, S3
BX              R1
VLDR            S1, [R5,#0x5C]
VMUL.F32        S3, S0, S0
LDR             R1, [R0]
VMLS.F32        S1, S0, S2
LDR             R1, [R1,#0x214]
VMUL.F32        S2, S1, S20
VDIV.F32        S1, S3, S2
VMOV.F32        S2, S24
VPOP            {D8-D12}
POP             {R4-R10,LR}
BX              R1
VSUB.F32        S0, S6, S1
VLDR            S2, [R5,#0x48]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BDEA8
ADD             R0, R0, #0x400
VLDR            S1, [R5,#0x44]
VLDR            S0, [R0,#0xC4]
VADD.F32        S0, S0, S1
B               loc_1BDEBC
DCD off_6D1648
DCD 0x11F4
DCFS -1.0
DCD 0xCA03
DCFS 0.0
DCD 0x11F8
DCFS 50.0
DCFS 179.0
DCFS 2.0
DCFS -1.75
DCFS -0.54
DCFS 1.0
DCFS 0.5
DCD 0x7188
VDIV.F32        S1, S0, S2
ADD             R0, R0, #0x400
VLDR            S2, [R5,#0x44]
VLDR            S0, [R0,#0xC4]
VMLA.F32        S0, S1, S2
VSTR            S0, [R0,#0xC4]
LDR             R0, [R4,#4]
VLDR            S0, [R5,#0x60]
ADD             R0, R0, #0x400
VLDR            S1, [R0,#0xC4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VSTRCC          S0, [R0,#0xC4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xC4]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VSTRGT          S16, [R0,#0xC8]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0x68]
CMP             R0, #0x16
BNE             loc_1BDF1C
VMOV.F32        S0, S22
ADD             R0, R5, #8
BL              sub_5A176C
LDR             R0, [R4,#4]
VSTR            S0, [R0,#0x108]
VPOP            {D8-D12}
POP             {R4-R10,PC}
VMOV.F32        S0, S16
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
VMOV.F32        S2, S0
VMOV.F32        S1, S0
BLX             R1
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R1, #0x14
ADD             R0, R0, #0x7000
ADD             R0, R0, #0x114
VLDR            S1, =0.54
STRH            R3, [R0]
STRH            R1, [R0,#2]
STRB            R3, [R0,#4]
LDR             R0, [R4,#4]
VLDR            S2, [R5,#0x5C]
VLDR            S0, =2.4
VLDR            S3, [R0,#0x10C]
ADD             R0, R0, #0x7000
VADD.F32        S2, S3, S2
VSTR            S2, [R0,#0x11C]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S23, [R0,#0x94]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S23, [R0,#0x30]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S1, [R0,#0x84]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x7C]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S0, [R0,#0x34]
LDR             R0, [R4,#4]
LDR             R1, =0x7188
LDRB            R1, [R1,R0]
CMP             R1, #0
BNE             loc_1BDFE0
ADD             R0, R0, #0x400
VSTR            S16, [R0,#0xC8]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S16, [R0,#0xC4]
LDRH            R1, [R5,#0x52]
LDR             R0, [R4,#4]
LDR             R3, =0x40490FDB
CMP             R1, #1
VSUBEQ.F32      S1, S21, S18
VSUBNE.F32      S1, S19, S20
ADD             R0, R0, #0x400
VLDR            S3, [R5,#0x48]
LDR             R2, [R0,#0x74]
VLDR            S0, [R0,#0x78]
CMP             R2, R3
VMOVLT.F32      S2, S22
VMOVGE.F32      S2, S17
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S0, S0, S2
BLE             loc_1BE038
CMP             R1, #1
VMOVEQ.F32      S17, S22
VLDR            S1, [R5,#0x44]
VMLA.F32        S0, S1, S17
B               loc_1BE050
CMP             R1, #1
VDIV.F32        S4, S1, S3
VMOVEQ.F32      S17, S22
VLDR            S3, [R5,#0x44]
VMUL.F32        S1, S4, S17
VMLA.F32        S0, S3, S1
LDR             R1, =0x468
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S0, S16
VLDRCC          S1, =4.7124
VLDRCS          S1, =1.5708
VMRS            APSR_nzcv, FPSCR
VSTR            S1, [R0,#0x74]
LDR             R0, [R4,#4]
VNEGLT.F32      S0, S0
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x78]
LDR             R0, [R4,#4]
LDRH            R1, [R1,R0]
CMP             R1, #0x16
BNE             loc_1BE0C4
VLDR            S1, [R0,#0x108]
VMLA.F32        S1, S0, S2
VSTR            S1, [R0,#0x108]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x7100
LDRB            R0, [R0,#0x88]
CMP             R0, #0
BNE             loc_1BE0C4
VMOV.F32        S0, S22
ADD             R0, R5, #8
BL              sub_5A176C
LDR             R0, [R4,#4]
VSTR            S0, [R0,#0x10C]
LDR             R0, [R4,#4]
VLDR            S0, [R5,#0x4C]
ADD             R0, R0, #0x400
VLDR            S1, [R0,#0x78]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BDF1C
VSTR            S0, [R0,#0x78]
VPOP            {D8-D12}
POP             {R4-R10,PC}
CMP             R1, #0
BNE             loc_1BE10C
VMOV.F32        S1, S16
LDR             R1, [R0]
VLDR            S0, [R5,#0x44]
LDR             R1, [R1,#0x214]
VMOV.F32        S2, S1
BLX             R1
LDR             R0, [R4,#4]
LDRH            R1, [R5,#0x52]
VLDR            S0, [R0,#0x108]
VLDR            S2, [R0,#0x10C]
CMP             R1, #0
VSUB.F32        S18, S0, S19
VADD.F32        S19, S0, S19
VADD.F32        S5, S2, S21
BEQ             loc_1BE2D8
CMP             R1, #2
VMOVNE.F32      S0, S16
VLDR            S1, [R6,#0x108]
VLDREQ          S0, [R5,#0x3C]
CMP             R1, #1
VMOV.F32        S6, S1
VMOVNE.F32      S7, S16
VSUB.F32        S20, S1, S0
VLDREQ          S7, [R5,#0x3C]
VLDR            S3, [R6,#0x10C]
VLDR            S1, =0.5
VLDR            S4, [R5,#0x40]
VADD.F32        S21, S6, S7
VMOV.F32        S0, S3
VCMPE.F32       S20, S19
VMRS            APSR_nzcv, FPSCR
VMLA.F32        S3, S4, S1
VMLS.F32        S0, S4, S1
VCMPELT.F32     S18, S21
VMRSLT          APSR_nzcv, FPSCR
VCMPELT.F32     S0, S5
VMRSLT          APSR_nzcv, FPSCR
BGE             loc_1BE198
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BE264
ADD             R0, R0, #0x4F00
MOV             R1, #0x11
STRH            R1, [R0,#0x16]
LDR             R0, [R4,#4]
VMOV.F32        S0, S16
ADD             R0, R0, #0x4F00
STRH            R1, [R0,#0x14]
LDR             R0, [R4,#4]
VMOV.F32        S2, S0
VMOV.F32        S1, S0
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x7000
STR             R8, [R0,#0x184]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
BLX             R1
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R1, #0x14
ADD             R0, R0, #0x7000
ADD             R0, R0, #0x114
VLDR            S1, =100.0
STRH            R3, [R0]
STRH            R1, [R0,#2]
STRB            R3, [R0,#4]
LDR             R0, [R4,#4]
VLDR            S2, =0.54
VLDR            S0, =2.4
VLDR            S3, [R0,#0x10C]
ADD             R0, R0, #0x7000
VADD.F32        S1, S3, S1
VSTR            S1, [R0,#0x11C]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S23, [R0,#0x94]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S23, [R0,#0x30]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S2, [R0,#0x84]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x7C]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
VSTR            S0, [R0,#0x34]
LDRH            R1, [R5,#0x52]
LDR             R0, [R4,#4]
LDR             R3, =0x40490FDB
CMP             R1, #1
VSUBEQ.F32      S1, S21, S18
VSUBNE.F32      S1, S19, S20
ADD             R0, R0, #0x400
VLDR            S3, [R5,#0x48]
LDR             R2, [R0,#0x74]
VLDR            S0, [R0,#0x78]
CMP             R2, R3
VMOVLT.F32      S2, S22
VMOVGE.F32      S2, S17
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S0, S0, S2
BLE             loc_1BE488
CMP             R1, #1
VMOVEQ.F32      S17, S22
VLDR            S1, [R5,#0x44]
VMLA.F32        S0, S1, S17
B               loc_1BE4A0
DCFS 0.54
DCFS 2.4
DCD 0x40490FDB
DCFS 4.7124
DCFS 1.5708
DCD 0x468
DCFS 100.0
VLDR            S4, [R6,#0x108]
VLDR            S1, =0.5
VLDR            S6, [R5,#0x40]
VMOV.F32        S0, S4
VLDR            S7, [R5,#0x3C]
VMLS.F32        S4, S6, S1
VLDR            S3, [R6,#0x10C]
VMLA.F32        S0, S6, S1
VADD.F32        S6, S3, S7
VCMPE.F32       S4, S19
VMRS            APSR_nzcv, FPSCR
VCMPELT.F32     S18, S0
VMRSLT          APSR_nzcv, FPSCR
VCMPELT.F32     S3, S5
VMRSLT          APSR_nzcv, FPSCR
BGE             loc_1BE324
VCMPE.F32       S6, S2
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BE3FC
VCMPE.F32       S5, S3
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BE34C
ADD             R0, R0, #0x4F00
STRH            R9, [R0,#0x16]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x4F00
STRH            R9, [R0,#0x14]
VPOP            {D8-D12}
POP             {R4-R10,PC}
ADD             R0, R0, #0x4F00
MOV             R1, #0x11
STRH            R1, [R0,#0x16]
LDR             R0, [R4,#4]
MOV             R2, #0
ADD             R0, R0, #0x4F00
STRH            R1, [R0,#0x14]
MOV             R1, #0x14
STRH            R2, [R7]
STRH            R1, [R7,#2]
STRB            R2, [R7,#4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x7000
STR             R8, [R0,#0x184]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
LDR             R0, [R4,#4]
VLDR            S3, [R5,#0x58]
ADD             R1, R0, #0x400
VLDR            S0, [R1,#0xC4]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BE3D0
LDR             R1, [R0]
VMOV.F32        S2, S24
VMOV.F32        S0, S3
VLDR            S1, =0.8
LDR             R1, [R1,#0x214]
VPOP            {D8-D12}
POP             {R4-R10,LR}
BX              R1
VLDR            S2, [R5,#0x54]
VMUL.F32        S3, S0, S0
LDR             R1, [R0]
VMLS.F32        S2, S0, S1
LDR             R1, [R1,#0x214]
VMUL.F32        S2, S2, S20
VDIV.F32        S1, S3, S2
VMOV.F32        S2, S24
VPOP            {D8-D12}
POP             {R4-R10,LR}
BX              R1
VSUB.F32        S0, S6, S2
VLDR            S1, [R5,#0x48]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BE424
ADD             R0, R0, #0x400
VLDR            S1, [R5,#0x44]
VLDR            S0, [R0,#0xC4]
VADD.F32        S0, S0, S1
B               loc_1BE438
VDIV.F32        S2, S0, S1
ADD             R0, R0, #0x400
VLDR            S1, [R5,#0x44]
VLDR            S0, [R0,#0xC4]
VMLA.F32        S0, S2, S1
VSTR            S0, [R0,#0xC4]
LDR             R0, [R4,#4]
VLDR            S0, [R5,#0x4C]
ADD             R0, R0, #0x400
VLDR            S1, [R0,#0xC4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VSTRCC          S0, [R0,#0xC4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xC4]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VSTRGT          S16, [R0,#0xC8]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0x68]
CMP             R0, #0x16
BNE             loc_1BDF1C
B               loc_1BDF08
CMP             R1, #1
VDIV.F32        S4, S1, S3
VMOVEQ.F32      S17, S22
VLDR            S3, [R5,#0x44]
VMUL.F32        S1, S4, S17
VMLA.F32        S0, S3, S1
LDR             R1, =0x468
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S0, S16
VLDRCC          S1, =4.7124
VLDRCS          S1, =1.5708
VMRS            APSR_nzcv, FPSCR
VSTR            S1, [R0,#0x74]
LDR             R0, [R4,#4]
VNEGLT.F32      S0, S0
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x78]
LDR             R0, [R4,#4]
LDRH            R1, [R1,R0]
CMP             R1, #0x16
BNE             loc_1BE514
VLDR            S1, [R0,#0x108]
VMLA.F32        S1, S0, S2
VSTR            S1, [R0,#0x108]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x7100
LDRB            R0, [R0,#0x88]
CMP             R0, #0
BNE             loc_1BE514
VMOV.F32        S0, S22
ADD             R0, R5, #8
BL              sub_5A176C
LDR             R0, [R4,#4]
VSTR            S0, [R0,#0x10C]
LDR             R0, [R4,#4]
VLDR            S0, [R5,#0x4C]
ADD             R0, R0, #0x400
VLDR            S1, [R0,#0x78]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_1BE0E0
VPOP            {D8-D12}
POP             {R4-R10,PC}
