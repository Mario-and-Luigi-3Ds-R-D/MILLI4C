PUSH            {R0,R1,R4-R12,LR}
LDR             R0, =off_6D1648
VPUSH           {D8-D12}
SUB             SP, SP, #0x26C0
ADD             R11, SP, #8
LDR             R0, [R0]
VLDR            S16, =0.0
VLDR            S22, =1.0
LDR             R0, [R0,#0xC4]
VMOV.F32        S18, S16
VMOV.F32        S20, S16
LDR             R0, [R0,#4]
VNEG.F32        S24, S18
LDRD            R8, R9, [R0,#4]
VNEG.F32        S25, S20
MOV             R1, R9
LDR             R0, [R8,#0x464]
AND             R0, R0, #0xF
CMP             R0, #4
VLDREQ          S17, =-32.0
VLDRNE          S17, =32.0
VMOVEQ.F32      S21, S22
VLDRNE          S21, =-1.0
VNEG.F32        S23, S17
MOV             R0, R11
BL              sub_58130C
LDR             R1, =off_6B38AC
MOV             R5, R0
ADD             R6, R0, #0x400
STR             R1, [R0,#0x758]
LDR             R0, [R9,#0x75C]
ADD             R6, R6, #0x358
ADD             R4, R9, #0x400
STR             R0, [R6,#4]
LDR             R0, [R9,#0x760]
ADD             R1, R9, #0x400
ADD             R4, R4, #0x358
STR             R0, [R6,#8]
MOV             R2, #0x4C ; 'L'
ADD             R1, R1, #0x364
ADD             R0, R6, #0xC
BL              sub_127EB8
MOV             R2, #0x4C ; 'L'
ADD             R1, R4, #0x58 ; 'X'
ADD             R0, R6, #0x58 ; 'X'
BL              sub_127EB8
LDR             R0, =off_6B0504
ADD             R7, R6, #0xB8
ADD             R10, R9, #0x800
STR             R0, [R6]
LDR             R0, [R4,#0xA4]
ADD             R10, R10, #0x6C ; 'l'
STR             R0, [R6,#0xA4]
LDR             R0, [R4,#0xA8]
STR             R0, [R6,#0xA8]
LDR             R0, [R4,#0xAC]
STR             R0, [R6,#0xAC]
LDRH            R0, [R4,#0xB0]
STRH            R0, [R6,#0xB0]
LDRH            R0, [R4,#0xB2]
STRH            R0, [R6,#0xB2]
LDRH            R0, [R4,#0xB4]
STRH            R0, [R6,#0xB4]
LDRH            R0, [R4,#0xB6]
STRH            R0, [R6,#0xB6]
LDR             R0, =off_6B57BC
STR             R0, [R6]
ADD             R0, R4, #0xB8
LDM             R0, {R0-R3,R12}
STM             R7, {R0-R3,R12}
LDRB            R0, [R4,#0xCC]
LDR             R3, =off_6B8580
STRB            R0, [R6,#0xCC]
LDRB            R0, [R4,#0xCD]
ADD             R1, R3, #0x410
ADD             R2, R3, #0x3F8
STRB            R0, [R6,#0xCD]
STR             R1, [R5,#0x758]
STR             R2, [R5,#0xE0]
STR             R3, [R5]
LDR             R1, [R9,#0x828]
MOV             R0, R5
MOV             R6, R5
STR             R1, [R0,#0x828]
LDR             R1, [R9,#0x82C]
ADD             R5, R9, #0x800
ADD             R7, R0, #0x800
STR             R1, [R0,#0x82C]
LDR             R1, [R9,#0x830]
ADD             R4, R0, #0x800
ADD             R4, R4, #0x3C ; '<'
STR             R1, [R0,#0x830]
LDR             R1, [R9,#0x834]
STR             R1, [R0,#0x834]
LDR             R1, [R9,#0x838]
STR             R1, [R0,#0x838]
LDR             R1, [R9,#0x83C]
STR             R1, [R0,#0x83C]
LDR             R1, [R9,#0x840]
STR             R1, [R0,#0x840]
LDR             R1, [R5,#0x44]
STR             R1, [R7,#0x44]
LDR             R1, [R5,#0x48]
STR             R1, [R7,#0x48]
ADD             R1, R5, #0x3C ; '<'
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
ADD             R4, R0, #0x800
ADD             R4, R4, #0x4C ; 'L'
LDR             R1, [R5,#0x4C]
STR             R1, [R7,#0x4C]
LDR             R1, [R5,#0x50]
STR             R1, [R7,#0x50]
LDR             R1, [R5,#0x54]
STR             R1, [R7,#0x54]
LDR             R1, [R5,#0x58]
STR             R1, [R7,#0x58]
ADD             R1, R5, #0x4C ; 'L'
LDM             R1, {R1-R3,R12}
STM             R4, {R1-R3,R12}
LDR             R1, [R5,#0x5C]
ADD             R0, R0, #0x800
ADD             R0, R0, #0x5C ; '\'
STR             R1, [R7,#0x5C]
LDR             R1, [R5,#0x60]
STR             R1, [R7,#0x60]
LDR             R1, [R5,#0x64]
STR             R1, [R7,#0x64]
LDR             R1, [R5,#0x68]
STR             R1, [R7,#0x68]
ADD             R1, R5, #0x5C ; '\'
LDM             R1, {R1-R3,R12}
STM             R0, {R1-R3}
MOV             R2, #0x48 ; 'H'
STR             R12, [R6,#0x868]
LDR             R1, [R9,#0x86C]
LDR             R0, [R6,#0x86C]
AND             R1, R1, #0xF
BIC             R0, R0, #0xF
ORR             R1, R1, R0
STR             R1, [R6,#0x86C]
LDR             R0, [R10]
BIC             R1, R1, #0x10
AND             R0, R0, #0x10
ORR             R1, R1, R0
STR             R1, [R6,#0x86C]
LDR             R0, [R10]
BIC             R1, R1, #0x20 ; ' '
AND             R0, R0, #0x20 ; ' '
ORR             R1, R1, R0
STR             R1, [R6,#0x86C]
LDR             R0, [R10]
BIC             R1, R1, #0x40 ; '@'
AND             R0, R0, #0x40 ; '@'
ORR             R1, R1, R0
STR             R1, [R6,#0x86C]
ADD             R1, R9, #0x870
ADD             R0, R6, #0x870
BL              sub_127EB8
LDRH            R0, [R5,#0xB8]
STRH            R0, [R7,#0xB8]
LDRB            R1, [R5,#0xBA]
ADD             R0, R6, #0x8C0
STRB            R1, [R6,#0x8BA]
LDRB            R1, [R5,#0xBB]
STRB            R1, [R6,#0x8BB]
LDRB            R1, [R5,#0xBC]
STRB            R1, [R6,#0x8BC]
LDRB            R1, [R5,#0xBD]
STRB            R1, [R6,#0x8BD]
ADD             R1, R9, #0x8C0
BL              sub_1169CC
LDR             R1, [R9,#0x8F0]
LDR             R2, =sub_53E5C4
ADD             R0, R6, #0x800
STR             R1, [R6,#0x8F0]
ADD             R1, R9, #0x800
STR             R2, [SP,#0x26E8+var_26E8]
LDR             R2, =0x758
MOV             R3, #4
ADD             R1, R1, #0xF8
ADD             R0, R0, #0xF8
BLX             sub_1036B4
ADD             R2, R9, #0x2400
SUB             R0, R0, #0x800
LDR             R12, [R2,#0x258]
SUB             R0, R0, #0xF8
ADD             R3, R0, #0x2400
ADD             R5, R9, #0x2600
STR             R12, [R3,#0x258]
LDR             R12, [R2,#0x25C]
LDR             R6, =0x2668
ADD             R4, R9, #0x2400
STR             R12, [R3,#0x25C]
LDR             R12, [R2,#0x260]
ADD             R4, R4, #0x26C
ORR             R1, R6, R6,ASR#7
STR             R12, [R3,#0x260]
LDR             R12, [R2,#0x264]
ADD             R10, R0, #0x2600
STR             R12, [R3,#0x264]
LDRB            R7, [R5,#0x68]
STRB            R7, [R6,R0]
LDR             R12, [R4]
LDR             R7, =off_6AF640
STR             R12, [R1,R0]
ADD             R4, R7, #0x400
ADD             R1, R4, #0x18
STR             R1, [R0,#0x758]
STR             R4, [R0,#0xE0]
STR             R7, [R0]
LDR             R1, [R5,#0x70]
ADD             R4, R6, #0xE
LDR             R6, =off_6ADA60
MOV             R12, R0
STR             R1, [R10,#0x70]
LDR             R7, =off_6AD654
ADD             R1, R6, #0x18
STR             R1, [R12,#0x758]
STR             R6, [R12,#0xE0]
STR             R7, [R12]
LDRH            R1, [R5,#0x74]
ADD             R0, R0, R4
STRH            R1, [R10,#0x74]
LDRB            R1, [R4,R9]
STRB            R1, [R0]
LDR             R0, [R2,#0x278]
STR             R0, [R3,#0x278]
LDR             R0, [R2,#0x27C]
STR             R0, [R3,#0x27C]
LDRB            R1, [SP,#0x26E8+var_2602]
LDR             R0, [SP,#0x26E8+var_227C]
BIC             R1, R1, #4
BIC             R0, R0, #0x10000
ORR             R1, R1, #1
B               loc_19C120
DCFS 1.0
DCFS 0.0
DCD off_6D1648
DCFS -32.0
DCFS 32.0
DCFS -1.0
DCD off_6B38AC
DCD off_6B0504
DCD off_6B57BC
DCD off_6B8580
DCD sub_53E5C4
DCD 0x758
DCD 0x2668
DCD off_6AF640
DCD off_6AD654
DCD off_6ADA60
STR             R0, [SP,#0x26E8+var_227C]
STRB            R1, [SP,#0x26E8+var_2602]
LDR             R0, [SP,#0x26E8+var_2100]
LDR             R1, [R8,#0x5E0]
VMOV.F32        S0, S17
BIC             R0, R0, #7
AND             R1, R1, #7
ORR             R0, R0, R1
STR             R0, [SP,#0x26E8+var_2100]
LDRB            R0, [R8,#0x648]
LDR             R4, =off_6D1648
STRB            R0, [SP,#0x26E8+var_2098]
ADD             R0, R8, #0x108
VLDM            R0, {S1-S3}
MOV             R0, #0
VADD.F32        S19, S1, S0
VADD.F32        S18, S2, S18
VADD.F32        S20, S3, S20
VMOV.F32        S1, S16
VSTR            S19, [SP,#0x26E8+var_25D8]
VSTR            S18, [SP,#0x26E8+var_25D4]
VSTR            S20, [SP,#0x26E8+var_25D0]
LDR             R1, [R8,#0x608]
VADD.F32        S2, S20, S1
VADD.F32        S1, S19, S21
STR             R1, [SP,#0x26E8+var_20D8]
LDR             R1, [R8,#0x610]
STR             R0, [SP,#0x26E8+var_1FA0]
STR             R0, [SP,#0x26E8+var_1F9C]
ADD             R0, SP, #0x26E8+var_20E8
STR             R1, [SP,#0x26E8+var_20D0]
LDRH            R0, [R0,#0x64]
VADD.F32        S0, S18, S22
ORR             R1, R0, #0x2000
ADD             R0, SP, #0x26E8+var_20E8
STRH            R1, [R0,#0x64]
LDR             R0, [SP,#0x26E8+var_2100]
ORR             R0, R0, #0x40 ; '@'
STR             R0, [SP,#0x26E8+var_2100]
VSTR            S1, [SP,#0x26E8+var_25C8]
VSTR            S0, [SP,#0x26E8+var_25C4]
ADD             R0, SP, #0x26E8+var_1EE8
VSTR            S2, [SP,#0x26E8+var_25C0]
VLDR            S0, =2.0
VLDR            S1, [R0,#0x64]
VADD.F32        S1, S1, S0
VSTR            S1, [R0,#0x64]
VLDR            S1, [R0,#0x68]
VSUB.F32        S0, S1, S0
VSTR            S0, [R0,#0x68]
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x174]
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
MOV             R2, R5
LDR             R1, [R0,#0x170]
MOV             R4, R11
MOV             R0, R11
BL              sub_15F160
VLDR            S0, [SP,#0x26E8+var_25D8]
VCMP.F32        S19, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [SP,#0x26E8+var_25D4]
VCMPEQ.F32      S18, S1
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_19C2B8
LDR             R0, [SP,#0x26E8+var_1FA0]
CMP             R0, #0
BEQ             loc_19C2C0
ADD             R1, R0, #0x400
VLDR            S1, [R0,#0x10C]
VLDR            S2, [R1,#0x234]
VLDR            S3, [R8,#0x10C]
VADD.F32        S1, S1, S2
VSUB.F32        S1, S1, S3
VABS.F32        S1, S1
VMOV            R0, S1
CMP             R0, #0x3F800000
BGE             loc_19C2B8
ADD             R2, SP, #0x26E8+var_22E8
LDR             R0, [SP,#0x26E8+var_1FA0]
VLDR            S6, [R2,#0x22C]
VLDR            S5, [R2,#0x230]
VLDR            S1, [R1,#0x228]
VADD.F32        S6, S0, S6
VADD.F32        S5, S0, S5
VLDR            S2, =1.5
VLDR            S3, [R0,#0x108]
VLDR            S4, [R1,#0x224]
VADD.F32        S1, S3, S1
VADD.F32        S3, S3, S4
VADD.F32        S0, S6, S2
VSUB.F32        S2, S5, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_19C2B8
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_19C33C
VMOV.F32        S17, S16
B               loc_19C370
LDR             R0, [SP,#0x26E8+var_20D0]
CMP             R0, #0
BEQ             loc_19C370
VADD.F32        S2, S20, S25
VADD.F32        S0, S19, S23
VADD.F32        S1, S18, S24
ADD             R1, SP, #0x26E8+var_25C8
MOV             R0, R4
VSTM            R1, {S0-S2}
BL              sub_580AA0
MOV             R0, R4
NOP
BL              sub_15F1C8
LDR             R0, [R8,#0x4EC]
TST             R0, #1
BNE             loc_19C370
LDR             R0, [SP,#0x26E8+var_20D8]
CMP             R0, #0
BEQ             loc_19C2B8
VLDR            S1, [R8,#0x10C]
VLDR            S0, [SP,#0x26E8+var_25D4]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_19C2B8
VMOV.F32        S0, S16
ADD             R0, SP, #0x26E8+var_22E8
VLDR            S1, [R0,#0xC0]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_19C370
B               loc_19C2B8
LDR             R0, [SP,#0x26E8+var_20D0]
CMP             R0, #0
BEQ             loc_19C370
VADD.F32        S2, S20, S25
VADD.F32        S0, S19, S23
VADD.F32        S1, S18, S24
ADD             R1, SP, #0x26E8+var_25C8
MOV             R0, R4
VSTM            R1, {S0-S2}
BL              sub_580AA0
MOV             R0, R4
NOP
BL              sub_15F1C8
VLDR            S0, [SP,#0x26E8+var_25D8]
LDRB            R0, [SP,#0x26E8+var_2602]
VCMP.F32        S19, S0
BIC             R0, R0, #1
ORR             R0, R0, #4
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [SP,#0x26E8+var_25D4]
VCMPEQ.F32      S18, S0
VMRSEQ          APSR_nzcv, FPSCR
VLDREQ          S0, [SP,#0x26E8+var_25D0]
STRB            R0, [SP,#0x26E8+var_2602]
ADD             R0, SP, #0x26E8+var_6E8
VCMPEQ.F32      S20, S0
LDR             R1, [R0,#0x6EC]
MOV             R0, R4
VMRSEQ          APSR_nzcv, FPSCR
VMOV.F32        S0, S16
VMOVNE.F32      S17, S16
VSTR            S17, [R1]
VSTR            S0, [R1,#4]
VSTR            S16, [R1,#8]
BL              sub_540C2C
ADD             SP, SP, #0x26C0
VPOP            {D8-D12}
ADD             SP, SP, #8
POP             {R4-R12,PC}
