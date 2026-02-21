PUSH            {R4,R5,LR}
SUB             SP, SP, #0x34
VLDR            S2, [R0,#0x18]
VLDR            S5, [R0,#0xBC]
VLDR            S1, [R0,#0x1C]
VLDR            S4, [R0,#0xC0]
VADD.F32        S2, S2, S5
VLDR            S0, [R0,#0x20]
VLDR            S3, [R0,#0xC4]
VADD.F32        S1, S1, S4
MOV             R4, R0
VADD.F32        S0, S0, S3
MOV             R0, #0
MOV             R1, #0x3F800000
STR             R0, [SP,#0x40+var_3C]
STR             R1, [SP,#0x40+var_40]
STR             R0, [SP,#0x40+var_38]
VSTR            S2, [SP,#0x40+var_34]
STRD            R0, R1, [SP,#0x40+var_30]
STR             R0, [SP,#0x40+var_28]
VSTR            S1, [SP,#0x40+var_24]
STR             R0, [SP,#0x40+var_20]
STRD            R0, R1, [SP,#0x40+var_1C]
VSTR            S0, [SP,#0x40+var_14]
LDR             R0, [R4,#0x218]
CMP             R0, #0
BEQ             loc_199E7C
LDR             R0, [R0,#0xA4]
MOV             R1, SP
ADD             R5, R0, #0x4C ; 'L'
MOV             R0, R5
BL              sub_1169CC
LDR             R0, [R5,#0x3C]
ORR             R0, R0, #0x800
STR             R0, [R5,#0x3C]
LDR             R0, [R4,#0x21C]
CMP             R0, #0
BEQ             loc_199EA8
LDR             R0, [R0,#0xA4]
MOV             R1, SP
ADD             R5, R0, #0x4C ; 'L'
MOV             R0, R5
BL              sub_1169CC
LDR             R0, [R5,#0x3C]
ORR             R0, R0, #0x800
STR             R0, [R5,#0x3C]
LDR             R0, [R4,#0x258]
CMP             R0, #0
BEQ             loc_199ED0
VLDMEA          SP, {S0-S7}
ADD             R1, R0, #0x7C ; '|'
ADD             R5, SP, #0x40+var_20
ADD             R0, R0, #0x9C
VSTM            R1, {S0-S7}
LDM             R5, {R1-R3,R12}
STM             R0, {R1-R3,R12}
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x24 ; '$'
VLDR            S1, =3.4028e38
VLDM            R0, {S3-S4}
MOV             R0, #0
STR             R0, [R4,#0x3B8]
LDRB            R3, [R4,#0x3B4]
CMP             R3, #0
BLE             loc_199F58
ADD             R1, R4, R0,LSL#2
LDR             R1, [R1,#0x374]
LDR             R2, [R1,#4]
ADD             R12, R2, #0x400
LDRH            R5, [R12,#0xB6]
AND             R5, R5, #2
MOVS            R5, R5,LSR#1
BNE             loc_199F4C
VLDR            S0, [R2,#0x108]
VLDR            S2, [R2,#0x10C]
VLDR            S5, [R12,#0x234]
VSUB.F32        S0, S3, S0
VADD.F32        S2, S2, S5
VMUL.F32        S0, S0, S0
VSUB.F32        S2, S4, S2
VMLA.F32        S0, S2, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S1, S0
STRCC           R1, [R4,#0x3B8]
ADD             R0, R0, #1
CMP             R3, R0
BGT             loc_199EFC
ADD             SP, SP, #0x34 ; '4'
POP             {R4,R5,PC}
