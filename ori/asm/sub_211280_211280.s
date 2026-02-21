PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R4, R2
MOV             R8, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x20
LDR             R1, [R2,#8]!
LDR             R0, [R2,#4]
UXTH            R1, R1
AND             R7, R0, #0xFF
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
MOV             R5, R0
LDRH            R0, [R4]
VLDR            S18, [R5,#0x24]
VLDR            S17, [R5,#0x28]
SUB             R0, R0, #0xEA
VLDR            S16, [R5,#0x2C]
CMP             R0, #0xA; switch 10 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2112D0; jumptable 002112D0 default case
DCD loc_211300; jump table for switch statement
ADD             R1, R4, #0x74 ; 't'; jumptable 002112D0 cases 0,2,4,6,8
LDR             R0, [R4,#0x10]
LDM             R1, {R1-R3}
TST             R0, #0xFF
STMEA           SP, {R1-R3}
BEQ             def_2112D0; jumptable 002112D0 default case
VMOV            S0, R1
VADD.F32        S0, S0, S18
VSTR            S0, [SP,#0x48+var_48]
VMOV            S0, R2
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x48+var_44]
VMOV            S0, R3
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x48+var_40]
LDR             R0, =dword_6E1330; jumptable 002112D0 default case
ADD             R1, SP, #0x48+var_38
VLDMEA          SP, {S0-S2}
VSUB.F32        S19, S0, S18
VSUB.F32        S18, S2, S16
VSUB.F32        S17, S1, S17
VLDR            S16, =0.0
VSTR            S19, [SP,#0x48+var_3C]
VSTM            R1, {S17-S18}
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2113F0
B               loc_2113C4
LDR             R0, [R4,#0x10]; jumptable 002112D0 cases 1,3,5,7,9
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528EB0
LDRB            R2, [R5,#0xF0]
MOV             R3, #0
MOV             R1, SP
BL              sub_5C5384
VLDR            S1, [R4,#0x74]
VLDR            S0, [SP,#0x48+var_48]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_48]
VLDR            S1, [R4,#0x78]
VLDR            S0, [SP,#0x48+var_44]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_44]
VLDR            S1, [R4,#0x7C]
VLDR            S0, [SP,#0x48+var_40]
VADD.F32        S0, S0, S1
B               loc_211338
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2113F0
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
VLDR            S3, [SP,#0x48+var_3C]
ADD             R1, SP, #0x48+var_38
LDR             R0, =flt_711FE4
VMUL.F32        S0, S3, S3
VLDM            R1, {S1-S2}
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_211430
LDM             R0, {R1,R2}
ADD             R3, SP, #0x48+var_3C
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [SP,#0x48+var_34]
STM             R3, {R1,R2}
B               loc_211454
VSQRT.F32       S5, S0
VLDR            S4, =1.0
VDIV.F32        S0, S4, S5
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S2, S0
VSTR            S3, [SP,#0x48+var_3C]
VSTR            S1, [SP,#0x48+var_38]
VSTR            S0, [SP,#0x48+var_34]
VMUL.F32        S0, S19, S19
LDRH            R0, [R4]
SUB             R0, R0, #0xEA
CMP             R0, #0xA; switch 10 cases
VMLA.F32        S0, S17, S17
VLDR            S17, =-1.0
VMLA.F32        S0, S18, S18
VSQRT.F32       S18, S0
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_211474; jumptable 00211474 default case
DCD loc_2114A4; jump table for switch statement
VLDR            S19, [R4,#0x80]; jumptable 00211474 cases 0,1,6,7
VLDR            S17, [R4,#0x84]
VMUL.F32        S0, S19, S17
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_2114F4
VMOV.F32        S2, S17
VMOV.F32        S1, S19
VMOV.F32        S0, S18
ADD             R2, SP, #0x48+var_3C
MOV             R1, R7
ADD             R0, R5, #0x1DC
BL              sub_5A290C
VMOV.F32        S2, S17
VMOV.F32        S1, S19
VMOV.F32        S0, S18
BL              sub_5896C4
VMOV.F32        S17, S0
NOP
B               def_211474; jumptable 00211474 default case
VLDR            S0, =0.5
VNEG.F32        S2, S18
VMOV.F32        S1, S19
VMUL.F32        S0, S17, S0
ADD             R0, SP, #0x48+var_30
BL              sub_48025C
CMP             R0, #1
VLDRNE          S17, [SP,#0x48+var_2C]
VLDREQ          S17, [SP,#0x48+var_30]
VMOV.F32        S2, S19
VMOV.F32        S0, S18
VMOV.F32        S1, S17
ADD             R2, SP, #0x48+var_3C
MOV             R1, R7
ADD             R0, R5, #0x1DC
BL              sub_5A2840
NOP
NOP
B               def_211474; jumptable 00211474 default case
VLDR            S1, [R4,#0x20]; jumptable 00211474 cases 2,3
VLDR            S0, [R4,#0x84]
VLDR            S3, =1.0
VCVT.F32.S32    S1, S1
VLDR            S2, =2.0
VADD.F32        S3, S0, S3
ADD             R2, SP, #0x48+var_3C
VMUL.F32        S0, S18, S2
MOV             R1, R7
ADD             R0, R5, #0x1DC
VMUL.F32        S3, S3, S1
VDIV.F32        S2, S0, S3
VMOV.F32        S0, S18
BL              sub_5A2840
NOP
NOP
B               def_211474; jumptable 00211474 default case
VLDR            S0, =2.0; jumptable 00211474 cases 4,5,8,9
VLDR            S2, [R4,#0x80]
ADD             R2, SP, #0x48+var_3C
VMUL.F32        S1, S18, S0
VLDR            S0, [R4,#0x84]
MOV             R1, R7
ADD             R0, R5, #0x1DC
VADD.F32        S0, S0, S2
VDIV.F32        S17, S1, S0
VMOV.F32        S0, S18
VMOV.F32        S1, S17
BL              sub_5A2840
LDRH            R0, [R4]; jumptable 00211474 default case
CMP             R0, #0xF0
CMPNE           R0, #0xF1
BEQ             loc_2115D0
CMP             R0, #0xF2
CMPNE           R0, #0xF3
BNE             loc_2115EC
CMP             R6, #0
VMOV.F32        S0, S17
LDRH            R0, [R4,#2]
ADDNE           R2, R6, #4
MOVEQ           R2, #0
MOV             R1, R8
BL              sub_145730
ADD             SP, SP, #0x20 ; ' '
MOV             R0, #0
VPOP            {D8-D9}
POP             {R4-R8,PC}
