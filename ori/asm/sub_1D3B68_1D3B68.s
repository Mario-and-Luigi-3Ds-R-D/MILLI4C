PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R0, #1
LDR             R2, =dword_6E2378
LDR             R1, =sub_1605EC
VPUSH           {D8-D10}
ADD             R4, R5, R1
STRB            R0, [R2,#(byte_6E2389 - 0x6E2378)]
LDR             R0, =0x138F24
ADD             R0, R0, R5
LDR             R0, [R0,#0x20]
MOV             R1, R0
MOV             R0, R4
BL              sub_5463E4
ADD             R0, R4, #0x7000
MOV             R8, #0x400
LDR             R1, [R0,#0x3B8]
MOV             R7, #0
MOV             R2, R7
ORR             R1, R1, #1
STR             R1, [R0,#0x3B8]
LDR             R0, =0x7418
MOV             R1, #0x1E
MOV             R3, R7
STR             R8, [R0,R4]
LDR             R0, =0x139014
ADD             R6, R5, R0
ADD             R0, R6, #0x27400
ADD             R0, R0, #0x1D8
BL              sub_545B80
LDR             R1, =0x4A2E4
MOV             R0, #0xFF
VLDR            S16, =0.0
VLDR            S17, =370.0
STRB            R0, [R1,R6]
MOV             R0, R8
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, R8
VCVT.F32.U32    S0, S0
VADD.F32        S18, S0, S16
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S0, R0
ADD             R0, R5, #0x10C000
ADD             R0, R0, #0x214
MOV             R6, R0
VCVT.F32.U32    S0, S0
VSUB.F32        S19, S0, S16
BL              sub_5E824C
VMOV.F32        S20, S0
MOV             R0, R6
BL              sub_5E8228
ADD             R6, R4, #0x5800
ADD             R2, R4, #0x5800
VSTR            S18, [R6,#0x48]
LDR             R1, =0x5830
VSTR            S19, [R6,#0x4C]
ADD             R2, R2, #0x2A4
VMOV.F32        S21, S0
VSTM            R2, {S18-S19}
MOV             R0, R4
LDR             R1, [R1,R4]
TST             R1, #1
BEQ             loc_1D3C7C
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BLX             R1
VMOV.F32        S1, S20
VMOV.F32        S0, S17
VMOV.F32        S2, S21
MOV             R0, R4
VCMP.F32        S1, S16
VSTR            S0, [R6,#0x2AC]
VMRS            APSR_nzcv, FPSCR
VCMPNE.F32      S2, S16
VMRSNE          APSR_nzcv, FPSCR
BLNE            sub_2C292C
LDR             R2, =off_6541A4
ADD             R4, R4, #0x5800
ADD             R4, R4, #0x36 ; '6'
ADD             R0, R5, #0x1A0000
STRB            R7, [R4]
LDM             R2, {R1,R2}
ADD             R0, R0, #0x5C ; '\'
STM             R0, {R1,R2}
VPOP            {D8-D10}
POP             {R4-R8,PC}
