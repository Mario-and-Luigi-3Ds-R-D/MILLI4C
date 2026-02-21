PUSH            {R4}
LDR             R2, [R0,#0x19C]
TST             R2, #1
BNE             loc_21D604
LDRB            R2, [R0,#0xB7]
CMP             R2, #0
BEQ             loc_21D604
LDR             R2, =off_6D1648
VLDR            S1, =0.0
LDR             R2, [R2]
LDR             R2, [R2,#0xC4]
LDR             R2, [R2,#4]
LDR             R2, [R2,#4]
ADD             R2, R2, #0x108
VLDM            R2, {S2-S3}
ADD             R2, R0, #0x144
VLDM            R2, {S5-S6}
VADD.F32        S0, S2, S5
VADD.F32        S4, S3, S6
VLDR            S5, [R0,#0xA4]
VCMPE.F32       S5, S2
VMRS            APSR_nzcv, FPSCR
BGT             loc_21D1BC
VLDR            S5, [R0,#0xA8]
VCMPE.F32       S5, S2
VMRS            APSR_nzcv, FPSCR
BCC             loc_21D1BC
VMOV.F32        S2, S3
VLDR            S5, [R0,#0xAC]
VCMPE.F32       S5, S2
VMRS            APSR_nzcv, FPSCR
BCC             loc_21D1BC
VLDR            S2, [R0,#0xB0]
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BLE             loc_21D1C8
CMP             R1, #1
LDRNE           R1, [R0,#0x19C]
BNE             loc_21D1D4
LDR             R1, [R0,#0x19C]
ORR             R1, R1, #8
STR             R1, [R0,#0x19C]
ADD             R2, R0, #0x18
ADD             R4, R0, #0x24 ; '$'
LDM             R2, {R2,R3,R12}
TST             R1, #8
STM             R4, {R2,R3,R12}
BEQ             loc_21D60C
VLDR            S3, [R0,#0x18]
VLDR            S2, [R0,#0x1C]
TST             R1, #2
BNE             loc_21D20C
VMOV.F32        S5, S3
VSTR            S5, [R0,#0x14C]
VMOV.F32        S5, S2
VSTR            S5, [R0,#0x150]
VLDR            S5, [R0,#0x17C]
ORR             R1, R1, #2
STR             R1, [R0,#0x19C]
VCMPE.F32       S5, S4
VMRS            APSR_nzcv, FPSCR
BCS             loc_21D264
VLDR            S7, [R0,#0x180]
VLDR            S6, [R0,#0x160]
VSUB.F32        S5, S4, S5
VSTR            S4, [R0,#0x17C]
VMOV.F32        S4, S3
BIC             R1, R1, #0x10
VSTR            S4, [R0,#0x14C]
VMOV.F32        S4, S2
VSTR            S4, [R0,#0x150]
VADD.F32        S4, S5, S7
VADD.F32        S5, S5, S6
STR             R1, [R0,#0x19C]
VSTR            S4, [R0,#0x180]
VSTR            S5, [R0,#0x160]
VSTR            S1, [R0,#0x154]
B               loc_21D2AC
VLDR            S6, [R0,#0x180]
VCMPE.F32       S6, S4
VMRS            APSR_nzcv, FPSCR
BLE             loc_21D2AC
VLDR            S7, [R0,#0x160]
VSUB.F32        S6, S4, S6
VSTR            S4, [R0,#0x180]
VMOV.F32        S4, S3
BIC             R1, R1, #0x10
VSTR            S4, [R0,#0x14C]
VMOV.F32        S4, S2
VSTR            S4, [R0,#0x150]
VADD.F32        S4, S6, S5
STR             R1, [R0,#0x19C]
VSTR            S4, [R0,#0x17C]
VADD.F32        S4, S6, S7
VSTR            S1, [R0,#0x154]
VSTR            S4, [R0,#0x160]
VLDR            S4, [R0,#0x188]
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_21D2F0
VSUB.F32        S4, S0, S4
VLDR            S5, [R0,#0x184]
VSTR            S0, [R0,#0x15C]
VSTR            S0, [R0,#0x188]
VMOV.F32        S0, S3
ADD             R2, R0, #0x150
BIC             R1, R1, #0x10
VSTR            S0, [R0,#0x14C]
VADD.F32        S4, S4, S5
VMOV.F32        S0, S2
VSTR            S4, [R0,#0x184]
VSTM            R2, {S0-S1}
B               loc_21D32C
VLDR            S5, [R0,#0x184]
VCMPE.F32       S5, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_21D330
VSUB.F32        S6, S0, S5
VMOV.F32        S5, S3
BIC             R1, R1, #0x10
VSTR            S5, [R0,#0x14C]
VMOV.F32        S5, S2
VSTR            S5, [R0,#0x150]
VSTR            S0, [R0,#0x15C]
VSTR            S0, [R0,#0x184]
VADD.F32        S0, S6, S4
VSTR            S1, [R0,#0x154]
VSTR            S0, [R0,#0x188]
STR             R1, [R0,#0x19C]
TST             R1, #0x10
MOV             R2, R1
BEQ             loc_21D350
ADD             R1, R0, #0x15C
ADD             R3, R0, #0x18
LDM             R1, {R1,R2}
STM             R3, {R1,R2}
B               loc_21D390
VLDR            S0, [R0,#0x154]
VLDR            S4, [R0,#0x158]
LDR             R3, =0x42C80000
VADD.F32        S0, S0, S4
VMOV            R1, S0
VSTR            S0, [R0,#0x154]
CMP             R1, R3
BLT             loc_21D44C
ADD             R1, R0, #0x15C
ORR             R2, R2, #0x10
LDM             R1, {R1,R3,R12}
ADD             R4, R0, #0x18
STR             R2, [R0,#0x19C]
VSTR            S1, [R0,#0x154]
STR             R12, [R0,#0x158]
STM             R4, {R1,R3}
MOV             R1, #0
VLDR            S0, [R0,#0x18]
VLDR            S6, [R0,#0x124]
VCMPE.F32       S0, S6
VMRS            APSR_nzcv, FPSCR
VSTRCC          S6, [R0,#0x18]
BCC             loc_21D3C0
VLDR            S4, [R0,#0x128]
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
VSTRGT          S4, [R0,#0x18]
BLE             loc_21D3C4
MOV             R1, #1
VLDR            S4, [R0,#0x1C]
VLDR            S0, [R0,#0x12C]
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
VSTRGT          S0, [R0,#0x1C]
BGT             loc_21D3F4
VLDR            S5, [R0,#0x130]
VCMPE.F32       S5, S4
VMRS            APSR_nzcv, FPSCR
VSTRGT          S5, [R0,#0x1C]
CMPLE           R1, #0
BEQ             loc_21D400
LDR             R1, [R0,#0x19C]
BIC             R1, R1, #8
STR             R1, [R0,#0x19C]
VLDR            S4, [R0,#0x18]
VLDR            S7, [R0,#0x24]
VSUB.F32        S5, S4, S7
VCMPE.F32       S5, S1
VMRS            APSR_nzcv, FPSCR
VLDRCC          S8, [R0,#0x134]
VCMPECC.F32     S4, S8
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_21D4EC
VSUB.F32        S4, S6, S4
VSUB.F32        S8, S6, S8
VDIV.F32        S6, S4, S8
VMUL.F32        S4, S6, S5
VADD.F32        S4, S7, S4
VSTR            S4, [R0,#0x18]
B               loc_21D520
DCD off_6D1648
DCFS 0.0
DCD 0x42C80000
VLDR            S4, [R0,#0x15C]
VLDR            S0, [R0,#0x160]
VLDR            S6, [R0,#0x14C]
VLDR            S5, [R0,#0x150]
VLDR            S7, [R0,#0x154]
VSUB.F32        S4, S4, S6
VSUB.F32        S5, S0, S5
VLDR            S0, [R0,#0x178]
VCMPE.F32       S7, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#0x158]
BLT             loc_21D4A0
VLDR            S8, [R0,#0x170]
VLDR            S6, [R0,#0x174]
VSUB.F32        S0, S0, S8
VSTR            S0, [R0,#0x158]
VCMPE.F32       S0, S6
VMRS            APSR_nzcv, FPSCR
BGT             loc_21D4BC
VMOV.F32        S0, S6
B               loc_21D4BC
VLDR            S8, [R0,#0x168]
VLDR            S6, [R0,#0x16C]
VADD.F32        S0, S0, S8
VSTR            S0, [R0,#0x158]
VCMPE.F32       S6, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_21D498
VSTR            S0, [R0,#0x158]
VLDR            S0, =0.01
ADD             R1, R0, #0x14C
VMUL.F32        S0, S7, S0
VMUL.F32        S4, S4, S0
VMUL.F32        S0, S5, S0
VLDM            R1, {S5-S6}
VADD.F32        S4, S5, S4
VADD.F32        S0, S6, S0
VSTR            S4, [R0,#0x18]
VSTR            S0, [R0,#0x1C]
B               loc_21D390
VCMPE.F32       S5, S1
VMRS            APSR_nzcv, FPSCR
VLDRGT          S6, [R0,#0x138]
VCMPEGT.F32     S4, S6
VMRSGT          APSR_nzcv, FPSCR
BLE             loc_21D520
VLDR            S8, [R0,#0x128]
VSUB.F32        S4, S8, S4
VSUB.F32        S8, S8, S6
VDIV.F32        S6, S4, S8
VMUL.F32        S4, S6, S5
VADD.F32        S4, S7, S4
VSTR            S4, [R0,#0x18]
VLDR            S4, [R0,#0x1C]
VLDR            S6, [R0,#0x28]
VSUB.F32        S5, S4, S6
VCMPE.F32       S5, S1
VMRS            APSR_nzcv, FPSCR
VLDRCC          S7, [R0,#0x140]
VCMPECC.F32     S4, S7
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_21D564
VLDR            S0, [R0,#0x130]
VSUB.F32        S1, S0, S4
VSUB.F32        S4, S0, S7
VDIV.F32        S0, S1, S4
VMUL.F32        S0, S0, S5
VADD.F32        S0, S6, S0
VSTR            S0, [R0,#0x1C]
B               loc_21D594
VCMPE.F32       S5, S1
VMRS            APSR_nzcv, FPSCR
VLDRGT          S1, [R0,#0x13C]
VCMPEGT.F32     S4, S1
VMRSGT          APSR_nzcv, FPSCR
BLE             loc_21D594
VSUB.F32        S4, S0, S4
VSUB.F32        S1, S0, S1
VDIV.F32        S0, S4, S1
VMUL.F32        S0, S0, S5
VADD.F32        S0, S6, S0
VSTR            S0, [R0,#0x1C]
ADD             R1, R0, #0x18
VLDR            S8, [R0,#0xB0]
VLDR            S11, [R0,#0xA4]
VLDR            S7, [R0,#0x94]
VLDR            S6, [R0,#0x98]
VLDR            S5, [R0,#0x9C]
VLDR            S4, [R0,#0xA0]
VLDM            R1, {S0-S1}
ADD             R1, R0, #0xA8
VLDM            R1, {S9-S10}
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S2
ADD             R1, R0, #0xA0
VADD.F32        S9, S0, S9
VADD.F32        S3, S1, S10
VADD.F32        S8, S1, S8
VADD.F32        S2, S0, S11
VADD.F32        S7, S0, S7
VADD.F32        S0, S0, S6
VADD.F32        S5, S1, S5
VADD.F32        S1, S1, S4
VSTR            S9, [R0,#0xA8]
VSTR            S3, [R0,#0xAC]
VSTR            S8, [R0,#0xB0]
VSTR            S7, [R0,#0x94]
VSTR            S0, [R0,#0x98]
VSTR            S5, [R0,#0x9C]
VSTM            R1, {S1-S2}
POP             {R4}
BX              LR
LDR             R2, [R0,#0x164]
VSTR            S1, [R0,#0x154]
BIC             R1, R1, #0x1E
STR             R2, [R0,#0x158]!
STR             R1, [R0,#0x44]
POP             {R4}
BX              LR
