PUSH            {R4-R12,LR}
MOV             R5, R0
LDR             R6, =off_6D1648
VPUSH           {D8-D11}
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_16DE54
LDR             R0, [R5,#0x5E0]
ADD             R10, R5, #0x5E0
TST             R0, #1
BEQ             loc_16DE54
ADD             R11, R5, #0x2400
ADD             R11, R11, #0x28C
ADD             R4, R5, #0x400
LDR             R0, [R11]
LDR             R3, =0x2690
ADD             R4, R4, #0x208
MOVS            R2, R0
LDRNE           R2, [R0,#4]
MOV             R1, #0
ADD             R9, R5, #0x2400
STM             R4, {R1,R2}
ADD             R9, R9, #0x298
STR             R0, [R3,R5]
STR             R1, [R11]
LDRB            R0, [R9]
CMP             R0, #0
CMPNE           R0, #2
LDR             R0, [R6]
BEQ             loc_16D7B4
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0xBF0
LDR             R0, [R0]
SUB             R4, R0, #0x34 ; '4'
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x16800
ADD             R1, R1, #0x3EC
MOV             R0, #0xFFFFFFFF
LDR             R1, [R1]
SUB             R6, R1, #0x34 ; '4'
VLDR            S16, =0.0
VLDR            S18, =-1.0
CMP             R4, R6
BEQ             loc_16DD48
ADD             R1, R0, R0,LSL#2
VLDR            S19, =-0.0
VLDR            S17, =1.0
ADD             R8, R5, #0x2400
ADD             R7, R1, R0,LSL#3
LDR             R0, [R4]
TST             R0, #2
BNE             loc_16DD3C
B               loc_16D7E4
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
LDR             R4, [R0]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x16000
ADD             R1, R1, #0xBF0
MOV             R0, #1
LDR             R6, [R1]
B               loc_16D780
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
TST             R0, #1
BEQ             loc_16DD3C
TST             R0, #0x400
BEQ             loc_16D830
VLDR            S4, [R4,#0x18]
VCMPE.F32       S4, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_16D818
LDRB            R0, [R9]
CMP             R0, #0
BNE             loc_16DD3C
VCMPE.F32       S4, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_16D830
LDRB            R0, [R9]
CMP             R0, #2
BNE             loc_16DD3C
VLDR            S5, [R5,#0x108]
VLDR            S12, [R5,#0x118]
VLDR            S4, [R4,#0x1C]
VLDR            S10, [R5,#0x10C]
VSUB.F32        S5, S5, S12
VLDR            S11, [R5,#0x11C]
VLDR            S6, [R4,#0x18]
VSUB.F32        S10, S10, S11
VMUL.F32        S5, S5, S4
VMLS.F32        S5, S10, S6
VCMP.F32        S5, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_16DD3C
VLDR            S5, [R8,#0x2AC]
VLDR            S10, [R4,#0xC]
VLDR            S12, [R8,#0x2A4]
VLDR            S11, [R4,#8]
VSUB.F32        S5, S5, S10
VSUB.F32        S12, S12, S11
VMUL.F32        S5, S5, S6
VMOV.F32        S13, S5
VMLS.F32        S13, S4, S12
VCMPE.F32       S19, S13
VMRS            APSR_nzcv, FPSCR
BGT             loc_16DD3C
VLDR            S13, [R8,#0x2A8]
VSUB.F32        S11, S13, S11
VMLS.F32        S5, S4, S11
VCMPE.F32       S5, S19
VMRS            APSR_nzcv, FPSCR
BCC             loc_16DD3C
VLDR            S5, [R8,#0x2B0]
VSUB.F32        S5, S5, S10
VMUL.F32        S5, S5, S6
VMOV.F32        S6, S5
VMLS.F32        S6, S4, S12
VCMPE.F32       S6, S19
VMRS            APSR_nzcv, FPSCR
VMLSCS.F32      S5, S4, S11
VCMPECS.F32     S5, S19
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_16DD3C
VMOV.F32        S5, S10
VLDR            S11, [R8,#0x2BC]
VLDR            S13, [R4,#0x18]
VLDR            S10, [R8,#0x2B4]
VLDR            S6, [R4,#8]
VMOV.F32        S12, S4
VSUB.F32        S15, S11, S5
VSUB.F32        S20, S10, S6
VLDR            S4, [R8,#0x2A4]
VMUL.F32        S15, S13, S15
VMOV.F32        S22, S15
VMLS.F32        S15, S12, S20
VCMPE.F32       S15, S19
VMRS            APSR_nzcv, FPSCR
BCC             loc_16D95C
VLDR            S21, [R8,#0x2B8]
VMOV.F32        S15, S22
VSUB.F32        S21, S21, S6
VMLS.F32        S15, S12, S21
VCMPE.F32       S15, S19
VMRS            APSR_nzcv, FPSCR
BCC             loc_16D95C
VLDR            S15, [R8,#0x2C0]
VSUB.F32        S15, S15, S5
VMUL.F32        S13, S13, S15
VMOV.F32        S15, S13
VMLS.F32        S13, S12, S20
VCMPE.F32       S13, S19
VMRS            APSR_nzcv, FPSCR
VMLSCS.F32      S15, S12, S21
VCMPECS.F32     S15, S19
VMRSCS          APSR_nzcv, FPSCR
BCS             loc_16DD3C
LDR             R0, [R4]
TST             R0, #4
BEQ             loc_16D9A0
VLDR            S3, [R8,#0x2B0]
VLDR            S9, [R4,#0x14]
VLDR            S7, [R8,#0x2A8]
VLDR            S1, [R8,#0x2B8]
VLDR            S0, [R4,#0x10]
VLDR            S2, [R8,#0x2C0]
VSUB.F32        S14, S9, S3
VSUB.F32        S8, S0, S4
VSUB.F32        S1, S1, S7
VSUB.F32        S9, S6, S7
VSUB.F32        S0, S10, S4
VSUB.F32        S2, S2, S3
VSUB.F32        S7, S5, S3
B               loc_16D9DC
TST             R0, #0x10
BEQ             loc_16D9E4
VLDR            S2, [R8,#0x2B8]
VLDR            S8, [R8,#0x2A8]
VLDR            S0, [R8,#0x2AC]
VLDR            S7, [R4,#0x14]
VSUB.F32        S3, S2, S8
VLDR            S12, [R4,#0x10]
VSUB.F32        S14, S7, S0
VSUB.F32        S1, S10, S4
VSUB.F32        S9, S6, S4
VSUB.F32        S2, S11, S0
VSUB.F32        S8, S12, S8
VSUB.F32        S7, S5, S0
VMOV.F32        S0, S3
VMOV.F32        S3, S2
B               loc_16DA64
TST             R0, #0x20
BEQ             loc_16DA28
VLDR            S8, [R8,#0x2B0]
VLDR            S2, [R8,#0x2C0]
VLDR            S9, [R4,#0x14]
VLDR            S4, [R8,#0x2A8]
VLDR            S7, [R4,#0x10]
VLDR            S1, [R8,#0x2AC]
VLDR            S0, [R8,#0x2B8]
VSUB.F32        S3, S2, S8
VSUB.F32        S14, S9, S8
VSUB.F32        S8, S7, S4
VSUB.F32        S0, S0, S4
VSUB.F32        S2, S11, S1
VSUB.F32        S9, S6, S4
VSUB.F32        S7, S5, S1
B               loc_16DA60
TST             R0, #8
BEQ             loc_16DA64
VLDR            S1, [R8,#0x2C0]
VLDR            S0, [R4,#0x10]
VLDR            S12, [R8,#0x2AC]
VLDR            S7, [R8,#0x2B0]
VLDR            S13, [R4,#0x14]
VSUB.F32        S8, S0, S4
VSUB.F32        S2, S1, S7
VSUB.F32        S0, S10, S4
VSUB.F32        S9, S6, S4
VSUB.F32        S3, S11, S12
VSUB.F32        S14, S13, S12
VSUB.F32        S7, S5, S7
VMOV.F32        S1, S0
VMUL.F32        S0, S0, S14
VMLS.F32        S0, S8, S3
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLS             loc_16DD3C
VMUL.F32        S0, S1, S7
VMOV.F32        S20, S16
VMLS.F32        S0, S9, S2
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
BGE             loc_16DD3C
STR             R4, [R11]
LDR             R0, [R4,#4]
STR             R0, [R5,#0x608]
LDR             R0, [R4]
TST             R0, #4
BEQ             loc_16DAC0
VLDR            S0, [R4,#0xC]
VLDR            S2, [R8,#0x2C0]
VLDR            S1, [R5,#0x10C]
VSUB.F32        S0, S0, S2
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x10C]
LDR             R0, [R4]
TST             R0, #0x10
BEQ             loc_16DAE0
VLDR            S1, [R4,#0xC]
VLDR            S0, [R5,#0x10C]
VSUB.F32        S1, S1, S11
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#0x10C]
LDR             R0, [R4]
TST             R0, #0x20
BEQ             loc_16DB04
VLDR            S1, [R4,#8]
VLDR            S2, [R8,#0x2B8]
VLDR            S0, [R5,#0x108]
VSUB.F32        S1, S1, S2
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#0x108]
LDR             R0, [R4]
TST             R0, #8
BEQ             loc_16DB24
VLDR            S1, [R4,#8]
VLDR            S0, [R5,#0x108]
VSUB.F32        S1, S1, S10
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#0x108]
NOP
B               loc_16DB44
DCD off_6D1648
DCD 0x2690
DCFS 0.0
DCFS -1.0
DCFS -0.0
DCFS 1.0
LDR             R0, [R4]
TST             R0, #0x28
BEQ             loc_16DB98
TST             R0, #0x14
BNE             loc_16DBDC
VLDR            S0, [R5,#0x108]
ADD             R0, R5, #0x108
BL              sub_5F6640
VMOV.F32        S1, S0
VABS.F32        S0, S0
VMOV            R0, S0
CMP             R0, #0x3F000000
VMOVLT.F32      S0, S20
BLT             loc_16DB8C
VCMPE.F32       S1, S20
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S17
VMOVCS.F32      S0, S18
VLDR            S1, [R5,#0x108]
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#0x108]
LDR             R0, [R4]
TST             R0, #0x14
BEQ             loc_16DBDC
VLDR            S0, [R5,#0x10C]
ADD             R0, R5, #0x10C
BL              sub_5F6640
VABS.F32        S1, S0
VMOV            R0, S1
CMP             R0, #0x3F000000
BLT             loc_16DBD0
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S20, S17
VMOVCS.F32      S20, S18
VLDR            S0, [R5,#0x10C]
VADD.F32        S0, S0, S20
VSTR            S0, [R5,#0x10C]
LDR             R0, [R5]
LDR             R1, [R0,#0x288]
MOV             R0, R5
BLX             R1
LDR             R0, [R4]
TST             R0, #0x20
BEQ             loc_16DC40
LDRB            R0, [R9]
CMP             R0, #0
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x400
BEQ             loc_16DC3C
CMP             R0, #1
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x2000
BEQ             loc_16DC3C
CMP             R0, #2
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x1000
BEQ             loc_16DC3C
CMP             R0, #3
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x4000
BNE             loc_16DC40
STR             R0, [R10]
LDR             R0, [R4]
TST             R0, #8
BEQ             loc_16DC94
LDRB            R0, [R9]
CMP             R0, #0
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x1000
BEQ             loc_16DC90
CMP             R0, #1
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x4000
BEQ             loc_16DC90
CMP             R0, #2
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x400
BEQ             loc_16DC90
CMP             R0, #3
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x2000
BNE             loc_16DC94
STR             R0, [R10]
LDR             R0, [R4]
TST             R0, #4
BEQ             loc_16DCE8
LDRB            R0, [R9]
CMP             R0, #0
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x4000
BEQ             loc_16DCE4
CMP             R0, #1
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x400
BEQ             loc_16DCE4
CMP             R0, #2
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x2000
BEQ             loc_16DCE4
CMP             R0, #3
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x1000
BNE             loc_16DCE8
STR             R0, [R10]
LDR             R0, [R4]
TST             R0, #0x10
BEQ             loc_16DD3C
LDRB            R0, [R9]
CMP             R0, #0
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x2000
BEQ             loc_16DD38
CMP             R0, #1
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x1000
BEQ             loc_16DD38
CMP             R0, #2
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x4000
BEQ             loc_16DD38
CMP             R0, #3
LDREQ           R0, [R5,#0x5E0]
ORREQ           R0, R0, #0x400
BNE             loc_16DD3C
STR             R0, [R10]
ADD             R4, R4, R7,LSL#2
CMP             R4, R6
BNE             loc_16D7A4
LDR             R1, [R5,#0x5E0]
LDR             R0, [R5,#0x4EC]
ADD             R4, R5, #0x400
TST             R1, #0x2000
ADD             R4, R4, #0xEC
AND             R0, R0, #1
BEQ             loc_16DD88
CMP             R0, #0
BEQ             loc_16DDB0
ADD             R0, R5, #0x400
VLDR            S0, [R0,#0xC4]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VNEGGT.F32      S0, S0
VSTRGT          S0, [R0,#0xC4]
B               loc_16DD90
CMP             R0, #0
BEQ             loc_16DDB0
TST             R1, #0x4000
BEQ             loc_16DE54
LDR             R0, [R5]
LDR             R1, [R0,#0x220]
MOV             R0, R5
VPOP            {D8-D11}
POP             {R4-R12,LR}
BX              R1
MOV             R0, R5
BL              sub_16B5B4
MOV             R6, R0
MOV             R0, R5
BL              sub_16B3CC
ORRS            R0, R0, R6
NOP
BNE             loc_16DE54
LDR             R0, [R5,#0x5E0]
TST             R0, #0x4000
BNE             loc_16DE54
LDRB            R0, [R9]
CMP             R0, #0
LDREQ           R0, [R5,#0x658]
MOVEQ           R0, R0,LSL#26
BEQ             loc_16DE5C
CMP             R0, #1
LDREQ           R0, [R5,#0x658]
MOVEQ           R0, R0,LSL#28
BEQ             loc_16DE5C
CMP             R0, #2
LDREQ           R0, [R5,#0x658]
MOVEQ           R0, R0,LSL#27
BEQ             loc_16DE5C
CMP             R0, #3
LDREQ           R0, [R5,#0x658]
MOVEQ           R0, R0,LSL#30
BEQ             loc_16DE5C
LDR             R0, [R5,#0x4EC]
TST             R0, #0x10
BEQ             loc_16DE54
VMOV.F32        S1, S18
LDR             R0, [R5]
VMOV.F32        S0, S16
LDR             R1, [R0,#0x214]
VMOV.F32        S2, S1
MOV             R0, R5
BLX             R1
LDR             R0, [R5,#0x4EC]
ORR             R0, R0, #8
STR             R0, [R4]
VPOP            {D8-D11}
POP             {R4-R12,PC}
MOVS            R0, R0,LSR#31
BEQ             loc_16DE20
VPOP            {D8-D11}
POP             {R4-R12,PC}
