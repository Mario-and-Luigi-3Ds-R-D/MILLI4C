PUSH            {R4-R11,LR}
MOV             R5, R0
MOV             R2, #0
VPUSH           {D8-D10}
SUB             SP, SP, #0x7C
LDR             R0, [R0,#0x48]
LDR             R1, [R0]
LDR             R3, [R1,#0x28]
ADD             R1, SP, #0xB8+var_70
BLX             R3
LDRSB           R0, [R5,#0x14]
VLDR            S16, [SP,#0xB8+var_70]
BL              sub_49A430
LDR             R0, [R0,#4]
LDR             R10, =off_6CE970
LDR             R2, =0x10E0A4
STR             R0, [SP,#0xB8+var_B8]
VMOV            S17, R0
LDR             R0, [R10]
LDRSB           R1, [R5,#0x14]
LDR             R3, =0x10D4D8
ADD             R2, R2, R0; loc_10E0A4
CMN             R1, #1
STR             R2, [SP,#0xB8+var_74]
ADD             R0, R0, R3; loc_10D4D8
MOVNE           R2, #1
MOVEQ           R2, #0
STR             R0, [SP,#0xB8+var_84]
LDR             R0, =0x447
STR             R2, [SP,#0xB8+var_7C]
ADD             R1, R1, #1
MOV             R2, #0x4A ; 'J'
CMP             R1, #5; switch 5 cases
STR             R0, [SP,#0xB8+var_88]
STR             R2, [SP,#0xB8+var_8C]
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_152654; jumptable 00152654 default case, case 0
DCD def_152654; jump table for switch statement
MOV             R0, #0x48 ; 'H'; jumptable 00152654 case 4
STR             R0, [SP,#0xB8+var_8C]
LDR             R0, =0x449
B               loc_15268C
MOV             R0, #0x49 ; 'I'; jumptable 00152654 cases 1-3
STR             R0, [SP,#0xB8+var_8C]
LDR             R0, =0x448
STR             R0, [SP,#0xB8+var_88]
ADD             R0, R5, #0x100; jumptable 00152654 default case, case 0
STR             R0, [SP,#0xB8+var_58]
LDRH            R0, [R0,#0x5C]
MOV             R8, #0
CMP             R0, #0
BLS             loc_152AC8
VLDR            S18, =100.0
VLDR            S19, =0.5
VLDR            S20, =1.0
VLDR            S21, =20.0
ADD             R4, R5, R8,LSL#2
LDRB            R0, [R4,#0x5E]
CMP             R0, #0
BNE             loc_152AB0
LDRH            R1, [R4,#0x5C]
LDR             R0, [R10]
BL              sub_52F508
LDR             R7, [R0,#0x18]
MOV             R6, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x40]
MOV             R0, R6
BLX             R1
STR             R0, [SP,#0xB8+var_50]
LDR             R1, [R7]
MOV             R2, #0
MOV             R0, R7
LDR             R12, [R1,#0x28]
ADD             R1, SP, #0xB8+var_70
BLX             R12
LDRB            R0, [R6,#0x1D9]
MOV             R9, #0
AND             R0, R0, #2
MOVS            R0, R0,LSR#1
BEQ             loc_152744
LDR             R0, =unk_6E1DF4
VLDR            S0, [SP,#0xB8+var_70]
VLDR            S1, [R0,#(flt_6E1FB8 - 0x6E1DF4)]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
MOVLS           R0, #1
STRBLS          R0, [R4,#0x5E]
BLS             loc_152970
B               loc_152964
VLDR            S0, [SP,#0xB8+var_70]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_152964
VLDR            S1, [R5,#0x54]
VSUB.F32        S1, S0, S1
VDIV.F32        S0, S1, S17
VMUL.F32        S0, S0, S18
VCVT.S32.F32    S0, S0
VMOV            R2, S0
CMP             R2, #0
LDRLE           R1, [R5,#0x4C]
LDRLE           R9, [R1,#4]
BLE             loc_152800
CMP             R2, #0x64 ; 'd'
LDRGE           R1, [R5,#0x50]
LDRGE           R9, [R1,#-4]
BGE             loc_152800
LDRD            R0, R1, [R5,#0x4C]
SUB             R1, R1, R0
MOV             R1, R1,ASR#3
CMP             R1, #0
BLE             loc_1527CC
ADD             R12, R1, R1,LSR#31
MOV             R12, R12,ASR#1
ADD             R9, R0, R12,LSL#3
LDR             R11, [R9]
CMP             R11, R2
SUBLT           R1, R1, R12
SUBLT           R1, R1, #1
ADDLT           R0, R9, #8
MOVGE           R1, R12
CMP             R1, #0
BGT             loc_1527A0
LDR             R11, [R0]
CMP             R11, R2
LDREQ           R9, [R0,#4]
BEQ             loc_152800
SUB             R9, R0, #8
LDR             R12, [R0,#4]
LDM             R9, {R1,R9}
SUB             R0, R2, R1
SUB             R2, R12, R9
SUB             R1, R11, R1
MUL             R0, R0, R2
BL              sub_2FEFCC
ADD             R9, R9, R0
LDRB            R11, [R6,#0x181]
MOV             R1, #1
STRB            R1, [R6,#0x181]
MOV             R0, #0
MOV             R2, #0x7F
STRD            R0, R1, [SP,#0xB8+var_A0]; char
STR             R2, [SP,#0xB8+var_A4]; int
STR             R0, [SP,#0xB8+var_98]
VLDR            S1, [SP,#0xB8+var_7C]
VLDR            S2, [SP,#0xB8+var_74]
STR             R9, [SP,#0xB8+var_B4]; float
MOV             R12, #2
VSTR            S2, [SP,#0xB8+var_B0]
STR             R12, [SP,#0xB8+var_AC]; float
VSTR            S1, [SP,#0xB8+var_A8]
LDR             R3, [SP,#0xB8+var_84]; int
MOV             R2, R9; int
MOV             R1, R6; int
ADD             R0, SP, #0xB8+var_4C; int
STR             R12, [SP,#0xB8+var_B8]; float
BL              sub_4E248C
STRB            R11, [R6,#0x181]
LDRB            R0, [R5,#0x16]
CMP             R0, #0
BNE             loc_152900
LDRSB           R0, [R5,#0x14]
ADD             R0, R0, #1
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_152870; jumptable 00152870 default case
DCD loc_1528DC; jump table for switch statement
LDR             R0, =0xFFE683CC; jumptable 00152870 case 4
LDR             R12, [R10]
LDRH            R1, [R7,#0x10]
LDR             R2, =0x3009C
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
NOP
NOP
B               def_152870; jumptable 00152870 default case
LDR             R0, =0xFFE683CC; jumptable 00152870 cases 1-3
LDR             R12, [R10]
LDRH            R1, [R7,#0x10]
LDR             R2, =0x3009D
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
NOP
NOP
B               def_152870; jumptable 00152870 default case
LDR             R0, =0xFFE683CC; jumptable 00152870 case 0
LDR             R12, [R10]
LDRH            R1, [R7,#0x10]
LDR             R2, =0x3009E
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
MOV             R0, #1; jumptable 00152870 default case
STRB            R0, [R5,#0x16]
LDR             R11, [R10]
STR             R11, [SP,#0xB8+var_A0]
LDRB            R1, [R6,#0x1E6]
MOV             R11, R7
LDR             R7, [SP,#0xB8+var_50]
CMP             R1, #1
CMPNE           R1, #2
LDREQ           R1, [SP,#0xB8+var_88]
LDRNE           R1, [SP,#0xB8+var_8C]
STR             R1, [SP,#0xB8+var_AC]
BL              sub_4635D8
MOV             R2, #0
STR             R2, [SP,#0xB8+var_B0]
MOV             R6, #1
STMEA           SP, {R0,R6}
LDR             R0, [SP,#0xB8+var_A0]
LDR             R1, [SP,#0xB8+var_AC]
MOV             R3, R7
MOV             R2, R11
BL              sub_52B6D4
LDR             R1, [R0,#0x19C]
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
STRB            R6, [R4,#0x5E]
B               loc_152970
LDRB            R0, [R4,#0x5E]
CMP             R0, #0
BEQ             loc_152AB0
LDRH            R0, [R4,#0x5C]
LDRB            R1, [R5,#0x14]
AND             R6, R0, #0xFF
ADD             R2, R6, R6,LSL#2
ADD             R2, R5, R2,LSL#4
ADD             R4, R2, #0x1E4
MOV             R2, #0xFF
STR             R9, [R4,#8]
STRH            R0, [R4,#4]
STRB            R2, [R4,#2]
STRB            R1, [R4,#3]
UXTH            R1, R0
LDR             R0, [R10]
BL              sub_52F508
LDR             R11, [R0,#0x18]
MOV             R7, R0
ADD             R3, R4, #0x10
ADD             R0, R11, #0x24 ; '$'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
LDRB            R0, [R7,#0x1D9]
AND             R0, R0, #2
MOVS            R0, R0,LSR#1
MOV             R0, R7
BEQ             loc_152A24
BL              sub_147708
MOV             R1, #0xA
STR             R0, [R7,#0x13C]
STRB            R1, [R4]
B               loc_152AA0
DCD off_6CE970
DCD 0x10E0A4
DCD 0x10D4D8
DCD 0x447
DCD 0x449
DCD 0x448
DCFS 100.0
DCFS 0.5
DCFS 1.0
DCFS 20.0
DCD unk_6E1DF4
DCD 0x3009C
DCD 0xFFE683CC
DCD 0x3009D
DCD 0x3009E
NOP
BL              sub_5007C0
MOV             R1, #1
MOV             R0, R7
STRB            R1, [R0,#0x183]
LDRB            R0, [R7,#0x1E6]
CMP             R0, #1
BEQ             loc_152A98
CMP             R0, #2
BEQ             loc_152A98
VMOV            S0, R9
LDR             R0, =unk_6E1DF4
VLDR            S1, [R0,#(flt_6E1EC8 - 0x6E1DF4)]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S1, S0
VADD.F32        S0, S0, S19
VCVT.S32.F32    S0, S0
VMOV            R0, S0
VMOV.F32        S0, S20
SXTB            R1, R0
MOV             R0, R4
BL              sub_33A654
VMOV.F32        S0, S21
MOV             R1, #0
ADD             R0, R11, #0x1DC
BL              sub_5A2708
NOP
NOP
B               loc_152AA0
MOV             R0, #2
STRB            R0, [R4]
LDRB            R1, [R5,#0x1E0]
ADD             R0, R6, #1
CMP             R1, R0
STRBCC          R0, [R5,#0x1E0]
LDR             R0, [SP,#0xB8+var_58]
ADD             R1, R8, #1
UXTH            R8, R1
LDRH            R0, [R0,#0x5C]
CMP             R0, R8
BHI             loc_1526B8
ADD             SP, SP, #0x7C ; '|'
VPOP            {D8-D10}
POP             {R4-R11,PC}
