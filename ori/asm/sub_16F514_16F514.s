PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x2700
ADD             R0, R0, #0x6F ; 'o'
VPUSH           {D8}
ADD             R5, R4, #0x400
LDRB            R0, [R0]
VLDR            S0, =1.0
VLDR            S16, =0.0
VLDR            S17, =0.5
CMP             R0, #0
BEQ             loc_16F598
ADD             R0, R4, #0x2600
ADD             R1, R4, #0x2600
LDRSB           R2, [R0,#0x99]
ADD             R1, R1, #0x99
CMP             R2, #0
SUBGT           R2, R2, #1
STRBGT          R2, [R1]
VLDR            S1, [R4,#0x124]
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
MOVNE           R2, #1
STRBNE          R2, [R1]
LDR             R1, [R4,#0x4EC]
TST             R1, #1
BEQ             loc_16F6A4
LDR             R0, [R4]
LDR             R1, [R0,#0x224]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,LR}
BX              R1
ADD             R6, R4, #0x2400
ADD             R6, R6, #0x298
LDRB            R0, [R6]
TST             R0, #0xC
BEQ             loc_16F5D4
LDR             R0, [R4,#0x4EC]
TST             R0, #1
BNE             loc_16F5D4
LDR             R0, [R4]
VLDR            S1, =-1.0
LDR             R1, [R0,#0x214]
VMOV.F32        S2, S1
MOV             R0, R4
BLX             R1
VSTR            S16, [R5,#0xC8]
MOV             R0, R4
BL              sub_53EB54
LDRB            R0, [R6]
TST             R0, #3
BEQ             loc_16F634
TST             R0, #1
MOVNE           R0, #1
MOVEQ           R0, #0xFFFFFFFF
VMOV            S1, R0
VLDR            S0, [R4,#0x124]
VCMP.F32        S0, S16
VCVT.F32.S32    S1, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_16F65C
LDR             R1, [R4,#0x4EC]
ADD             R0, R4, #0x800
TST             R1, #1
BEQ             loc_16F63C
VLDR            S2, [R0,#0x28]
VLDR            S3, =0.75
VLDR            S0, [R4,#0x108]
VMUL.F32        S1, S1, S3
VMLA.F32        S0, S2, S1
VSTR            S0, [R4,#0x108]
VPOP            {D8}
POP             {R4-R6,PC}
VLDR            S3, =0.25
VLDR            S2, [R0,#0x28]
VLDR            S0, [R4,#0x108]
VMUL.F32        S1, S1, S3
VMLA.F32        S0, S2, S1
VSTR            S0, [R4,#0x108]
VPOP            {D8}
POP             {R4-R6,PC}
VMUL.F32        S1, S0, S1
LDR             R0, [R4,#0x4EC]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_16F68C
VMOV.F32        S2, S0
VLDR            S1, =1.5
VLDR            S3, [R4,#0x108]
AND             R0, R0, #1
VNMLS.F32       S2, S0, S1
VADD.F32        S0, S2, S3
B               loc_16F650
VMOV.F32        S1, S0
VLDR            S2, [R4,#0x108]
AND             R0, R0, #1
VNMLS.F32       S1, S0, S17
VADD.F32        S0, S1, S2
B               loc_16F650
VLDR            S0, [R4,#0x108]
VLDR            S2, [R4,#0x128]
VADD.F32        S0, S0, S2
VSTR            S0, [R4,#0x108]
VLDR            S0, [R4,#0x10C]
VMLA.F32        S0, S1, S17
VSTR            S0, [R4,#0x10C]
VLDR            S1, [R4,#0x110]
VLDR            S2, [R4,#0x12C]
VADD.F32        S1, S1, S2
VSTR            S1, [R4,#0x110]
LDRB            R1, [R0,#0x9A]
CMP             R1, #0
BNE             loc_16F634
LDRSB           R0, [R0,#0x99]
CMP             R0, #0
BGT             loc_16F634
VLDR            S1, [R5,#0x7C]
VLDR            S2, =0.125
VMLS.F32        S0, S1, S2
VSTR            S0, [R4,#0x10C]
VPOP            {D8}
POP             {R4-R6,PC}
