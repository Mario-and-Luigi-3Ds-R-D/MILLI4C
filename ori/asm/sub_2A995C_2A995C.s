PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8}
LDR             R0, [R0,#0x4C]
BIC             R0, R0, #4
TST             R0, #1
STR             R0, [R4,#0x4C]
BEQ             loc_2A99E4
MOV             R0, R4
BL              sub_2A9B98
LDR             R0, [R4,#0x4C]
TST             R0, #2
BEQ             loc_2A99E4
LDR             R0, [R4,#0x44]
VLDR            S0, =33.0
ADD             R0, R0, #1
VMOV            S1, R0
STR             R0, [R4,#0x44]
VCVT.F32.S32    S1, S1
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_2A99C8
LDRB            R0, [R5,#8]
TST             R0, #1
MOVNE           R0, R4
BLNE            sub_2A986C
LDRH            R0, [R4,#0x40]
CMP             R0, #0
BNE             loc_2A99E4
LDR             R0, [R4,#0x4C]
TST             R0, #0x10
MOVEQ           R0, R4
BLEQ            sub_2CF4BC
LDR             R0, [R4,#0x4C]
TST             R0, #0x1A
MOVEQ           R0, R4
BLEQ            sub_2CF4BC
LDR             R0, [R4,#0x4C]
TST             R0, #8
BEQ             loc_2A9B00
LDRB            R0, [R5,#8]
TST             R0, #1
BEQ             loc_2A9A2C
VLDR            S1, [R5]
VLDR            S0, [R5,#4]
LDR             R1, =0x46100000
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VMOV            R0, S1
CMP             R0, R1
BLE             loc_2A9A3C
VPOP            {D8}
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_2A986C
VLDR            S1, [R5]
ADD             R0, R4, #0x28 ; '('
VSTR            S1, [R4,#0x20]
VSTR            S0, [R4,#0x24]
LDR             R1, =0x40200000
VLDM            R0, {S2-S3}
VSUB.F32        S2, S1, S2
VSUB.F32        S1, S0, S3
VMUL.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VSQRT.F32       S16, S0
VMOV            R0, S16
CMP             R0, R1
BLT             loc_2A9AE4
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #2
NOP
BNE             loc_2A9ABC
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R0, [R0,#0x428]
AND             R0, R0, #0x10000
MOVS            R0, R0,LSR#16
MOVNE           R0, #0x100
BNE             loc_2A9AC0
MOV             R0, #0x14
VMOV            S0, R0
VCVT.F32.U32    S1, S0
VLDR            S0, [R4,#0x30]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VADDGE.F32      S0, S0, S16
VSTRGE          S0, [R4,#0x30]
LDRD            R0, R1, [R4,#0x20]
STRD            R0, R1, [R4,#0x28]
LDR             R0, [R4,#0x4C]
ORR             R0, R0, #4
STR             R0, [R4,#0x4C]
LDR             R0, [R4,#4]
VPOP            {D8}
POP             {R4-R6,LR}
B               sub_505BE4
VPOP            {D8}
POP             {R4-R6,PC}
