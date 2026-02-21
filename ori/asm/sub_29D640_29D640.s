PUSH            {R4-R6,LR}
MOV             R4, R0
LDRH            R0, [R0,#0xC8]
SUB             SP, SP, #0x58
VLDR            S3, =1.5
ADD             R0, R0, #1
UXTH            R0, R0
STRH            R0, [R4,#0xC8]
LDRH            R1, [R4,#0xCA]
VMOV            S0, R0
VMOV            S1, R1
VCVT.F32.U32    S0, S0
VCVT.F32.U32    S1, S1
VDIV.F32        S2, S0, S1
VLDR            S0, =3.1416
VADD.F32        S1, S2, S3
VMUL.F32        S0, S1, S0
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S2, =1.0
VLDR            S4, =0.5
VLDR            S1, [R4,#0xCC]
VADD.F32        S0, S0, S2
VLDR            S3, [R4,#0xD8]
VMUL.F32        S0, S0, S4
VMLA.F32        S1, S3, S0
VSTR            S1, [SP,#0x68+var_60]
VLDR            S1, [R4,#0xD0]
VLDR            S3, [R4,#0xDC]
VMLA.F32        S1, S3, S0
VSTR            S1, [SP,#0x68+var_5C]
VLDR            S1, [R4,#0xD4]
VLDR            S3, [R4,#0xE0]
VMLA.F32        S1, S3, S0
VSTR            S1, [SP,#0x68+var_58]
LDR             R0, [R4,#0xAC]
ADD             R1, R0, #4
VLDR            S1, [R0]
VLDM            R1, {S3-S9}
ADD             R1, SP, #0x68+var_4C
VSTR            S1, [SP,#0x68+var_50]
VSTM            R1, {S3-S9}
ADD             R1, R0, #0x20 ; ' '
LDR             R0, [R0,#0x2C]
LDM             R1, {R1-R3}
STR             R0, [SP,#0x68+var_24]
ADD             R0, SP, #0x68+var_30
STM             R0, {R1-R3}
ADD             R3, SP, #0x68+var_1C
VLDR            S3, [R4,#0xF8]
ADD             R2, SP, #0x68+var_50
ADD             R1, SP, #0x68+var_20
VSUB.F32        S1, S5, S3
MOV             R0, R2
VSTR            S1, [SP,#0x68+var_44]
VLDR            S3, [R4,#0xFC]
VSUB.F32        S1, S9, S3
VSTR            S1, [SP,#0x68+var_34]
VLDR            S1, [R4,#0x108]
VLDR            S3, [R4,#0x10C]
VMLA.F32        S1, S0, S3
VSTR            S1, [SP,#0x68+var_20]
VSTM            R3, {S1-S2}
BL              sub_1420D0
VLDR            S0, [SP,#0x68+var_44]
VLDR            S1, [SP,#0x68+var_60]
ADD             R1, SP, #0x68+var_50
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_44]
VLDR            S0, [SP,#0x68+var_34]
VLDR            S1, [SP,#0x68+var_5C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_34]
VLDR            S0, [SP,#0x68+var_24]
VLDR            S1, [SP,#0x68+var_58]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_24]
LDR             R0, [R4,#0xA4]
BL              sub_593188
LDR             R0, [R4,#0xB8]
CMP             R0, #0
ADDNE           R1, SP, #0x68+var_50
BLNE            sub_532BB8
MOV             R0, R4
BL              sub_29DBF0
LDRB            R0, [R4,#0xC2]
VLDR            S0, =255.0
MOV             R1, #0xFF
CMP             R0, #3
BEQ             loc_29D7C0
CMP             R0, #1
BEQ             loc_29D7D0
CMP             R0, #2
BEQ             loc_29D860
B               loc_29D8F4
LDRH            R0, [R4,#0xC8]
LDRB            R2, [R4,#0xC3]
CMP             R0, R2
BCS             loc_29D860
LDRH            R0, [R4,#0xC8]
LDRB            R2, [R4,#0xC3]
CMP             R0, R2
BCS             loc_29D8F4
LDRH            R2, [R4,#0xC8]
LDRB            R3, [R4,#0xC3]
MOV             R0, #0xFFFFFFFF
VMOV            S1, R2
VMOV            S2, R3
MOV             R2, R1,LSL#16
REV             R0, R0
AND             R3, R2, #0xFF0000
BIC             R0, R0, #0xFF0000
VCVT.F32.U32    S3, S1
VCVT.F32.U32    S1, S2
MOV             R2, R1,LSL#8
ORR             R0, R0, R3
AND             R2, R2, #0xFF00
BIC             R0, R0, #0xFF00
ORR             R0, R0, R2
BIC             R0, R0, #0xFF
ORR             R1, R1, R0
BIC             R1, R1, #0xFF000000
VMUL.F32        S0, S3, S0
MOV             R2, SP
VDIV.F32        S2, S0, S1
VCVT.U32.F32    S0, S2
VMOV            R0, S0
ORR             R0, R1, R0,LSL#24
STR             R0, [SP,#0x68+var_68]
LDR             R0, [R4,#0xA4]
MOV             R1, #0
BL              sub_12C9C4
NOP
NOP
B               loc_29D8F4
LDRH            R0, [R4,#0xCA]
LDRH            R2, [R4,#0xC8]
LDRB            R3, [R4,#0xC3]
SUB             R0, R0, R2
CMP             R0, R3
BGE             loc_29D8F4
MOV             R0, #0xFFFFFFFF
LDRH            R3, [R4,#0xCA]
REV             R0, R0
UXTH            R12, R2
BIC             R5, R0, #0xFF0000
SUB             R0, R3, R12
VMOV            S1, R0
LDRB            R2, [R4,#0xC3]
MOV             R6, R1,LSL#16
AND             R3, R6, #0xFF0000
VMOV            S2, R2
MOV             R2, R1,LSL#8
VCVT.F32.S32    S3, S1
ORR             R0, R5, R3
AND             R2, R2, #0xFF00
BIC             R0, R0, #0xFF00
VCVT.F32.U32    S1, S2
ORR             R0, R0, R2
BIC             R0, R0, #0xFF
ORR             R1, R1, R0
BIC             R1, R1, #0xFF000000
MOV             R2, SP
VMUL.F32        S0, S3, S0
VDIV.F32        S2, S0, S1
VCVT.U32.F32    S0, S2
VMOV            R0, S0
ORR             R0, R1, R0,LSL#24
STR             R0, [SP,#0x68+var_68]
LDR             R0, [R4,#0xA4]
MOV             R1, #0
BL              sub_12C9C4
LDRH            R0, [R4,#0xCA]
LDRH            R1, [R4,#0xC8]
CMP             R0, R1
BHI             loc_29D990
LDRB            R0, [R4,#0xBE]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_29D920
CMP             R0, #1
BNE             loc_29D97C
B               loc_29D968
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R4
BLX             R2
LDR             R1, =unk_68A5A4
STRB            R5, [R4,#0xBC]
ADD             R2, R4, #0x114
LDRD            R0, R1, [R1,#(dword_68A5B8 - 0x68A5A4)]
STM             R2, {R0,R1}
B               loc_29D97C
DCFS 1.5
DCFS 3.1416
DCFS 40.744
DCFS 1.0
DCFS 0.5
DCFS 255.0
DCD unk_68A5A4
LDRH            R3, [R4,#0xC6]
LDRH            R2, [R4,#0xC4]
ADD             R1, SP, #0x68+var_60
MOV             R0, R4
BL              sub_29ED2C
LDR             R0, [R4,#0xB8]
CMP             R0, #0
BEQ             loc_29D990
BL              sub_533330
STR             R5, [R4,#0xB8]
ADD             SP, SP, #0x58 ; 'X'
POP             {R4-R6,PC}
