LDR             R2, =0x7E921FB6
VMOV            R1, S0
PUSH            {R3,LR}
CMP             R2, R1,LSL#1
MOV             R0, SP
BLS             loc_140804
MOV             R0, #0x73000000
CMP             R0, R1,LSL#1
MOVHI           R0, #0xFFFFFFFF
MOVLS           R0, #0
STR             R0, [SP,#8+var_8]
B               loc_14086C
LDR             R3, =0x46490E49
BIC             R2, R1, #0x80000000
CMP             R3, R2
BLS             loc_140868
TST             R1, #0x80000000
VLDR            S1, =0.63662
VLDR            S4, =0.00048375
VLDR            S3, =2.5633e-12
VMUL.F32        S2, S0, S1
VLDR            S1, =8388600.0
VSUBNE.F32      S2, S2, S1
VADDNE.F32      S1, S2, S1
VADDEQ.F32      S2, S2, S1
VSUBEQ.F32      S1, S2, S1
VCVT.S32.F32    S2, S1
VMOV            R0, S2
VLDR            S2, =1.5703
AND             R0, R0, #3
VMLS.F32        S0, S1, S2
VLDR            S2, =7.5495e-8
STR             R0, [SP,#8+var_8]
VMLS.F32        S0, S1, S4
VMLS.F32        S0, S1, S2
VMLS.F32        S0, S1, S3
B               loc_14086C
BL              sub_141754
LDR             R0, [SP,#8+var_8]
VMOV.F32        S1, S0
VLDR            S0, =1.0
CMP             R0, #0
BGE             loc_1408AC
VMOV            R0, S1
MOV             R0, R0,LSL#1
CMP             R0, #0xFF000000
VADDHI.F32      S0, S1, S1
POPCC           {R3,PC}
POPNE           {R3,PC}
MOV             R0, #1
BLX             sub_100622
VLDR            S1, =0.0
VDIV.F32        S0, S1, S1
POP             {R3,PC}
TST             R0, #1
BEQ             loc_1408E4
VMUL.F32        S2, S1, S1
TST             R0, #2
VLDR            S3, =0.00019496
VLDR            S0, =0.008332
VMLS.F32        S0, S2, S3
VLDR            S3, =-0.16667
VMLA.F32        S3, S2, S0
VMOV.F32        S0, S1
VMUL.F32        S2, S3, S2
VMLA.F32        S0, S1, S2
POPNE           {R3,PC}
B               loc_140908
VMUL.F32        S1, S1, S1
VLDR            S3, =-0.0013598
TST             R0, #2
VLDR            S2, =0.041656
VMLA.F32        S2, S1, S3
VLDR            S3, =-0.5
VMLA.F32        S3, S1, S2
VMLA.F32        S0, S1, S3
POPEQ           {R3,PC}
VNEG.F32        S0, S0
POP             {R3,PC}
