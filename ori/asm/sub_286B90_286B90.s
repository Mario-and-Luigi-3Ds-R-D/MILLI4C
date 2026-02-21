PUSH            {R4-R6,LR}
MOV             R1, #0
MOV             R4, R0
VPUSH           {D8-D13}
ADD             LR, R4, #0x28 ; '('
MOV             R3, #0x14
MOV             R12, #2
MOV             R5, #0x28 ; '('
MOV             R6, #0xA
MOV             R2, #3
STR             R1, [R0]
STR             R1, [R0,#4]
VLDR            S6, =300.0
STR             R1, [R0,#8]
VLDR            S7, =200.0
VSTR            S6, [R4,#0x24]
VLDR            S22, =0.0
VLDR            S3, =250.0
VLDR            S4, =10.0
VMOV.F32        S0, S22
VSTM            LR, {S6-S7}
ADD             LR, R4, #0x3C ; '<'
VSTR            S7, [R4,#0x30]
STR             R3, [R4,#0x38]
STR             R12, [R4,#0x34]
STM             LR, {R3,R5}
ADD             R0, R4, #0x24 ; '$'
VSTR            S3, [R4,#0x44]
VLDR            S10, =0.3
STR             R6, [R4,#0x48]
VSTR            S4, [R4,#0x4C]
VLDR            S11, =3.0
VSTR            S10, [R4,#0x50]
VSTR            S0, [R4,#0x54]
VSTR            S11, [R4,#0x58]
VSTR            S0, [R4,#0x5C]
VLDR            S12, =6.0
VSTR            S4, [R4,#0x60]
VSTR            S3, [R0,#0x40]
VLDR            S13, =-1650.0
VSTR            S12, [R0,#0x44]
VLDR            S1, =20.0
VSTR            S4, [R0,#0x48]
VSTR            S13, [R0,#0x4C]
VLDR            S8, =40.0
VSTR            S1, [R0,#0x50]
VLDR            S5, =60.0
VSTR            S4, [R0,#0x5C]
VSTR            S8, [R0,#0x60]
VSTR            S5, [R0,#0x64]
VSTR            S3, [R0,#0x74]
VSTR            S8, [R0,#0x78]
VSTR            S5, [R0,#0x7C]
VLDR            S21, =140.0
VSTR            S1, [R0,#0x80]
VSTR            S5, [R0,#0x84]
VLDR            S9, =-90.0
VSTR            S21, [R0,#0x88]
VSTR            S0, [R0,#0x8C]
VLDR            S14, =22.0
VLDR            S15, =-1050.0
VSTR            S9, [R0,#0x90]
ADD             R3, R0, #0x54 ; 'T'
VLDR            S2, =30.0
VLDR            S16, =80.0
VLDR            S17, =120.0
VLDR            S18, =150.0
VLDR            S19, =240.0
VLDR            S20, =500.0
VLDR            S23, =5.0
VLDR            S24, =33.0
VLDR            S25, =50.0
VLDR            S26, =350.0
VSTM            R3, {S14-S15}
ADD             R3, R0, #0x68 ; 'h'
VSTM            R3, {S16-S18}
ADD             R3, R0, #0x94
VSTM            R3, {S19-S20}
ADD             R3, R0, #0xC8
STR             R2, [R0,#0x9C]
VSTR            S2, [R0,#0xA0]
VSTR            S2, [R0,#0xA4]
VSTR            S1, [R0,#0xA8]
VSTR            S1, [R0,#0xAC]
VSTR            S0, [R0,#0xB0]
VSTR            S3, [R0,#0xC0]
VSTR            S26, [R0,#0xC4]
VSTM            R3, {S0-S1}
ADD             R3, R0, #0xB4
VSTM            R3, {S23-S25}
MOV             R3, #0
STR             R2, [R0,#0xD0]
LDR             R0, =off_6CE970
STRB            R1, [R4,#0xF8]
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x28 ; '('
BL              sub_10A358
CMP             R0, #0
BEQ             loc_286D44
LDR             R1, =sub_622A48
ADD             R0, R0, #8
MOV             R3, #4
MOV             R2, #8
BLX             sub_1002F4
SUB             R0, R0, #8
VSTR            S22, [R0,#4]
VSTR            S22, [R0]
LDR             R5, =dword_6E1330
STR             R0, [R4]
LDR             R0, [R5]
TST             R0, #1
BNE             loc_286D84
MOV             R0, R5
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_286D84
LDR             R0, =flt_711FE4
VSTR            S22, [R0]
VSTR            S22, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S22, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R5
NOP
LDR             R6, =flt_711FE4
ADD             R3, R4, #0xC
LDM             R6, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, [R5]
TST             R0, #1
BNE             loc_286DCC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_286DCC
MOV             R0, R6
VSTR            S22, [R0]
VSTR            S22, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S22, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDM             R6, {R0-R2}
ADD             R3, R4, #0x18
STM             R3, {R0-R2}
MOV             R0, R4
VPOP            {D8-D13}
POP             {R4-R6,PC}
