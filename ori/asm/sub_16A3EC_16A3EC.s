PUSH            {R4-R8,LR}
MOV             R5, R0
LDR             R7, =0x43340000
VPUSH           {D8-D10}
VMOV.F32        S16, S0
VMOV.F32        S19, S1
VLDR            S20, =360.0
VMOV            R0, S16
CMP             R0, R7
BLE             loc_16A424
VSUB.F32        S16, S16, S20
VMOV            R0, S16
CMP             R0, R7
BGT             loc_16A414
LDR             R8, =0xC3340000
VMOV            R0, S16
CMP             R0, R8
BLS             loc_16A444
VADD.F32        S16, S16, S20
VMOV            R0, S16
CMP             R0, R8
BHI             loc_16A434
ADD             R6, R5, #0x2400
ADD             R4, R5, #0x2400
LDR             R0, [R6,#0x2E0]
ADD             R4, R4, #0x2DC
CMP             R0, R7
VMOVGT.F32      S17, S20
BLE             loc_16A484
MOV             R0, R4
BL              sub_5A18EC
VLDR            S0, [R4,#0xC]
VSUB.F32        S0, S0, S17
VMOV            R0, S0
VSTR            S0, [R4,#4]
VSTR            S0, [R4,#0xC]
CMP             R0, R7
BGT             loc_16A460
LDR             R0, [R6,#0x2E0]
CMP             R0, R8
VMOVHI.F32      S18, S20
BLS             loc_16A4B8
MOV             R0, R4
BL              sub_5A18EC
VLDR            S0, [R4,#0xC]
VADD.F32        S0, S0, S18
VMOV            R0, S0
VSTR            S0, [R4,#4]
VSTR            S0, [R4,#0xC]
CMP             R0, R8
BHI             loc_16A494
VLDR            S0, [R6,#0x2E0]
ADD             R5, R5, #0x2400
MOV             R6, #1
VCMPE.F32       S16, S0
ADD             R5, R5, #0x2B8
VMRS            APSR_nzcv, FPSCR
VSUB.F32        S0, S16, S0
VMOV.F32        S1, S19
MOVGE           R1, #1
MOVLT           R1, #0
VABS.F32        S0, S0
VMOV            R0, S0
CMP             R0, R7
VSUBGE.F32      S0, S20, S0
EORGE           R1, R1, #1
CMP             R1, #0
BEQ             loc_16A510
MOV             R0, R4
BL              sub_5A1BAC
STRB            R6, [R5]
VPOP            {D8-D10}
POP             {R4-R8,PC}
VNEG.F32        S0, S0
MOV             R0, R4
BL              sub_5A1BAC
STRB            R6, [R5]
VPOP            {D8-D10}
POP             {R4-R8,PC}
