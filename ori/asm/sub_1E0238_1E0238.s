PUSH            {R4-R10,LR}
MOV             R6, R1
MOV             R4, R2
LDR             R9, =off_6D1648
VPUSH           {D8-D10}
SUB             SP, SP, #0x10
LDR             R0, [R9]
BL              sub_1E4614
ADD             R0, R0, #0x108
MOV             R7, #0
VLDM            R0, {S16-S18}
MOV             R5, R7
VLDR            S0, =3.4028e38
STR             R7, [R4]
VSTR            S0, [SP,#0x48+var_48]
STR             R7, [R4,#4]
VSTR            S0, [SP,#0x48+var_44]
VLDR            S20, =0.0
STR             R7, [R4,#8]
VSTR            S0, [SP,#0x48+var_40]
MOV             R8, R7
MOV             R10, SP
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R8,LSL#2
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x14C]
CMP             R0, #0
BEQ             loc_1E0410
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R8,LSL#2
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x14C]
LDRB            R0, [R0,#0xB4]
CMP             R0, #7
BNE             loc_1E0410
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R8,LSL#2
ADD             R0, R0, #0x15000
LDR             R2, [R0,#0x14C]
MOV             R0, #0
ADD             R1, R2, R0,LSL#2
LDR             R1, [R1,#0x158]
CMP             R1, #0
BEQ             loc_1E0404
ADD             R1, R0, R0,LSL#1
CMP             R5, #3
ADD             R1, R2, R1,LSL#2
ADD             R3, R1, #0x13C
VLDM            R3, {S0-S2}
VSUB.F32        S0, S0, S16
VSUB.F32        S1, S1, S17
VSUB.F32        S2, S2, S18
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
BCS             loc_1E0394
ADD             R12, R10, R5,LSL#2
ADD             R1, R1, #0x13C
ADD             R3, R5, R5,LSL#1
VSTR            S0, [R12]
ADD             R12, R5, #1
VLDM            R1, {S0-S2}
ADD             R1, R6, R3,LSL#2
VSTM            R1, {S0-S2}
STR             R2, [R4,R5,LSL#2]
UXTH            R5, R12
CMP             R5, #3
BCC             loc_1E0404
VMOV.F32        S19, S20
VLDR            S0, [SP,#0x48+var_48]
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S19, S0
VLDR            S0, [SP,#0x48+var_44]
MOVGT           R7, #0
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S19, S0
VLDR            S0, [SP,#0x48+var_40]
MOVGT           R7, #1
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BLE             loc_1E0404
B               loc_1E0400
ADD             R3, R10, R7,LSL#2
VLDR            S1, [R3]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_1E0404
VSTR            S0, [R3]
ADD             R1, R1, #0x13C
ADD             R3, R7, R7,LSL#1
VLDM            R1, {S0-S2}
ADD             R1, R6, R3,LSL#2
VMOV.F32        S3, S20
VSTM            R1, {S0-S2}
STR             R2, [R4,R7,LSL#2]
VLDR            S0, [SP,#0x48+var_48]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S3, S0
VLDR            S0, [SP,#0x48+var_44]
MOVGT           R7, #0
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S3, S0
VLDR            S0, [SP,#0x48+var_40]
MOVGT           R7, #1
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BLE             loc_1E0404
MOV             R7, #2
ADD             R0, R0, #1
CMP             R0, #2
BLT             loc_1E02E4
ADD             R8, R8, #1
CMP             R8, #0x20 ; ' '
BLT             loc_1E0290
MOV             R2, #2
CMP             R2, #1
MOV             R0, #0xFFFFFFFF
MOV             R1, #1
BLT             loc_1E04A0
ADD             R3, R10, R1,LSL#2
VLDR            S1, [R3,#-4]
VLDR            S0, [R3]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_1E048C
SUB             R0, R1, #1
ADD             R12, R1, R1,LSL#1
ADD             R7, R10, R0,LSL#2
ADD             R12, R6, R12,LSL#2
LDR             R9, [R7]
LDR             R5, [R4,R1,LSL#2]
ADD             R8, R0, R0,LSL#1
VLDM            R12, {S1-S3}
STR             R9, [R3]
ADD             R3, R6, R8,LSL#2
LDR             R8, [R4,R0,LSL#2]
STR             R8, [R4,R1,LSL#2]
VLDM            R3, {S4-S6}
VSTM            R12, {S4-S6}
VSTR            S0, [R7]
STR             R5, [R4,R0,LSL#2]
VSTM            R3, {S1-S3}
ADD             R1, R1, #1
CMP             R2, R1
BGE             loc_1E0430
SUBS            R2, R0, #0
BGE             loc_1E0420
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R10,PC}
