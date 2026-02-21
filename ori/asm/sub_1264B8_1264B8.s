VLDR            S1, =0.0
LDR             R0, =off_6D48F8
VLDR            S2, =1.0
VCMPE.F32       S0, S1
LDR             R1, [R0]
VMRS            APSR_nzcv, FPSCR
ADD             R2, R1, #0x400
VMOVLS.F32      S4, S1
VLDR            S3, [R2,#0x270]
BLS             loc_1264F0
VMOV            R0, S0
CMP             R0, #0x3F800000
VMOVGE.F32      S4, S2
VMOVLT.F32      S4, S0
VCMP.F32        S3, S4
VMRS            APSR_nzcv, FPSCR
BEQ             locret_12656C
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S1
BLS             loc_126518
VMOV            R0, S0
CMP             R0, #0x3F800000
VMOVGE.F32      S0, S2
MOV             R3, #0xFF
VMOV            R0, S0
VCMPE.F32       S0, S1
VSTR            S0, [R2,#0x270]
VMRS            APSR_nzcv, FPSCR
BLS             loc_12653C
MOV             R0, R0,LSL#1
CMP             R3, R0,LSR#24
BNE             loc_126570
MOV             R0, #0
STR             R0, [R1,#0x67C]
VLDR            S0, [R2,#0x270]
VMOV            R0, S0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_126564
MOV             R0, R0,LSL#1
CMP             R3, R0,LSR#24
BNE             loc_126594
MOV             R0, #0
STR             R0, [R1,#0x680]
BX              LR
VLDR            S2, =1.6777e7
LDR             R12, =0x4B800000
VMUL.F32        S0, S0, S2
VMOV            R0, S0
CMP             R12, R0
VCVTGT.U32.F32  S0, S0
MOVLE           R0, #0xFFFFFF
VMOVGT          R0, S0
B               loc_126540
VLDR            S1, =65536.0
LDR             R2, =0x47800000
VMUL.F32        S0, S0, S1
VMOV            R0, S0
CMP             R2, R0
VCVTGT.U32.F32  S0, S0
LDRLE           R0, =0xFFFF
VMOVGT          R0, S0
B               loc_126568
