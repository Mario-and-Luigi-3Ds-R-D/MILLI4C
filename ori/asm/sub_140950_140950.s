PUSH            {LR}
VMOV            R1, S0
LDR             R2, =0x7E921FB6
VPUSH           {D8}
SUB             SP, SP, #4
CMP             R2, R1,LSL#1
MOV             R0, SP
BLS             loc_140988
MOV             R0, #0x73000000
CMP             R0, R1,LSL#1
MOVHI           R0, #0xFFFFFFFF
MOVLS           R0, #0
STR             R0, [SP,#0x10+var_10]
B               loc_1409F0
LDR             R3, =0x46490E49
BIC             R2, R1, #0x80000000
CMP             R3, R2
BLS             loc_1409EC
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
STR             R0, [SP,#0x10+var_10]
VMLS.F32        S0, S1, S4
VMLS.F32        S0, S1, S2
VMLS.F32        S0, S1, S3
B               loc_1409F0
BL              sub_141754
LDR             R0, [SP,#0x10+var_10]
VMOV.F32        S16, S0
CMP             R0, #0
BGE             loc_140A5C
VMOV            R0, S16
MOV             R0, R0,LSL#1
CMP             R0, #0xFF000000
VADDHI.F32      S0, S16, S16
BCS             loc_140A34
VMOV            R0, S16
BL              sub_141718
CMP             R0, #4
BLEQ            sub_141744
VMOV.F32        S0, S16
ADD             SP, SP, #4
VPOP            {D8}
POP             {PC}
ADDNE           SP, SP, #4
VPOPNE          {D8}
POPNE           {PC}
MOV             R0, #1
BLX             sub_100622
VLDR            S1, =0.0
ADD             SP, SP, #4
VPOP            {D8}
VDIV.F32        S0, S1, S1
POP             {PC}
VMUL.F32        S1, S16, S16
TST             R0, #1
BEQ             loc_140AA4
TST             R0, #2
VLDR            S0, =-0.0013598
ADDEQ           SP, SP, #4
VLDR            S2, =0.041656
VLDR            S3, =-0.5
VMLA.F32        S2, S1, S0
VLDR            S0, =1.0
VPOPEQ          {D8}
VMLA.F32        S3, S1, S2
VMLA.F32        S0, S1, S3
POPEQ           {PC}
ADD             SP, SP, #4
VPOP            {D8}
VNEG.F32        S0, S0
POP             {PC}
VLDR            S2, =0.00019496
TST             R0, #2
VLDR            S0, =0.008332
VMLS.F32        S0, S1, S2
VLDR            S2, =-0.16667
VMLA.F32        S2, S1, S0
VMOV.F32        S0, S16
VMUL.F32        S1, S2, S1
VMLA.F32        S0, S16, S1
BNE             loc_140A94
ADD             SP, SP, #4
VPOP            {D8}
POP             {PC}
