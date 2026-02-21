PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VMOV.F32        S17, S2
VMOV.F32        S18, S3
VLDR            S16, =0.0
SUB             SP, SP, #4
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VCMPEQ.F32      S1, S16
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_22D4BC
VMOV.F32        S4, S0
VMOV.F32        S0, S1
VMOV.F32        S1, S4
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S2, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S1, =6.2832
ADD             R1, R4, #0x400
MOV             R0, #3
ADD             R5, R4, #0x400
ADD             R5, R5, #0x64 ; 'd'
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VSTR            S0, [R1,#0x74]
LDR             R1, [R4,#0x464]
MOV             R1, R1,LSL#21
CMP             R0, R1,LSR#29
BHI             loc_22D4BC
VCMP.F32        S17, S16
VMRS            APSR_nzcv, FPSCR
VCMPEQ.F32      S18, S16
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_22D4BC
MOV             R0, SP
VLDR            S16, =16.0
VLDR            S1, =0.15915
VMUL.F32        S0, S0, S16
VMUL.F32        S0, S0, S1
BL              sub_5F6640
VMOV            R0, S0
CMP             R0, #0x3F000000
BLT             loc_22D49C
VLDR            S0, [SP,#0x20+var_20]
VLDR            S1, =1.0
LDR             R1, =0x41800000
VADD.F32        S0, S0, S1
VMOV            R0, S0
VSTR            S0, [SP,#0x20+var_20]
CMP             R0, R1
VSUBGE.F32      S0, S0, S16
VSTRGE          S0, [SP,#0x20+var_20]
VLDR            S0, [SP,#0x20+var_20]
LDR             R1, [R4,#0x464]
VCVT.U32.F32    S0, S0
BIC             R1, R1, #0xF
VMOV            R0, S0
AND             R0, R0, #0xF
ORR             R0, R0, R1
STR             R0, [R5]
ADD             SP, SP, #4
VPOP            {D8-D9}
POP             {R4,R5,PC}
