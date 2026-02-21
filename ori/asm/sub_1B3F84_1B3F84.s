PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R1, =0x174AC
VPUSH           {D8-D10}
SUB             SP, SP, #8
LDR             R2, [R0,#4]
LDRB            R1, [R1,R2]
LDR             R0, [R2,#0x60C]
CMP             R1, #0
BEQ             loc_1B42F4
LDR             R1, [R4,#8]
LDRSH           R1, [R1]
CMP             R1, #0
CMPNE           R1, #2
BEQ             loc_1B3FD0
CMP             R1, #3
CMPNE           R1, #1
CMPNE           R1, #4
BNE             loc_1B42F4
LDR             R1, [R2,#0x4EC]
LDR             R8, =0x41200000
VLDR            S19, =0.5
VLDR            S20, =10.0
MOV             R6, #0
TST             R1, #1
MOV             R7, R6
BNE             loc_1B42C4
CMP             R0, #0
BEQ             loc_1B42C4
LDR             R1, [R0]
TST             R1, #0x3C
BNE             loc_1B42C4
LDR             R1, =0x65F
LDRSB           R1, [R1,R2]
CMN             R1, #1
BNE             loc_1B42C4
VLDR            S2, [R0,#0x14]
VLDR            S0, [R0,#0x34]
MOV             R5, #0
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R0,#0xC]
VLDR            S3, [R0,#0x2C]
VSUB.F32        S0, S2, S0
MOVCC           R5, #1
VSUB.F32        S1, S1, S3
BL              sub_4643FC
NOP
NOP
BL              sub_4642E0
VLDR            S16, =0.0
LDR             R0, =off_6D1648
VCMPE.F32       S0, S16
LDR             R0, [R0]
VMRS            APSR_nzcv, FPSCR
VLDR            S1, =0.55
VNEGLT.F32      S0, S0
VMUL.F32        S18, S0, S1
VMOV.F32        S17, S0
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
MOV             R1, SP
BLX             R2
VLDR            S2, [SP,#0x38+var_38]
VCMP.F32        S2, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [SP,#0x38+var_34]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_1B40C8
VMUL.F32        S0, S2, S2
VLDR            S1, [SP,#0x38+var_34]
VLDR            S3, =1.0
VMLA.F32        S0, S1, S1
VSQRT.F32       S4, S0
VDIV.F32        S0, S3, S4
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S1, S0
VSTR            S2, [SP,#0x38+var_38]
VSTR            S0, [SP,#0x38+var_34]
VMOV.F32        S0, S2
VLDR            S3, =31.95
VLDR            S2, =3.1416
VLDR            S1, =1.5708
LDR             R0, =0x40490FDB
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1B4174
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B40FC
CMP             R5, #0
BNE             loc_1B4160
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_1B4110
CMP             R5, #0
BEQ             loc_1B4160
LDR             R1, [R4,#4]
LDR             R2, =0x40C00000
ADD             R1, R1, #0x400
VLDR            S0, [R1,#0x78]
VMOV            R3, S0
CMP             R3, R2
BLE             loc_1B41F0
VLDR            S3, =0.4
VMLS.F32        S0, S17, S3
VSTR            S0, [R1,#0x78]
VMOV            R1, S0
LDR             R3, [R4,#4]
CMP             R1, R2
ADD             R1, R3, #0x400
VLDRLT          S0, =6.0
VSTRLT          S0, [R1,#0x78]
LDR             R1, [R4,#4]
LDR             R2, [R1,#0x478]
STR             R2, [R1,#0x48C]
B               loc_1B41F0
LDR             R1, [R4,#4]
MOV             R7, #1
ADD             R1, R1, #0x400
VSTR            S3, [R1,#0x8C]
B               loc_1B41F0
LDR             R1, [R4,#4]
ADD             R1, R1, #0x400
VSTR            S19, [R1,#0x84]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x400
VLDR            S0, [R1,#0x78]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_1B41C0
CMP             R5, #0
VMOVNE.F32      S0, S2
VMOVEQ.F32      S0, S16
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#0x74]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x400
VLDR            S0, [R1,#0x94]
VSUB.F32        S0, S18, S0
B               loc_1B41EC
LDR             R2, [R1,#0x74]
CMP             R2, R0
BLE             loc_1B41D4
CMP             R5, #0
BNE             loc_1B4204
CMP             R2, R0
BGE             loc_1B41E4
CMP             R5, #0
BEQ             loc_1B4204
VSUB.F32        S0, S0, S18
MOV             R6, #1
VSTR            S0, [R1,#0x78]
LDR             R1, [R4,#8]
LDRH            R1, [R1,#2]
CMP             R1, #3
BEQ             loc_1B4224
B               loc_1B42BC
VLDR            S4, [R1,#0x94]
VSUB.F32        S4, S18, S4
VADD.F32        S0, S0, S4
VSTR            S0, [R1,#0x78]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x400
VSTR            S3, [R1,#0x8C]
B               loc_1B41F0
LDR             R1, [R4,#4]
ADD             R1, R1, #0x400
VLDR            S0, [R1,#0xC4]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
CMP             R5, #0
VMOVEQ.F32      S2, S16
VMUL.F32        S3, S17, S0
VLDR            S0, [R1,#0x78]
VADD.F32        S2, S2, S1
VMLA.F32        S0, S3, S2
VSTR            S0, [R1,#0x78]
VCMPE.F32       S0, S16
LDR             R1, [R4,#4]
ADD             R1, R1, #0x400
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B42A8
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VSTR            S0, [R1,#0x78]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x400
LDR             R2, [R1,#0x74]
CMP             R2, R0
VSTRGT          S1, [R1,#0x74]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x400
LDR             R2, [R1,#0x74]
CMP             R2, R0
VLDRLT          S0, =4.7124
VSTRLT          S0, [R1,#0x74]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
LDR             R1, [R0,#0x78]
CMP             R1, R8
VSTRGT          S20, [R0,#0x78]
CMP             R6, #0
BEQ             loc_1B42DC
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
LDR             R1, [R0,#0x78]
CMP             R1, R8
STRGE           R1, [R0,#0x8C]
VSTRLT          S20, [R0,#0x8C]
LDR             R0, [R4,#4]
CMP             R7, #0
VLDRNE          S0, =0.75
ADD             R0, R0, #0x400
VSTRNE          S0, [R0,#0x84]
VSTREQ          S19, [R0,#0x84]
ADD             SP, SP, #8
VPOP            {D8-D10}
POP             {R4-R8,PC}
