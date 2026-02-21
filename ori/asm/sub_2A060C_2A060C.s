PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R6, #0
MOV             R0, #0x2F ; '/'
VPUSH           {D8}
MOV             R1, #0x30 ; '0'
STR             R6, [R4]
STR             R6, [R4,#4]
STR             R6, [R4,#8]
STR             R6, [R4,#0xC]
STR             R6, [R4,#0x10]
STRB            R6, [R4,#0x14]
STRB            R0, [R4,#0x15]
STRB            R1, [R4,#0x16]
STRB            R0, [R4,#0x17]
STRB            R1, [R4,#0x18]
MOV             R2, #5
STRB            R6, [R4,#0x19]
MOV             R7, #1
STRB            R2, [R4,#0x1A]
STRB            R7, [R4,#0x1B]
MOV             R3, #0x400
VLDR            S1, =20.0
STRB            R7, [R4,#0x1C]
VLDR            S17, =4.0
STR             R3, [R4,#0x20]
VLDR            S0, =8.0
VSTR            S1, [R4,#0x24]
VSTR            S17, [R4,#0x28]
VLDR            S2, =40.0
VLDR            S3, =9.0
VLDR            S4, =12.0
VSTR            S0, [R4,#0x2C]
ADD             R1, R4, #0x30 ; '0'
VLDR            S1, =60.0
VLDR            S16, =0.0
ADD             R0, R4, #0x64 ; 'd'
VSTM            R1, {S2-S4}
VLDR            S2, =-80.0
LDR             R2, =off_6CFA08
VSTR            S2, [R4,#0x3C]
VSTR            S1, [R4,#0x40]
VLDR            S1, =-20.0
VSTR            S1, [R4,#0x44]
VSTR            S16, [R4,#0x48]
VSTR            S0, [R4,#0x4C]
VLDR            S0, =150.0
VSTR            S16, [R4,#0x50]
VSTR            S0, [R4,#0x54]
VLDR            S0, =130.0
VSTR            S16, [R4,#0x58]
VSTR            S0, [R4,#0x5C]
VSTR            S16, [R4,#0x60]
VLDR            S0, =-40.0
VLDR            S1, =-12.0
VSTM            R0, {S0-S1}
ADD             R0, R4, #0x6C ; 'l'
VLDR            S0, =-15.0
VLDR            S1, =66.0
VSTM            R0, {S0-S1}
ADD             R0, R4, #0x74 ; 't'
VLDR            S1, =-26.0
VSTM            R0, {S0-S1}
ADD             R0, R4, #0x7C ; '|'
VLDR            S0, =-110.0
VLDR            S1, =70.0
VSTM            R0, {S0-S1}
ADD             R0, R4, #0x84
VLDR            S0, =80.0
VLDR            S1, =-30.0
VSTM            R0, {S0-S1}
VLDR            S0, =-100.0
VSTR            S0, [R4,#0x8C]
VLDR            S0, =90.0
VSTR            S0, [R4,#0x90]
LDR             R0, [R2]; dword_6581A8
LDR             R0, [R0]
STR             R0, [R4,#0x94]
STR             R0, [R4,#0x98]
LDR             R0, [R2]; dword_6581A8
LDR             R0, [R0]
STR             R0, [R4,#0x9C]
STR             R0, [R4,#0xA0]
LDR             R0, =dword_6E1314
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2A0790
LDR             R0, =dword_6E1314
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_2A0790
LDR             R0, =flt_6E1318
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E131C - 0x6E1318)]
LDR             R0, =dword_6E1314
NOP
LDR             R1, =flt_6E1318
ADD             R2, R4, #0xA4
ADD             R5, R4, #0xBC
LDRD            R0, R1, [R1]
STM             R2, {R0,R1,R6}
LDR             R0, =dword_6E1330
STRB            R6, [R4,#0xB0]
STRB            R6, [R4,#0xB4]
STRB            R6, [R4,#0xB5]
STR             R6, [R4,#0xB8]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2A07F0
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2A07F0
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
MOV             R2, #0xFF000000
REV             R2, R2
LDR             R1, [R0]
STR             R1, [R5]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [R5,#4]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R1, #0xFFFFFF00
STR             R0, [R5,#8]
STRB            R6, [R4,#0xC8]
REV             R1, R1
STRB            R7, [R4,#0xC9]
VSTR            S17, [R4,#0xCC]
STR             R1, [R5,#0x14]
STR             R2, [R5,#0x18]
REV             R2, R6
SUB             R0, R5, #0xBC
STR             R2, [R5,#0x1C]
LDR             R2, =0x66666600
REV             R2, R2
STR             R2, [R5,#0x20]
REV             R2, R6
STR             R2, [R5,#0x24]
MOV             R2, #0xFFFFFF00
REV             R2, R2
STR             R2, [R5,#0x28]
LDR             R2, =0x88888800
REV             R2, R2
STR             R2, [R0,#0xE8]
VPOP            {D8}
POP             {R4-R8,PC}
