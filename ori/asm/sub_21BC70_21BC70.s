PUSH            {R4-R10,LR}
MOV             R4, R1
MOV             R5, R0
MOV             R7, #0
VPUSH           {D8-D11}
SUB             SP, SP, #0x10
LDRB            R1, [R0,#0x14]
LDR             R0, [R0,#8]
VLDR            S16, =0.0
CMP             R1, #0
LDR             R6, [R0,#0x18]
BEQ             loc_21BD60
LDR             R9, =dword_6E1330
LDR             R8, =off_6CE970
LDR             R0, [R9]
LDR             R10, [R8]
TST             R0, #1
BNE             loc_21BCE0
MOV             R0, R9
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_21BCE0
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R9
NOP
LDR             R0, =flt_711FE4
MOV             R1, #5
MOV             R3, R6
STMEA           SP, {R0,R1,R7}
MOV             R2, R3
MOV             R1, #9
MOV             R0, R10
BL              sub_52B6D4
LDR             R0, [R4]
CMP             R0, #0
BLE             loc_21BD60
LDR             R0, [R9]
LDR             R4, [R8]
TST             R0, #1
BNE             loc_21BD48
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_21BD48
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
LDR             R1, =0x467
MOV             R2, R6
MOV             R0, R4
STR             R7, [SP,#0x50+var_50]
BL              sub_52B72C
VLDR            S0, [R6,#0x28]
VMOV.F32        S20, S16
VLDR            S18, =160.0
VNEG.F32        S17, S0
VLDR            S21, =-0.6
VLDR            S22, =0.6
MOV             R4, #0
CMP             R4, #0
VLDREQ          S0, [R6,#0x28]
VMOVNE.F32      S19, S18
VMOV.F32        S2, S21
VSUBEQ.F32      S19, S18, S0
VMOV.F32        S0, S17
VMOV.F32        S1, S19
BL              sub_589714
ADD             R0, R5, R4,LSL#4
VADD.F32        S16, S16, S0
VMUL.F32        S18, S18, S22
VMOV            R1, S17
VSTR            S19, [R0,#0x1C]
VSTR            S0, [R0,#0x24]
VMOV.F32        S17, S20
VSTR            S21, [R0,#0x20]
STR             R1, [R0,#0x18]
ADD             R0, R4, #1
AND             R4, R0, #0xFF
CMP             R4, #3
BCC             loc_21BD7C
STR             R7, [SP,#0x50+var_50]
LDR             R0, [R5,#8]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x18
BL              sub_4E3CA0
LDRB            R0, [R5,#0x14]
CMP             R0, #0
BEQ             loc_21BE40
LDR             R0, [R5,#8]
ADD             R1, R6, #0x24 ; '$'
VLDR            S3, [R6,#0x2C]
MOV             R2, SP
VLDM            R1, {S4-S5}
MOV             R1, #0
VLDR            S2, [R0,#0x1C]
VLDR            S0, [R0,#0x20]
VLDR            S1, [R0,#0x24]
VSUB.F32        S2, S2, S4
VSUB.F32        S0, S0, S5
VSUB.F32        S1, S1, S3
ADD             R0, R6, #0x1DC
VSTR            S2, [SP,#0x50+var_50]
VSTR            S0, [SP,#0x50+var_4C]
VMOV.F32        S0, S16
VSTR            S1, [SP,#0x50+var_48]
VSTR            S20, [SP,#0x50+var_4C]
BL              sub_5A2B20
MOV             R0, R5
BL              sub_21C044
LDR             R1, =off_64E814
LDRD            R0, R1, [R1]
STRD            R0, R1, [R5,#0xC]
ADD             SP, SP, #0x10
VPOP            {D8-D11}
POP             {R4-R10,PC}
