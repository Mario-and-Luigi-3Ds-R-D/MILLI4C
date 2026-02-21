PUSH            {R0,R1,R4-R11,LR}
MOV             R6, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C
LDR             R4, [R6,#0x14]
LDR             R0, [SP,#0x58+var_28]
ADD             R7, R0, #0x3F8
LDR             R0, [R6,#0x18]
CMP             R0, R4
BEQ             loc_281918
MOV             R11, #0
VLDR            S18, =1.0
VLDR            S17, =0.0
MOV             R10, #1
LDR             R0, [R4]
LDRB            R1, [R0,#0x419]
CMP             R1, #0
BEQ             loc_281908
ADD             R2, R0, #0x3FC
VLDR            S0, [R7,#0x30]
ADD             R3, SP, #0x58+var_48
ADD             R1, R7, #0x40 ; '@'
ADD             R0, R7, #0x34 ; '4'
BL              sub_28D19C
CMP             R0, #0
NOP
BEQ             loc_281908
LDR             R5, [R4]
LDR             R0, =0x418
LDRSB           R0, [R0,R5]
EOR             R9, R0, #1
LDR             R0, [SP,#0x58+var_28]
BL              sub_5CD8F0
LDRB            R0, [R5,#4]
VMOV.F32        S16, S0
CMP             R0, #1
MOVEQ           R1, R11
BEQ             loc_2818E0
STRB            R10, [R5,#0x418]
MOV             R1, #1
ADD             R0, R5, #0x1E4
STRB            R10, [R5,#4]
BL              sub_5A2640
ADD             R2, SP, #0x58+var_54
VMOV.F32        S2, S16
VSTM            R2, {S17-S18}
MOV             R1, #1
VSTR            S17, [SP,#0x58+var_4C]
VLDR            S0, [R5,#0x30]
LDR             R0, [R5]
VADD.F32        S0, S0, S16
VLDR            S1, [R0,#0x6C]
ADD             R0, R5, #0x1E4
VSUB.F32        S0, S0, S18
BL              sub_5A28C4
LDR             R0, [R5,#0x30]
LDR             R8, =off_6CE970
STR             R0, [R5,#0x414]
LDR             R0, =dword_6E1330
LDR             R1, [R0]
LDR             R0, [R8]
TST             R1, #1
STR             R0, [SP,#0x58+var_44]
BNE             loc_28184C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_28184C
VMOV.F32        S0, S17
LDR             R0, =flt_711FE4
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
STR             R11, [SP,#0x58+var_58]
LDR             R3, =flt_711FE4
LDR             R1, =0x16D
LDR             R0, [SP,#0x58+var_44]
ADD             R2, R5, #8
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
ADD             R3, R5, #0x58 ; 'X'
ADD             R2, R5, #8
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
LDR             R0, =off_6CE970
STRB            R11, [R5,#0x419]
MOV             R1, #0x24 ; '$'
LDR             R0, [R0]
STR             R11, [SP,#0x58+var_58]
BL              sub_52B72C
MOV             R8, R0
LDR             R0, =off_6CE970
LDR             R2, =0x300BD
MOV             R3, #0
ADD             R1, R5, #8
LDR             R12, [R0]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R8,#0x19C]
MOV             R3, #0x100
MOV             R2, #0
ORR             R1, R0, #0x100000
STR             R1, [R8,#0x19C]
MOV             R0, #3
STRB            R0, [R5,#4]
MOV             R1, #1
ADD             R0, R5, #8
BL              sub_14C430
MOV             R1, R10
LDR             R0, [R6,#0x2C]
CMP             R0, #0
CMPNE           R1, #0
BEQ             loc_281908
LDR             R2, [R0]
LDR             R1, [R4]
LDR             R3, [R2,#0x10]
MOV             R2, R9
ADD             R1, R1, #0x2C ; ','
BLX             R3
LDR             R0, [R6,#0x18]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_281754
LDR             R0, [R6,#0x20]
CMP             R0, #0
BEQ             loc_281998
ADD             R2, R0, #0x3FC
VLDR            S0, [R7,#0x30]
MOV             R3, SP
ADD             R1, R7, #0x40 ; '@'
ADD             R0, R7, #0x34 ; '4'
BL              sub_28D19C
CMP             R0, #0
NOP
BEQ             loc_281998
LDR             R0, [R6,#0x20]
ADD             R0, R0, #0x400
LDRSB           R0, [R0,#0x18]
EOR             R4, R0, #1
LDR             R0, [SP,#0x58+var_28]
BL              sub_5CD8F0
LDR             R0, [R6,#0x20]
NOP
BL              sub_282148
CMP             R0, #0
LDRNE           R3, [R6,#0x2C]
CMPNE           R3, #0
BEQ             loc_281998
LDR             R1, [R3]
LDR             R0, [R6,#0x20]
MOV             R2, R4
LDR             R12, [R1,#0x14]
ADD             R1, R0, #0x2C ; ','
MOV             R0, R3
BLX             R12
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
ADD             SP, SP, #8
POP             {R4-R11,PC}
