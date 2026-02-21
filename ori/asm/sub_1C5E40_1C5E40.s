PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R0, =off_6CE118
VPUSH           {D8-D10}
SUB             SP, SP, #0x70
LDRB            R1, [R4]
LDR             R0, [R0]
SUB             R1, R1, #2
CMP             R1, #0xD; switch 13 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1C5E64; jumptable 001C5E64 default case, cases 5,6
DCD loc_1C5F10; jump table for switch statement
LDRB            R0, [R4,#0x42]; jumptable 001C5E64 case 12
CMP             R0, #0
BEQ             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
CMP             R0, #1
BNE             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDR             R0, [R4,#0x1C]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDR             R0, =off_6CE970
LDR             R12, =0xFFE683CC
LDR             R2, =0x301CB
MOV             R3, #0
LDR             R0, [R0]
MOV             R1, #0x1000
SUB             R0, R0, R12
BL              sub_503808
LDR             R0, [R4,#0x1C]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
BL              sub_14C430
MOV             R0, #0xF
STRB            R0, [R4]
ADD             SP, SP, #0x70 ; 'p'; jumptable 001C5E64 default case, cases 5,6
VPOP            {D8-D10}
POP             {R4-R8,PC}
LDR             R3, =off_6CE970; jumptable 001C5E64 case 0
LDR             R2, =sub_10D4F0
ADD             R12, R0, #0x1000
ADD             R1, R0, #0xC00
LDR             R3, [R3]
VLDR            S0, [R12,#0x2AC]
ADD             R1, R1, #8
ADD             R2, R2, R3; sub_10D4F0
LDR             R3, [R0,#0xC]
LDR             R2, [R2]
VLDR            S1, [R3]
VLDR            S2, [R2,#0x24]
LDR             R2, [R0,#8]
VADD.F32        S1, S2, S1
VLDR            S2, [R2,#0x274]
VSUB.F32        S0, S0, S1
VLDR            S1, [R1,#0x1C]
VMUL.F32        S1, S1, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDR             R2, [R4,#0x1C]
VLDR            S3, =3.1416
ADD             R3, R2, #0x24 ; '$'
LDR             R2, [R2,#0x2C]
LDM             R3, {R3,R12}
STR             R2, [R4,#0x3C]
ADD             R2, R4, #0x34 ; '4'
STM             R2, {R3,R12}
LDR             R0, [R0,#8]
VLDR            S1, [R1,#0x1C]
VLDR            S2, [R0,#0x274]
MOV             R0, #3
VMLS.F32        S0, S1, S2
VMUL.F32        S1, S1, S2
VSTR            S1, [R4,#0x30]
VDIV.F32        S2, S0, S1
STRB            R0, [R4]
VADD.F32        S0, S2, S3
VSTR            S0, [R4,#0x24]
VSTR            S0, [R4,#0x28]
ADD             SP, SP, #0x70 ; 'p'
VPOP            {D8-D10}
POP             {R4-R8,PC}
LDR             R1, =off_6CE970; jumptable 001C5E64 case 1
VLDR            S1, =0.0039062
ADD             R0, R0, #0x1000
VLDR            S19, =40.744
LDR             R1, [R1]
VLDR            S2, [R0,#0x3CC]
ADD             R1, R1, #0x190000
ADD             R1, R1, #0xDE00
LDRSH           R1, [R1,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VMUL.F32        S1, S0, S1
VLDR            S0, [R4,#0x24]
VMLA.F32        S0, S1, S2
VSTR            S0, [R4,#0x24]
VMUL.F32        S0, S0, S19
VLDR            S16, [R0,#0x2AC]
VLDR            S17, [R0,#0x2B4]
BL              sub_464318
VLDR            S2, [R4,#0x30]
VLDR            S1, [R4,#0x24]
VLDR            S18, =0.0
VMLA.F32        S16, S0, S2
VMUL.F32        S0, S1, S19
BL              sub_464380
VLDR            S1, [R4,#0x30]
LDR             R0, [R4,#0x1C]
VMLA.F32        S17, S0, S1
ADD             R4, R0, #0x1DC
MOV             R0, R4
BL              sub_5A26D0
VSTR            S16, [R4,#0x1C]
VSTR            S18, [R4,#0x20]
VSTR            S17, [R4,#0x24]
VSTR            S16, [R4,#4]
VSTR            S18, [R4,#8]
VSTR            S17, [R4,#0xC]
ADD             SP, SP, #0x70 ; 'p'
VPOP            {D8-D10}
POP             {R4-R8,PC}
LDR             R8, =off_6CE970; jumptable 001C5E64 case 2
VLDR            S1, =0.0039062
ADD             R0, R0, #0x1000
VLDR            S16, =0.0
LDR             R1, [R8]
VLDR            S2, [R0,#0x3CC]
VLDR            S17, =1.0
ADD             R1, R1, #0x190000
ADD             R1, R1, #0xDE00
LDR             R7, =off_6CE118
LDRSH           R1, [R1,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VLDR            S1, [R4,#0x24]
VMUL.F32        S0, S0, S2
VADD.F32        S1, S1, S0
VSTR            S1, [R4,#0x24]
VLDR            S0, [R4,#0x28]
VSUB.F32        S0, S1, S0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S2, [R4,#0x2C]
VNEGCC.F32      S0, S0
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_1C62D8
MOV             R0, #9
STRB            R0, [R4]
LDR             R0, =0xFFE683CC
LDR             R12, [R8]
LDR             R2, =0x301C2
MOV             R3, #0
MOV             R1, #0x1000
SUB             R0, R12, R0
BL              sub_503808
LDR             R0, [R4,#0x1C]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xD
BL              sub_14C430
LDR             R0, [R7]
NOP
BL              sub_3D71D4
MOV             R5, R0
STR             R0, [R4,#0x20]
LDR             R0, [R0,#0xC]
ADD             R6, SP, #0xA0+var_90
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0,#0x18]
MOV             R1, R6
BL              sub_5CE3C0
LDR             R0, [R5,#0xC]
MOV             R2, #0
LDR             R0, [R0,#0x18]
LDR             R1, [R0]
LDR             R3, [R1,#0x28]
ADD             R1, SP, #0xA0+var_6C
BLX             R3
ADD             R1, SP, #0xA0+var_6C
MOV             R0, R6
BL              sub_570F84
VSTMEA          SP, {S16-S17}
MOV             R2, SP
VSTR            S16, [SP,#0xA0+var_98]
LDR             R1, [R7]
LDR             R0, [R4,#0x1C]
VLDR            S0, [SP,#0xA0+var_88]
LDR             R1, [R1,#8]
ADD             R0, R0, #0x1DC
VLDR            S2, [R1,#0x398]
VLDR            S1, [R1,#0x39C]
MOV             R1, #1
BL              sub_5A2840
LDRD            R0, R1, [R4,#0x1C]
ADD             R2, SP, #0xA0+var_78
LDR             R1, [R1,#0xC]
VLDR            S3, [R0,#0x24]
VLDR            S2, [R0,#0x2C]
LDR             R1, [R1,#0x18]
VLDR            S0, [R1,#0x24]
VLDR            S1, [R1,#0x2C]
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S2
VSTR            S0, [SP,#0xA0+var_78]
VSTR            S1, [SP,#0xA0+var_70]
VSTR            S16, [SP,#0xA0+var_74]
LDR             R1, [R7]
LDR             R0, [R4,#0x1C]
LDR             R1, [R1,#8]
ADD             R0, R0, #0x1DC
VLDR            S0, [R1,#0x39C]
MOV             R1, #0
BL              sub_5A2B20
LDR             R0, [R8]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x330
BL              sub_5A26D0
LDR             R0, [R8]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x3D8
BL              sub_5A26D0
MOV             R0, #0
NOP
BL              sub_58F1A0
LDR             R2, [R7]
MOV             R1, R0
LDR             R0, [R8]
LDR             R2, [R2,#8]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x330
VLDR            S0, [R2,#0x388]
BL              sub_5A1FC8
MOV             R0, #0
NOP
BL              sub_58F1A0
ADD             R1, R0, #0xC
LDR             R0, [R7]
LDR             R0, [R0,#8]
VLDR            S0, [R0,#0x388]
LDR             R0, [R8]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x3D8
BL              sub_5A1FC8
MOV             R0, #0
NOP
BL              sub_58F1A0
VLDR            S0, [R0,#0x28]
LDR             R0, [R7]
LDR             R1, [R8]
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x388]
VLDR            S2, [R0,#0x384]
LDR             R0, =0x10C4E8
VADD.F32        S1, S1, S2
ADD             R0, R0, R1; loc_10C4E8
BL              sub_5A12F8
LDR             R0, [R7]
MOV             R2, #5
MOV             R1, #0
STRB            R2, [R0,#0xD14]
STRB            R1, [R0,#0xD15]
ADD             SP, SP, #0x70 ; 'p'
VPOP            {D8-D10}
POP             {R4-R8,PC}
DCD off_6CE118
DCD 0x301CB
DCD off_6CE970
DCD 0xFFE683CC
DCD sub_10D4F0
DCFS 3.1416
DCFS 0.0039062
DCFS 40.744
DCFS 0.0
DCFS 1.0
DCD 0x301C2
DCD 0x10C4E8
VLDR            S19, =40.744
VLDR            S17, [R0,#0x2AC]
VLDR            S18, [R0,#0x2B4]
VMUL.F32        S0, S1, S19
BL              sub_464318
VLDR            S1, [R4,#0x30]
VMLA.F32        S17, S0, S1
VLDR            S0, [R4,#0x24]
VMUL.F32        S0, S0, S19
BL              sub_464380
VLDR            S1, [R4,#0x30]
LDR             R0, [R4,#0x1C]
VMLA.F32        S18, S0, S1
ADD             R5, R0, #0x1DC
MOV             R0, R5
BL              sub_5A26D0
VSTR            S17, [R5,#0x1C]
VSTR            S16, [R5,#0x20]
VSTR            S18, [R5,#0x24]
VSTR            S17, [R5,#4]
VSTR            S16, [R5,#8]
VSTR            S18, [R5,#0xC]
VLDR            S0, [R4,#0x24]
VMUL.F32        S0, S0, S19
BL              sub_464318
VMOV.F32        S16, S0
VLDR            S0, [R4,#0x24]
VMUL.F32        S0, S0, S19
BL              sub_464380
VMOV.F32        S1, S0
VMOV.F32        S0, S16
BL              sub_47ED64
VLDR            S1, =0.5
MOV             R0, #8
BL              sub_4801C4
ADD             R0, R0, #5
AND             R1, R0, #0xFF
LDR             R0, [R4,#0x1C]
ADD             SP, SP, #0x70 ; 'p'
MOV             R3, #0x100
VPOP            {D8-D10}
MOV             R2, #0
POP             {R4-R8,LR}
B               sub_14C430
LDR             R0, [R4,#0x1C]; jumptable 001C5E64 case 3
BL              sub_5C5590
MOV             R1, R0
LDR             R0, =off_6CE118
LDR             R0, [R0]
LDR             R2, [R0,#8]
LDR             R2, [R2,#0x3D8]
CMP             R1, R2
BNE             loc_1C63BC
ADD             R0, R0, #0x1400
LDR             R1, [R4,#0x1C]
ADD             R0, R0, #0xE8
BL              sub_543E08
LDR             R0, [R4,#0x1C]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
MOV             R0, #0
MOV             R1, #0xB
STRB            R1, [R4]
STRB            R0, [R4,#0x42]
MOV             R2, R0
MOV             R1, R0
STR             R0, [SP,#0xA0+var_A0]
LDR             R0, =off_6CE970
LDR             R12, =0x10D4D8
MOV             R3, #0x100
LDR             R0, [R0]
ADD             R0, R0, R12; loc_10D4D8
BL              sub_4E3CA0
ADD             SP, SP, #0x70 ; 'p'
VPOP            {D8-D10}
POP             {R4-R8,PC}
LDRB            R1, [R4,#0x42]; jumptable 001C5E64 case 9
CMP             R1, #0
BNE             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDR             R1, [R0,#8]
ADD             R2, R0, #0x1000
VLDR            S16, =0.0
VLDR            S0, [R2,#0x354]
VLDR            S1, [R1,#0x394]
LDR             R6, =off_6CE118
VMUL.F32        S17, S0, S1
VCMP.F32        S17, S16
VMRS            APSR_nzcv, FPSCR
BEQ             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
ADD             R0, R0, #0x1400
LDR             R1, [R4,#0x1C]
ADD             R0, R0, #0xE8
BL              sub_543F3C
LDR             R0, [R4,#0x1C]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x11
BL              sub_14C430
LDR             R0, =dword_6CE140
LDR             R5, [R4,#0x1C]
LDR             R0, [R0,#(dword_6CE144 - 0x6CE140)]
TST             R0, #1
BNE             loc_1C64AC
LDR             R0, =dword_6CE144
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C64AC
LDR             R0, =flt_6E1AA8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S16, [R0,#(flt_6E1AAC - 0x6E1AA8)]
VSTR            S16, [R0,#(flt_6E1AB0 - 0x6E1AA8)]
LDR             R0, =dword_6CE144
NOP
VMOV.F32        S0, S17
LDR             R0, =flt_6E1AA8
BL              sub_5E0C80
ADD             R0, R5, #0x24 ; '$'
MOV             R1, SP
VLDM            R0, {S3-S5}
VADD.F32        S0, S3, S0
VADD.F32        S2, S5, S2
VADD.F32        S1, S4, S1
VSTMEA          SP, {S0-S2}
LDR             R0, [R5]
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
LDR             R0, =off_6CE970
LDR             R1, [R0]
LDR             R0, [R4,#0x1C]
ADD             R1, R1, #0x100000
ADD             R1, R1, #0xD400
VLDR            S1, [R0,#0x24]
VLDR            S0, [R1,#(loc_10D4F4 - 0x10D400)]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDR             R0, [R6]
ADD             R0, R0, #0x1400
ADD             R0, R0, #0xE8
BL              sub_544034
LDR             R0, [R4,#0x1C]
LDR             R1, [R6]
LDR             R2, [R0]
ADD             R1, R1, #0x1400
ADD             R1, R1, #0xC8
LDR             R3, [R2,#0x58]
LDR             R1, [R1,#4]
MOV             R2, #0
BLX             R3
LDR             R0, [R4,#0x1C]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #4
BL              sub_14C430
LDRB            R0, [R4,#0x42]
ADD             R0, R0, #1
B               loc_1C6D9C
LDR             R0, =off_6CE970; jumptable 001C5E64 case 10
VLDR            S1, =0.0039062
VLDR            S16, =1.0
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0x48 ; 'H'
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_5A176C
LDR             R7, =off_6CE118
MOV             R2, #0
LDR             R0, [R7]
ADD             R5, R0, #0xC00
LDR             R0, [R4,#0x1C]
ADD             R5, R5, #0x29C
LDR             R1, [R0]
LDR             R3, [R1,#0x28]
MOV             R1, SP
BLX             R3
LDR             R0, [R7]
LDR             R0, [R0,#8]
BL              sub_5D7868
VLDR            S1, [SP,#0xA0+var_9C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_1C65E8
MOV             R0, R4
BL              sub_1C5AE0
ADD             SP, SP, #0x70 ; 'p'
VPOP            {D8-D10}
POP             {R4-R8,PC}
ADD             R6, R5, #0x400
MOV             R0, R5
VLDR            S0, [R6,#0x14]
ADD             R1, SP, #0xA0+var_7C
VSUB.F32        S0, S1, S0
BL              sub_5D4A98
ADD             R1, SP, #0xA0+var_94
ADD             R0, SP, #0xA0+var_7C
BL              sub_5D48BC
VMOV.F32        S0, S16
ADD             R0, SP, #0xA0+var_7C
BL              sub_5D491C
LDR             R0, [R7]
VLDR            S17, [R4,#0x44]
VLDR            S1, [R4,#0x4C]
VLDR            S20, =40.744
LDR             R0, [R0,#8]
ADD             R0, R0, #0x400
VLDR            S2, [R0,#0x210]
VMUL.F32        S0, S2, S0
VSUB.F32        S0, S0, S17
VMLA.F32        S17, S0, S1
VLDR            S0, [R4,#0x24]
VMUL.F32        S0, S0, S20
BL              sub_464318
VMUL.F32        S18, S0, S17
VLDR            S0, [R4,#0x24]
VLDR            S19, =0.0
VMUL.F32        S0, S0, S20
BL              sub_464380
VMUL.F32        S0, S0, S17
VLDR            S2, [SP,#0xA0+var_94]
VLDR            S3, [SP,#0xA0+var_8C]
VLDR            S1, [SP,#0xA0+var_90]
VADD.F32        S2, S18, S2
ADD             R0, SP, #0xA0+var_9C
VADD.F32        S1, S19, S1
VLDM            R0, {S4-S5}
ADD             R0, SP, #0xA0+var_88
VADD.F32        S3, S0, S3
VLDR            S0, [SP,#0xA0+var_A0]
VSUB.F32        S0, S2, S0
VSUB.F32        S1, S1, S4
VSUB.F32        S2, S3, S5
VSTM            R0, {S0-S2}
LDR             R0, [R7]
LDR             R0, [R0,#8]
BL              sub_5D7888
VMOV.F32        S1, S0
VLDR            S2, [SP,#0xA0+var_9C]
VDIV.F32        S0, S2, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVLE          R0, S0
CMPLE           R0, #0x3F800000
LDR             R0, [R7]
LDR             R0, [R0,#8]
LDRGE           R0, [R0,#0x650]
STRGE           R0, [SP,#0xA0+var_84]
BGE             loc_1C66F0
ADD             R0, R0, #0x400
VLDR            S2, [R0,#0x250]
VLDR            S1, [R0,#0x254]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0xA0+var_84]
NOP
B               loc_1C670C
DCFS 0.5
DCD 0x10D4D8
DCD dword_6CE140
DCD dword_6CE144
DCD flt_6E1AA8
LDR             R0, [R4,#0x1C]
VMOV.F32        S0, S16
ADD             R1, SP, #0xA0+var_88
ADD             R0, R0, #0x1DC
BL              sub_5A367C
VLDR            S1, [R6,#0x130]
VLDR            S0, [R4,#0x24]
LDR             R1, =0x40C90FDB
VADD.F32        S0, S0, S1
VMOV            R0, S0
VSTR            S0, [R4,#0x24]
CMP             R0, R1
BLE             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
VLDR            S1, =6.2832
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x24]
ADD             SP, SP, #0x70 ; 'p'
VPOP            {D8-D10}
POP             {R4-R8,PC}
LDRB            R0, [R4,#0x42]; jumptable 001C5E64 case 4
CMP             R0, #0
BEQ             loc_1C67CC
CMP             R0, #1
BNE             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0x148
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_45B63C
LDR             R0, [R4,#0x1C]
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDRB            R0, [R4,#0x154]
CMP             R0, #0
BEQ             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDRB            R0, [R4,#0x42]
MOV             R1, #7
ADD             R0, R0, #1
B               loc_1C6CD8
LDR             R0, =off_6CE970
MOV             R2, #0
MOV             R1, #0x52 ; 'R'
LDR             R0, [R0]
BL              sub_52F9B4
MOV             R1, R0
LDR             R0, [R4,#0x1C]
LDRSH           R1, [R1,#0xC]
VLDR            S1, =0.0
ADD             R0, R0, #0x39C
VMOV            S0, R1
VSTR            S1, [R0]
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#4]
ADD             R0, R4, #0x148
BL              sub_45B620
MOV             R2, #0
LDR             R0, [R4,#0x1C]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_14C430
LDRB            R0, [R4,#0x42]
ADD             R0, R0, #1
B               loc_1C6D9C
LDR             R0, [R4,#0x1C]; jumptable 001C5E64 case 7
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDR             R8, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R2, =0x301C3
MOV             R3, #0
LDR             R12, [R8]
MOV             R1, #0x1000
SUB             R0, R12, R0
BL              sub_503808
LDR             R6, [R8]
LDR             R5, [R4,#0x1C]
BL              sub_4635D8
MOV             R7, #0
MOV             R3, R0
LDR             R1, =0x129
MOV             R2, R5
MOV             R0, R6
STR             R7, [SP,#0xA0+var_A0]
BL              sub_52AE88
LDR             R0, [R4,#0x20]
LDR             R5, [R8]
LDR             R0, [R0,#0xC]
LDR             R1, [R0]
LDR             R1, [R1,#0x40]
BLX             R1
MOV             R6, R0
BL              sub_4635D8
MOV             R3, R0
LDR             R1, =0x12A
MOV             R2, R6
MOV             R0, R5
STR             R7, [SP,#0xA0+var_A0]
BL              sub_52B72C
LDR             R0, [R4,#0x1C]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xE
BL              sub_14C430
VLDR            S16, =0.0
VLDR            S0, =1.0
LDR             R5, =off_6CE118
VSTR            S16, [SP,#0xA0+var_7C]
VSTR            S0, [SP,#0xA0+var_78]
VSTR            S16, [SP,#0xA0+var_74]
LDR             R1, [R5]
LDR             R0, [R4,#0x1C]
ADD             R2, SP, #0xA0+var_7C
LDR             R1, [R1,#8]
VLDR            S0, [R0,#0x28]
ADD             R0, R0, #0x1DC
VNEG.F32        S0, S0
VLDR            S2, [R1,#0x3A0]
VLDR            S1, [R1,#0x3A4]
MOV             R1, #1
BL              sub_5A2840
LDR             R0, [R4,#0x1C]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
ADD             R1, SP, #0xA0+var_70
BLX             R3
VLDR            S0, =264.0
MOV             R6, #1
VSTR            S0, [SP,#0xA0+var_70]
STR             R6, [SP,#0xA0+var_A0]; int
LDR             R0, [R8]
ADD             R3, SP, #0xA0+var_70
ADD             R2, SP, #0xA0+var_4C
ADD             R0, R0, #0x10C000
ADD             R1, SP, #0xA0+var_58
ADD             R0, R0, #0x214
BL              sub_5F12C4
ADD             R1, SP, #0xA0+var_58
ADD             R0, SP, #0xA0+var_88
BL              sub_480160
LDR             R0, [R4,#0x1C]
VLDR            S0, [SP,#0xA0+var_88]
VLDR            S1, [R0,#0x24]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0xA0+var_64]
VSTR            S16, [SP,#0xA0+var_5C]
VSTR            S16, [SP,#0xA0+var_60]
LDR             R0, [R5]
LDR             R2, [R4,#0x1C]
LDR             R1, [R0,#8]
ADD             R0, R2, #0x1DC
ADD             R2, SP, #0xA0+var_64
VLDR            S0, [R1,#0x3A4]
MOV             R1, #0
BL              sub_5A2B20
MOV             R0, #0xA
STRB            R0, [R4]
STRB            R7, [R4,#0x42]
LDR             R0, [R4,#0x20]
STR             R7, [SP,#0xA0+var_98]; int
STR             R7, [SP,#0xA0+var_94]; char
STR             R7, [SP,#0xA0+var_90]
STR             R7, [SP,#0xA0+var_8C]
LDR             R1, [R5]
MOV             R2, #3; int
LDR             R1, [R1,#8]
LDR             R1, [R1,#0x3AC]
STMEA           SP, {R1,R6}
LDR             R3, [R0,#0xC]; int
LDR             R0, [R8]
LDR             R1, =0x10D4D8
ADD             R1, R1, R0; loc_10D4D8 ; int
ADD             R0, SP, #0xA0+var_40; int
BL              sub_4F1E18
ADD             SP, SP, #0x70 ; 'p'
VPOP            {D8-D10}
POP             {R4-R8,PC}
LDRB            R0, [R4,#0x42]; jumptable 001C5E64 case 8
CMP             R0, #0
BEQ             loc_1C6ABC
CMP             R0, #1
BEQ             loc_1C6C48
CMP             R0, #2
BNE             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0x148
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_45B63C
LDR             R0, [R4,#0x1C]
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDRB            R0, [R4,#0x154]
CMP             R0, #0
BEQ             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
MOV             R0, #7
STRB            R0, [R4]
LDR             R0, =off_6CE118
MOV             R1, #0
LDR             R0, [R0]
ADD             R0, R0, #0x1500
ADD             R0, R0, #0x15
STRB            R1, [R0]
ADD             SP, SP, #0x70 ; 'p'
VPOP            {D8-D10}
POP             {R4-R8,PC}
DCD 0x40C90FDB
DCFS 6.2832
DCFS 0.0039062
DCFS 0.0
DCD 0x301C3
DCD 0x129
DCD 0x12A
DCFS 1.0
DCFS 264.0
LDR             R0, [R4,#0x1C]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDR             R0, [R4,#0x1C]
LDR             R7, =off_6CE970
LDR             R5, =0x10D4F4
LDR             R2, [R0]
LDR             R1, [R7]
LDR             R2, [R2,#0x20]
ADD             R1, R1, R5; loc_10D4F4
BLX             R2
LDR             R0, [R4,#0x1C]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
ADD             R1, SP, #0xA0+var_9C
BLX             R3
VLDR            S0, =-264.0
MOV             R0, #1
VSTR            S0, [SP,#0xA0+var_9C]
STR             R0, [SP,#0xA0+var_A0]
LDR             R0, [R7]
ADD             R3, SP, #0xA0+var_9C
ADD             R2, SP, #0xA0+var_78
ADD             R0, R0, #0x10C000
ADD             R1, SP, #0xA0+var_90
ADD             R0, R0, #0x214
BL              sub_5F12C4
ADD             R1, SP, #0xA0+var_90
ADD             R0, SP, #0xA0+var_84
BL              sub_480160
LDR             R0, [R4,#0x1C]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0xA0+var_84
BLX             R2
MOV             R0, #0
MOV             R2, R0
MOV             R1, R0
STR             R0, [SP,#0xA0+var_A0]
LDR             R0, [R7]
SUB             R12, R5, #0x1C
MOV             R3, #0x100
ADD             R0, R0, R12; loc_10D4D8
BL              sub_4E3CA0
LDR             R0, =off_6CE118
LDR             R1, [R7]
SUB             R6, R5, #4
LDR             R0, [R0]
LDR             R2, [R1,R6]
ADD             R1, R1, R5; loc_10D4F4
LDR             R0, [R0,#8]
VLDR            S0, [R0,#0x3A8]
ADD             R0, R2, #0x1DC
BL              sub_5A29E4
LDR             R0, [R7]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x11
LDR             R0, [R0,R6]
BL              sub_14C548
LDRB            R0, [R4,#0x42]
LDR             R2, =0x301C6
MOV             R3, #0
ADD             R0, R0, #1
STRB            R0, [R4,#0x42]
LDR             R0, [R4,#0x1C]
LDR             R12, [R7]
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503808
MOV             R6, R0
LDR             R0, [R4,#0x15C]
ADD             R5, R4, #0x15C
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x64]
LDR             R0, [R7]
MOV             R2, #0
MOV             R1, #0x52 ; 'R'
BL              sub_52F9B4
LDRSH           R0, [R0,#0xC]
LDR             R1, [R4,#0x1C]
VLDR            S1, =0.0
VMOV            S0, R0
ADD             R1, R1, #0x39C
VSTR            S1, [R1]
VCVT.F32.S32    S0, S0
VSTR            S0, [R1,#4]
ADD             SP, SP, #0x70 ; 'p'
VPOP            {D8-D10}
POP             {R4-R8,PC}
LDR             R0, [R4,#0x1C]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDR             R0, [R4,#0x160]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
MOV             R2, #0
LDR             R0, [R4,#0x1C]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_14C430
ADD             R0, R4, #0x148
NOP
BL              sub_45B620
MOV             R0, #2
NOP
B               loc_1C6D9C
LDRB            R1, [R4,#0x42]; jumptable 001C5E64 case 11
CMP             R1, #0
BEQ             loc_1C6CE0
CMP             R1, #1
LDRBEQ          R0, [R0,#0xD14]
CMPEQ           R0, #7
BNE             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDR             R0, [R4,#0x1C]
MOV             R1, #1
STRB            R1, [R0,#0xF2]
LDR             R0, [R4,#0x1C]
ADD             R0, R0, #0x1DC
BL              sub_5A26D0
MOV             R1, #0xA
MOV             R0, #0
STRB            R1, [R4]
B               loc_1C6D9C
LDR             R0, [R4,#0x1C]
LDRB            R1, [R0,#0xF2]
CMP             R1, #0
BEQ             loc_1C6D48
LDR             R1, [R0]
MOV             R2, #0
LDR             R3, [R1,#0x2C]
ADD             R1, SP, #0xA0+var_94
BLX             R3
LDR             R0, [SP,#0xA0+var_90]
LDR             R1, =0x42F00000
CMP             R0, R1
BLT             loc_1C6D48
LDR             R0, [R4,#0x1C]
MOV             R1, #0
VLDR            S1, =-1000.0
VLDR            S0, =0.0
STRB            R1, [R0,#0xF2]
LDR             R0, [R4,#0x1C]
VSTR            S1, [SP,#0xA0+var_A0]
VSTR            S0, [SP,#0xA0+var_9C]
VSTR            S0, [SP,#0xA0+var_98]
LDR             R2, [R0]
MOV             R1, SP
LDR             R2, [R2,#0x20]
BLX             R2
LDR             R0, [R4,#0x1C]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1C5E64; jumptable 001C5E64 default case, cases 5,6
LDR             R0, [R4,#0x1C]
MOV             R1, #0
VLDR            S1, =-1000.0
VLDR            S0, =0.0
STRB            R1, [R0,#0xF2]
LDR             R0, [R4,#0x1C]
VSTR            S1, [SP,#0xA0+var_A0]
VSTR            S0, [SP,#0xA0+var_9C]
VSTR            S0, [SP,#0xA0+var_98]
LDR             R2, [R0]
MOV             R1, SP
LDR             R2, [R2,#0x20]
BLX             R2
LDRB            R0, [R4,#0x42]
ADD             R0, R0, #1
STRB            R0, [R4,#0x42]
ADD             SP, SP, #0x70 ; 'p'
VPOP            {D8-D10}
POP             {R4-R8,PC}
