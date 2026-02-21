PUSH            {R4-R8,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x30
BL              sub_1D1AC0
ADD             R0, R4, #0x10C000
ADD             R0, R0, #0xA0
MOV             R2, #0x20 ; ' '
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x10C000
ADD             R0, R0, #0xC0
MOV             R2, #0x40 ; '@'
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x100000
ADD             R0, R0, #0xC100
MOV             R2, #0x100
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x100000
ADD             R0, R0, #0xC200
MOV             R2, #0x10
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x10C000
ADD             R0, R0, #0x210
MOV             R2, #4
MOV             R1, #0
BL              sub_110BE4
LDR             R0, =dword_6ED9B8
MOV             R5, #0x310000
ADD             R6, R4, #8
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0xC]
MOV             R1, R5
BLX             R3
MOV             R1, R0
MOV             R2, R5
MOV             R0, R6
BL              sub_108CA0
LDR             R0, =dword_6ED9B8
MOV             R5, #0x300000
ADD             R6, R4, #0x28 ; '('
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0xC]
MOV             R1, R5
BLX             R3
MOV             R1, R0
MOV             R2, R5
MOV             R0, R6
BL              sub_108CA0
LDR             R0, =dword_6ED9B8
MOV             R5, #0x400000
ADD             R6, R4, #0x48 ; 'H'
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0xC]
MOV             R1, R5
BLX             R3
MOV             R1, R0
MOV             R2, R5
MOV             R0, R6
BL              sub_108CA0
LDR             R0, =dword_6ED9B8
MOV             R5, #0x280000
ADD             R6, R4, #0x68 ; 'h'
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0xC]
MOV             R1, R5
BLX             R3
MOV             R1, R0
MOV             R2, R5
MOV             R0, R6
BL              sub_108CA0
LDR             R0, =dword_6ED9B8
MOV             R5, #0x200000
ADD             R6, R4, #0x88
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0xC]
MOV             R1, R5
BLX             R3
MOV             R1, R0
MOV             R2, R5
MOV             R0, R6
BL              sub_108CA0
LDR             R0, =0x121B7C
LDR             R2, =dword_6ED9B8
MOV             R1, #0x40000
ADD             R0, R0, R4
MOV             R5, R0
BL              sub_58FE08
LDR             R0, =dword_6EF03C
MOV             R6, #0x4000
ADD             R7, R4, #0xA8
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0xC]
MOV             R1, R6
BLX             R3
MOV             R1, R0
MOV             R2, R6
MOV             R0, R7
BL              sub_108CA0
LDR             R0, =dword_6ED9B8
MOV             R2, #0
MOV             R1, #0x10000
LDR             R0, [R0]
LDR             R3, [R0,#0xC]
LDR             R0, =dword_6ED9B8
BLX             R3
STR             R0, [R4,#0xC8]
LDR             R1, =dword_6ED9B8
MOV             R3, #0
MOV             R2, #0x100000
ADD             R0, R4, #0xCC
BL              sub_2A273C
MOV             R3, #0
MOV             R2, #0x100000
MOV             R1, #0x20000
ADD             R0, R4, #0xE4
BL              sub_1588E4
MOV             R3, #0
MOV             R2, #0x10000
MOV             R1, #0x30000
ADD             R0, R4, #0x108
BL              sub_1588E4
MOV             R3, #0
MOV             R2, #0x100000
MOV             R1, #0x20000
ADD             R0, R4, #0x12C
BL              sub_1588E4
MOV             R3, #0
MOV             R2, #0x10000
MOV             R1, #0x30000
ADD             R0, R4, #0x150
BL              sub_1588E4
MOV             R2, #0x30000
MOV             R1, #0x80000
MOV             R0, R5
BL              sub_590FA8
MOV             R3, #0
MOV             R2, #0x100000
MOV             R1, #0x30000
ADD             R0, R4, #0x174
BL              sub_1588E4
MOV             R3, #0
MOV             R2, #0x8000
MOV             R1, #0x20000
ADD             R0, R4, #0x198
BL              sub_1588E4
MOV             R3, #0
MOV             R2, #0x40000
MOV             R1, #0x30000
ADD             R0, R4, #0x1BC
BL              sub_1588E4
LDR             R0, =0x106394
ADD             R1, R4, #0x25000
LDR             R2, =0x80400
ADD             R0, R0, R4
ADD             R1, R1, #0x294
MOV             R6, R0
MOV             R3, #0x800
BL              sub_127F2C
LDR             R0, =0x10639C
LDR             R1, =0xA5694
MOV             R3, #0x400
ADD             R7, R4, R0
ADD             R1, R1, R4
ADD             R2, R3, #0xFD00
MOV             R0, R7
BL              sub_127F2C
LDR             R0, =0x1063A4
LDR             R1, =0xB5794
LDR             R2, =0x40800
ADD             R0, R0, R4
ADD             R1, R1, R4
MOV             R8, R0
MOV             R3, #0x200
BL              sub_127F2C
LDR             R0, =0x1063AC
LDR             R1, =0xFFF0A06C
MOV             R3, #0x100
ADD             R5, R4, R0
SUB             R1, R4, R1
MOV             R2, #0x10400
MOV             R0, R5
BL              sub_127F2C
LDR             R0, =0x1063C8
MOV             R1, R5
MOV             R2, #0x100
ADD             R0, R0, R4
MOV             R5, R0
BL              sub_367064
MOV             R2, #0x200
MOV             R1, R8
MOV             R0, R5
BL              sub_367064
MOV             R2, #0x400
MOV             R1, R7
MOV             R0, R5
BL              sub_367064
MOV             R2, #0x800
MOV             R1, R6
MOV             R0, R5
BL              sub_367064
MOV             R0, R5
BL              sub_366E28
MOV             R7, #0x40 ; '@'
MOV             R0, #0x140
STR             R7, [SP,#0x58+var_50]
STR             R0, [SP,#0x58+var_3C]
LDR             R0, =0x1210AC
ADD             R5, R4, #0x48 ; 'H'
ADD             R2, SP, #0x58+var_44
MOV             R8, #4
ADD             R0, R0, R4
STR             R7, [SP,#0x58+var_54]
STR             R7, [SP,#0x58+var_4C]
STR             R5, [SP,#0x58+var_58]
STR             R7, [SP,#0x58+var_48]
MOV             R1, SP
MOV             R6, R0
STM             R2, {R7,R8}
BL              sub_59CB18
MOV             R0, #0x10
STR             R5, [SP,#0x58+var_58]
STR             R0, [SP,#0x58+var_54]
STR             R0, [SP,#0x58+var_50]
STR             R0, [SP,#0x58+var_4C]
STR             R0, [SP,#0x58+var_44]
LDR             R0, =0x121134
MOV             R1, SP
STR             R7, [SP,#0x58+var_48]
ADD             R0, R0, R4
MOV             R5, R0
STR             R8, [SP,#0x58+var_40]
STR             R7, [SP,#0x58+var_3C]
BL              sub_59CB18
MOV             R3, #1
MOV             R2, R3
MOV             R1, #2
MOV             R0, R5
BL              sub_59BFCC
MOV             R5, R0
LDR             R0, =dword_6E1330
VLDR            S16, =0.0
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1D554C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1D554C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VLDR            S0, =-1.0
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
LDR             R2, [R0]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R5,#0x78]
STR             R1, [R5,#0x68]
STR             R2, [R5,#0x58]
LDR             R0, [R5,#0x88]
ADD             R1, SP, #0x58+var_38
ORR             R0, R0, #0x800
STR             R0, [R5,#0x88]
VSTR            S16, [SP,#0x58+var_38]
VSTR            S16, [SP,#0x58+var_34]
VSTR            S0, [SP,#0x58+var_30]
MOV             R0, R5
BL              sub_4C57D8
VLDR            S0, =1.0
VSTR            S16, [SP,#0x58+var_38]
VSTR            S0, [SP,#0x58+var_34]
ADD             R1, SP, #0x58+var_38
VSTR            S16, [SP,#0x58+var_30]
MOV             R0, R5
BL              sub_4C56EC
LDR             R7, =0x401
MOV             R0, R7
BL              sub_11C418
VMOV            S0, R0
VLDR            S17, =0.5
MOV             R0, R7
VCVT.F32.U32    S18, S0
VMUL.F32        S16, S18, S17
BL              sub_485B0C
VMOV            S0, R0
LDR             R0, =flt_658018
VMOV.F32        S1, S16
VLDR            S5, [R0]
VCVT.F32.U32    S0, S0
LDR             R0, =flt_658014
VLDR            S4, [R0]
MOV             R0, R5
VMUL.F32        S3, S0, S17
VNMUL.F32       S2, S0, S17
VNMUL.F32       S0, S18, S17
BL              sub_4C66DC
MOV             R0, R5
NOP
BL              sub_4C5864
LDR             R0, =byte_19D695
MOV             R7, #1
MOV             R1, R6
STRB            R7, [R4,R0]
ADD             R0, R4, #0x10C000
ADD             R0, R0, #0x214
MOV             R5, R0
BL              sub_58F1B8
MOV             R0, #0
NOP
BL              sub_58F1A0
MOV             R3, #0
MOV             R1, R0
MOV             R2, R3
MOV             R0, R5
BL              sub_4C638C
MOV             R1, #0
MOV             R0, R5
BL              sub_58F5A4
LDR             R0, =byte_19D694
MOV             R1, R5
STRB            R7, [R4,R0]
LDR             R0, =0x10641C
ADD             R0, R0, R4
BL              sub_1CF9FC
LDR             R0, =0x183308
MOV             R3, #0x10000
MOV             R2, #0x400
ADD             R1, R4, #8
ADD             R0, R0, R4
BL              sub_5B1498
LDR             R0, =0x183470
MOV             R3, #0x10000
MOV             R2, #0x200
ADD             R1, R4, #8
ADD             R0, R0, R4
BL              sub_5B1498
LDR             R0, =0x1210D4
ADD             R1, R4, R0
LDR             R0, =sub_183420
ADD             R0, R0, R4
BL              sub_2CD988
LDR             R1, =sub_18330C
ADD             R0, R1, #0x2CC
ADD             R1, R1, R4
ADD             R2, R1, #0x58 ; 'X'
STR             R2, [R1,#0x28]!
ADD             R0, R0, R4
STR             R0, [R1,#0x38]
LDR             R1, =0x183474
ADD             R1, R1, R4
ADD             R2, R1, #0x58 ; 'X'
STR             R2, [R1,#0x28]!
STR             R0, [R1,#0x38]
ADD             R0, R4, #0x1E0
BL              sub_4E1D2C
ADD             R0, R4, #0x24000
ADD             R0, R0, #0xED0
ADD             R1, R4, #8
MOV             R5, R0
STR             R1, [R0,#0x280]
ADD             R1, R4, #0x1E0
MOV             R0, R5
BL              sub_1CF25C
ADD             R1, R4, #0x1A0000
ADD             R1, R1, #0x90
ADD             R0, R4, #0x224
BL              sub_5943F4
LDR             R0, =0xFFE683CC
SUB             R0, R4, R0
NOP
MOV             R1, #1
MOV             R0, R4
BL              sub_529254
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDRD            R0, R1, [R1,#(off_653FF4 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8-D9}
POP             {R4-R8,PC}
