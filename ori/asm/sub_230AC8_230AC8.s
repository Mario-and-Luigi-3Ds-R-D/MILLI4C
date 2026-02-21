VLDR            S1, [R0,#0x124]
VLDR            S0, =0.0
ADD             R1, R0, #0x400
LDR             R2, =unk_673888
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R0,#0x128]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
MOVNE           R0, #1
MOVEQ           R0, #0
STRH            R0, [R1,#0x68]
AND             R0, R0, #0xFF
LDRB            R0, [R2,R0]
STRH            R0, [R1,#0x6C]
BX              LR
