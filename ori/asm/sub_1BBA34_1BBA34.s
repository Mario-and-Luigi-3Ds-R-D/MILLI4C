PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R3, =0x4C8
MOV             R5, #0x14
VPUSH           {D8-D11}
SUB             SP, SP, #0x3C
MOV             R2, #1
LDR             R1, [R0,#8]
VLDR            S17, =60.0
VLDR            S16, =0.0
MOV             R0, #0
LDRSH           R12, [R1]
LDRH            R3, [R3,R1]
CMP             R12, #0x14
BEQ             loc_1BBBD0
BGT             loc_1BBA98
CMP             R12, #0
BEQ             loc_1BBB54
CMP             R12, #1
BEQ             loc_1BBC44
CMP             R12, #0x11
BEQ             loc_1BBB80
CMP             R12, #0x12
BNE             loc_1BBAB0
B               loc_1BBBA8
CMP             R12, #0x16
BEQ             loc_1BBBF4
CMP             R12, #0x18
BEQ             loc_1BBC1C
CMP             R12, #0x1B
BEQ             loc_1BBC44
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xC8]
CMP             R1, R3
BEQ             loc_1BBEAC
STRH            R3, [R0,#0xCA]
LDR             R0, [R4,#8]
LDR             R1, [R4]
ADD             R2, SP, #0x68+var_4C
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0xC8]
LDR             R3, [R1,#0x54]
AND             R1, R0, #0xFF
MOV             R0, R4
BLX             R3
LDR             R0, [R4,#8]
LDR             R1, [R4]
MOV             R2, SP
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0xCA]
LDR             R3, [R1,#0x54]
AND             R1, R0, #0xFF
MOV             R0, R4
BLX             R3
LDR             R0, [R4,#8]
VLDR            S0, =30.0
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xC8]
CMP             R1, #0x16
BEQ             loc_1BBCF4
BGT             loc_1BBC7C
CMP             R1, #0x11
VLDR            S1, =20.0
BEQ             loc_1BBCA8
BGE             loc_1BBC68
CMP             R1, #0
VMOVEQ.F32      S16, S17
BEQ             loc_1BBCF8
CMP             R1, #1
BEQ             loc_1BBC88
B               loc_1BBCF8
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
MOV             R12, #0
MOV             R2, #0x3C ; '<'
STRH            R12, [R1]
STRH            R2, [R1,#2]
STRB            R0, [R1,#4]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               loc_1BBAB0
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R0, [R1]
STRH            R2, [R1,#2]
STRB            R0, [R1,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x11
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               loc_1BBAB0
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R0, [R1]
STRH            R2, [R1,#2]
STRB            R0, [R1,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x12
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               loc_1BBAB0
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R0, [R1]
STRH            R2, [R1,#2]
STRB            R0, [R1,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R5, [R0,#0xC8]
B               loc_1BBAB0
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R0, [R1]
STRH            R2, [R1,#2]
STRB            R0, [R1,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x16
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               loc_1BBAB0
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R0, [R1]
STRH            R2, [R1,#2]
STRB            R0, [R1,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x18
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               loc_1BBAB0
ADD             R1, R1, #0x400
ADD             R1, R1, #0xCC
STRH            R0, [R1]
STRH            R2, [R1,#2]
STRB            R0, [R1,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R2, [R0,#0xC8]
B               loc_1BBAB0
CMP             R1, #0x12
BEQ             loc_1BBCC0
CMP             R1, #0x14
VLDREQ          S16, =10.0
B               loc_1BBCF8
CMP             R1, #0x18
BNE             loc_1BBCF8
B               loc_1BBCD8
LDRH            R0, [R0,#0xCA]
CMP             R0, #0
BEQ             loc_1BBCF4
CMP             R0, #0x12
CMPNE           R0, #0x14
VMOVNE.F32      S16, S1
BEQ             loc_1BBCF4
B               loc_1BBCF8
LDRH            R0, [R0,#0xCA]
CMP             R0, #0
BEQ             loc_1BBCF4
CMP             R0, #1
BNE             loc_1BBCF8
B               loc_1BBCF4
LDRH            R0, [R0,#0xCA]
CMP             R0, #0x11
BEQ             loc_1BBCF4
CMP             R0, #0x13
BNE             loc_1BBCF8
B               loc_1BBCF4
LDRH            R0, [R0,#0xCA]
VLDR            S0, =15.0
CMP             R0, #0
BEQ             loc_1BBCF4
CMP             R0, #1
CMPNE           R0, #0xFE
BNE             loc_1BBCF8
VMOV.F32        S16, S0
LDRB            R0, [SP,#0x68+var_34]
LDR             R5, =off_6D1648
VLDR            S0, =1.0
CMP             R0, #1
BEQ             loc_1BBD44
CMP             R0, #2
BEQ             loc_1BBD84
CMP             R0, #3
BEQ             loc_1BBDC4
B               loc_1BBE04
DCFS 60.0
DCFS 0.0
DCD 0x4C8
DCFS 30.0
DCFS 20.0
DCFS 10.0
DCFS 15.0
DCFS 1.0
DCD off_6D1648
VLDR            S1, [SP,#0x68+var_4C]
VLDR            S2, [SP,#0x68+var_68]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1BBE00
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
VLDR            S0, [SP,#0x68+var_4C]
VLDR            S2, [SP,#0x68+var_68]
VLDR            S1, [R0,#4]
VSUB.F32        S2, S0, S2
VSUB.F32        S1, S0, S1
VDIV.F32        S0, S1, S2
B               loc_1BBE00
VLDR            S1, [SP,#0x68+var_40]
VLDR            S2, [SP,#0x68+var_5C]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1BBE00
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0xB20
VLDR            S0, [SP,#0x68+var_40]
VLDR            S2, [SP,#0x68+var_5C]
VLDR            S1, [R0,#4]
VSUB.F32        S2, S0, S2
VSUB.F32        S1, S0, S1
VDIV.F32        S0, S1, S2
B               loc_1BBE00
VLDR            S1, [SP,#0x68+var_44]
VLDR            S2, [SP,#0x68+var_60]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1BBE00
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2EC
VLDR            S0, [SP,#0x68+var_44]
VLDR            S2, [SP,#0x68+var_60]
VLDR            S1, [R0,#4]
VSUB.F32        S2, S0, S2
VSUB.F32        S1, S0, S1
VDIV.F32        S0, S1, S2
VMUL.F32        S16, S0, S16
LDR             R0, [R4,#4]
VLDR            S22, [SP,#0x68+var_4C]
ADD             R0, R0, #0x19C00
LDRB            R0, [R0,#0x44]
CMP             R0, #0
ADD             R0, SP, #0x68+var_48
VLDM            R0, {S17-S21}
BEQ             loc_1BBE60
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A186C
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S16
VMOV.F32        S0, S22
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S16
VMOV.F32        S0, S17
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1EC
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xBC]
VMOV.F32        S4, S21
VMOV.F32        S3, S20
VMOV.F32        S2, S19
VMOV.F32        S1, S18
VMOV.F32        S0, S16
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A137C
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D11}
POP             {R4,R5,PC}
