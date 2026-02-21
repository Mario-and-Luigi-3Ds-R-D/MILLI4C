PUSH            {R4-R10,LR}
MOV             R4, R0
LDR             R0, =dword_6E1330
VPUSH           {D8-D15}
SUB             SP, SP, #0x48
ADD             R1, SP, #0xA8+var_A4
VLDR            S16, =0.0
VLDR            S17, =200.0
VSTR            S16, [SP,#0xA8+var_A8]
VSTM            R1, {S16-S17}
LDR             R0, [R0]
TST             R0, #1
BNE             loc_18B44C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_18B44C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R3, SP, #0xA8+var_9C
VLDR            S18, =1.0
VLDR            S19, =10.0
LDM             R2, {R0-R2}
VLDR            S0, =10000.0
STM             R3, {R0-R2}
ADD             R1, SP, #0xA8+var_78
VSTR            S16, [SP,#0xA8+var_90]
VSTR            S18, [SP,#0xA8+var_8C]
VSTR            S16, [SP,#0xA8+var_88]
VSTR            S19, [SP,#0xA8+var_84]
VSTR            S0, [SP,#0xA8+var_80]
MOV             R0, #0
VSTM            R1, {S17-S18}
MOV             R3, #1
STR             R0, [SP,#0xA8+var_70]
STR             R0, [SP,#0xA8+var_6C]
STR             R0, [SP,#0xA8+var_68]
MOV             R2, R3
MOV             R1, R3
ADD             R0, R4, #0xCC
BL              sub_59BFCC
STR             R0, [SP,#0xA8+var_70]
ADD             R0, R4, #0xCC
BL              sub_59CA44
STR             R0, [SP,#0xA8+var_6C]
ADD             R0, R4, #0xCC
BL              sub_59CA44
STR             R0, [SP,#0xA8+var_68]
LDR             R0, =off_6D1648
ADD             R5, R4, #0x14000
LDR             R0, [R0]
LDR             R0, [R0,#0xC8]
TST             R0, #7
BEQ             loc_18B5B4
ADD             R0, R4, #0x60 ; '`'
ADD             R9, R4, #0x6C ; 'l'
VLDM            R0, {S19-S21}
ADD             R0, R4, #0xB0
LDM             R9, {R9,R10}
ADD             R3, SP, #0xA8+var_9C
LDR             R8, [R4,#0x74]
LDR             R6, [R4,#0xB8]
LDRB            R7, [R4,#0xBC]
VLDR            S16, [R4,#0x78]
VLDR            S31, [R4,#0xAC]
VLDM            R0, {S17-S18}
ADD             R0, R4, #0x3C ; '<'
VLDM            R0, {S22-S30}
ADD             R0, R4, #0xC
LDM             R0, {R0-R2}
STMEA           SP, {R0-R2}
ADD             R0, R4, #0x24 ; '$'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R4, #0x60 ; '`'
ADD             R3, SP, #0xA8+var_90
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
MOV             R1, SP
LDR             R0, [R4,#0x98]
STR             R0, [SP,#0xA8+var_84]
LDR             R0, [R4,#0x9C]
STR             R0, [SP,#0xA8+var_80]
LDR             R0, [R4,#0xA0]
STR             R0, [SP,#0xA8+var_7C]
LDR             R0, [R4,#0xA4]
STR             R0, [SP,#0xA8+var_78]
ADD             R0, R4, #8
BL              sub_35AF88
VSTR            S31, [R4,#0xAC]
ADD             R0, R4, #0xB0
VSTM            R0, {S17-S18}
ADD             R0, R4, #0x3C ; '<'
VSTM            R0, {S22-S30}
STR             R6, [R4,#0xB8]
STRB            R7, [R4,#0xBC]
LDRB            R0, [R5,#0x28F]
CMP             R0, #2
BNE             loc_18B5A8
ADD             R0, R4, #0x60 ; '`'
VSTM            R0, {S19-S21}
ADD             R0, R4, #0x6C ; 'l'
STR             R8, [R4,#0x74]
STM             R0, {R9,R10}
VSTR            S16, [R4,#0x78]
ADD             SP, SP, #0x48 ; 'H'
VPOP            {D8-D15}
POP             {R4-R10,PC}
VLDR            S2, =40.0
VSTR            S16, [SP,#0xA8+var_A8]
VSTR            S16, [SP,#0xA8+var_9C]
VSTR            S2, [SP,#0xA8+var_98]
VSTR            S16, [SP,#0xA8+var_94]
VSTR            S16, [SP,#0xA8+var_90]
VSTR            S18, [SP,#0xA8+var_8C]
VLDR            S0, =286.0
VLDR            S1, =350.0
VSTR            S16, [SP,#0xA8+var_88]
ADD             R2, SP, #0xA8+var_A4
VLDR            S3, =90.0
VLDR            S4, =3500.0
VLDR            S5, =30.0
VLDR            S6, =300.0
MOV             R1, SP
VSTM            R2, {S0-S1}
ADD             R2, SP, #0xA8+var_84
ADD             R0, R4, #8
VSTM            R2, {S3-S6}
BL              sub_35AF88
VLDR            S2, =5.0
VLDR            S3, =-5.0
VLDR            S4, =15.0
VSTR            S2, [R5,#0x298]
VSTR            S3, [R5,#0x294]
VLDR            S0, =-20.0
VSTR            S4, [R5,#0x2B0]
VLDR            S1, =-40.0
VSTR            S19, [R5,#0x2AC]
VSTR            S0, [R5,#0x2A0]
VSTR            S1, [R5,#0x29C]
VSTR            S0, [R5,#0x2A8]
VSTR            S1, [R5,#0x2A4]
ADD             SP, SP, #0x48 ; 'H'
VPOP            {D8-D15}
POP             {R4-R10,PC}
