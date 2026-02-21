PUSH            {R4-R9,LR}
MOV             R4, R1
LDR             R8, =off_6D1648
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R0, [R8]
BL              sub_1E4614
ADD             R0, R0, #0x108
MOV             R7, #0
VLDM            R0, {S16-S18}
MOV             R6, R7
VLDR            S0, =3.4028e38
STR             R7, [R4]
VSTR            S0, [SP,#0x38+var_38]
STR             R7, [R4,#4]
VSTR            S0, [SP,#0x38+var_34]
VLDR            S19, =0.0
STR             R7, [R4,#8]
VSTR            S0, [SP,#0x38+var_30]
MOV             R5, R7
MOV             R9, SP
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x14C]
CMP             R0, #0
BEQ             loc_29B100
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x14C]
LDRB            R0, [R0,#0xB4]
CMP             R0, #1
BNE             loc_29B100
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x15000
CMP             R6, #3
LDR             R0, [R0,#0x14C]
VLDR            S0, [R0,#0x18]
VLDR            S2, [R0,#0x1C]
VLDR            S1, [R0,#0x20]
VSUB.F32        S0, S0, S16
VSUB.F32        S2, S2, S17
VSUB.F32        S1, S1, S18
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
BCS             loc_29B0A8
ADD             R2, R9, R6,LSL#2
ADD             R1, R6, #1
VSTR            S0, [R2]
STR             R0, [R4,R6,LSL#2]
UXTH            R6, R1
CMP             R6, #3
BCC             loc_29B100
VMOV.F32        S0, S19
VLDR            S1, [SP,#0x38+var_38]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VLDR            S1, [SP,#0x38+var_34]
MOVGT           R7, #0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VLDR            S1, [SP,#0x38+var_30]
MOVGT           R7, #1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_29B100
MOV             R7, #2
B               loc_29B100
ADD             R1, R9, R7,LSL#2
VLDR            S1, [R1]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_29B100
VSTR            S0, [R1]
VMOV.F32        S0, S19
STR             R0, [R4,R7,LSL#2]
VLDR            S1, [SP,#0x38+var_38]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VLDR            S1, [SP,#0x38+var_34]
MOVGT           R7, #0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VLDR            S1, [SP,#0x38+var_30]
MOVGT           R7, #1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_29B0A0
ADD             R5, R5, #1
CMP             R5, #0x20 ; ' '
BLT             loc_29AFCC
MOV             R2, #2
CMP             R2, #1
MOV             R0, #0xFFFFFFFF
MOV             R1, #1
BLT             loc_29B170
ADD             R3, R9, R1,LSL#2
VLDR            S1, [R3,#-4]
VLDR            S0, [R3]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_29B15C
SUB             R0, R1, #1
LDR             R5, [R4,R1,LSL#2]
ADD             R12, R9, R0,LSL#2
LDR             R6, [R12]
STR             R6, [R3]
LDR             R3, [R4,R0,LSL#2]
STR             R3, [R4,R1,LSL#2]
VSTR            S0, [R12]
STR             R5, [R4,R0,LSL#2]
ADD             R1, R1, #1
CMP             R2, R1
BGE             loc_29B120
SUBS            R2, R0, #0
BGE             loc_29B110
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R9,PC}
