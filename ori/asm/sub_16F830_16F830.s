PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R7, R0, #0x2600
ADD             R7, R7, #0x86
VPUSH           {D8-D10}
ADD             R5, R0, #0x2400
ADD             R5, R5, #0x298
LDRB            R0, [R7]
VLDR            S18, =0.0
VLDR            S17, =1.0
VLDR            S19, =-1.0
CMP             R0, #1
BNE             loc_16F890
LDRB            R1, [R5]
CMP             R1, #0
BEQ             loc_16F890
CMP             R1, #1
VMOVNE.F32      S0, S19
BEQ             loc_16F890
CMP             R0, #1
VLDR            S1, =30000.0
VMUL.F32        S16, S0, S1
BNE             loc_16F8BC
B               loc_16F898
VMOV.F32        S0, S17
B               loc_16F87C
LDRB            R1, [R5]
CMP             R1, #0
BEQ             loc_16F8BC
CMP             R1, #2
ADDNE           R8, R4, #0x10C
BEQ             loc_16F8BC
CMP             R0, #1
BNE             loc_16F8FC
B               loc_16F8C4
ADD             R8, R4, #0x108
B               loc_16F8B0
LDRB            R1, [R5]
CMP             R1, #0
BEQ             loc_16F8FC
CMP             R1, #2
ADDNE           R6, R4, #0x108
BEQ             loc_16F8FC
LDR             R1, [R4,#0x4EC]
TST             R1, #1
BEQ             loc_16F904
LDR             R0, [R4]
LDR             R1, [R0,#0x224]
MOV             R0, R4
BLX             R1
B               loc_16F9F0
ADD             R6, R4, #0x10C
B               loc_16F8DC
CMP             R0, #1
BNE             loc_16F944
LDRB            R0, [R5]
CMP             R0, #0
BEQ             loc_16F944
CMP             R0, #1
VMOVNE.F32      S1, S19
BEQ             loc_16F944
VLDR            S2, [R4,#0x128]
VLDR            S0, [R6]
VMLA.F32        S0, S2, S1
VSTR            S0, [R6]
LDRB            R0, [R7]
CMP             R0, #1
BNE             loc_16F990
B               loc_16F94C
VMOV.F32        S1, S17
B               loc_16F924
LDRB            R0, [R5]
CMP             R0, #0
BEQ             loc_16F990
CMP             R0, #3
VMOVNE.F32      S20, S19
BEQ             loc_16F990
VMOV.F32        S0, S18
BL              sub_464380
VMUL.F32        S0, S20, S0
VLDR            S2, [R4,#0x124]
VLDR            S1, [R6]
VMLA.F32        S1, S2, S0
VSTR            S1, [R6]
LDRB            R0, [R7]
CMP             R0, #1
BNE             loc_16F9C0
B               loc_16F998
VMOV.F32        S20, S17
B               loc_16F964
LDRB            R1, [R5]
CMP             R1, #0
BEQ             loc_16F9C0
CMP             R1, #1
VMOVNE.F32      S0, S19
BEQ             loc_16F9C0
CMP             R0, #1
VMUL.F32        S0, S0, S1
BNE             loc_16FA00
B               loc_16F9C8
VMOV.F32        S0, S17
B               loc_16F9B0
LDRB            R0, [R5]
CMP             R0, #0
BEQ             loc_16FA00
CMP             R0, #1
VMOVNE.F32      S1, S19
BEQ             loc_16FA00
VMUL.F32        S1, S1, S16
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VSTRGT          S16, [R6]
LDRB            R0, [R7]
CMP             R0, #1
BNE             loc_16FA1C
B               loc_16FA08
VMOV.F32        S1, S17
B               loc_16F9E0
LDRB            R0, [R5]
CMP             R0, #0
BEQ             loc_16FA1C
CMP             R0, #3
VMOVNE.F32      S17, S19
VMOV.F32        S0, S18
BL              sub_464318
VMUL.F32        S1, S17, S0
VLDR            S0, [R8]
VLDR            S2, [R4,#0x124]
VMLA.F32        S0, S2, S1
VSTR            S0, [R8]
VLDR            S0, [R4,#0x110]
VLDR            S1, [R4,#0x12C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x110]
VPOP            {D8-D10}
POP             {R4-R8,PC}
