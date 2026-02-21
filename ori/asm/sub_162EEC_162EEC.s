PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R6, =flt_711FE4
MOV             R5, #0
VPUSH           {D8-D10}
SUB             SP, SP, #0x48
LDR             R1, [R0]
LDR             R0, =dword_6E1330
VLDR            S16, =0.0
VLDR            S18, =200.0
LDR             R1, [R1,#0xC8]
LDR             R0, [R0]
VSTR            S16, [SP,#0x70+var_70]
VLDR            S17, =1.0
VLDR            S19, =10.0
VLDR            S20, =10000.0
VSTR            S16, [SP,#0x70+var_6C]
TST             R1, #7
VSTR            S18, [SP,#0x70+var_68]
AND             R0, R0, #1
BEQ             loc_163038
CMP             R0, #0
BNE             loc_162F74
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_162F74
MOV             R0, R6
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDM             R6, {R0-R2}
ADD             R3, SP, #0x70+var_64
STM             R3, {R0-R2}
ADD             R0, SP, #0x70+var_58
ADD             R3, SP, #0x70+var_64
VSTM            R0, {S16-S17}
ADD             R0, SP, #0x70+var_4C
VSTR            S16, [SP,#0x70+var_50]
VSTR            S18, [SP,#0x70+var_40]
VSTR            S17, [SP,#0x70+var_3C]
VSTM            R0, {S19-S20}
ADD             R0, R4, #0xC
STR             R5, [SP,#0x70+var_38]
STR             R5, [SP,#0x70+var_34]
STR             R5, [SP,#0x70+var_30]
LDM             R0, {R0-R2}
STMEA           SP, {R0-R2}
ADD             R0, R4, #0x24 ; '$'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, SP, #0x70+var_58
MOV             R3, #1
VSTM            R0, {S16-S17}
MOV             R2, R3
VSTR            S16, [SP,#0x70+var_50]
LDR             R0, [R4,#0x98]
MOV             R1, R3
STR             R0, [SP,#0x70+var_4C]
LDR             R0, [R4,#0x9C]
STR             R0, [SP,#0x70+var_48]
LDR             R0, [R4,#0xA0]
STR             R0, [SP,#0x70+var_44]
LDR             R0, [R4,#0xA4]
STR             R0, [SP,#0x70+var_40]
ADD             R0, R4, #0xCC
BL              sub_59BFCC
STR             R0, [SP,#0x70+var_38]
ADD             R0, R4, #0xCC
BL              sub_59CA44
STR             R0, [SP,#0x70+var_34]
ADD             R0, R4, #0xCC
BL              sub_59CA44
STR             R0, [SP,#0x70+var_30]
MOV             R1, SP
ADD             R0, R4, #8
BL              sub_35AF88
ADD             SP, SP, #0x48 ; 'H'
VPOP            {D8-D10}
POP             {R4-R6,PC}
CMP             R0, #0
BNE             loc_16306C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_16306C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDM             R6, {R0-R2}
ADD             R3, SP, #0x70+var_64
VLDR            S0, =150.0
STM             R3, {R0-R2}
ADD             R0, SP, #0x70+var_58
MOV             R3, #1
VSTM            R0, {S16-S17}
ADD             R0, SP, #0x70+var_4C
VSTR            S16, [SP,#0x70+var_50]
VSTR            S18, [SP,#0x70+var_40]
VSTR            S17, [SP,#0x70+var_3C]
VLDR            S17, =570.0
MOV             R2, R3
VSTM            R0, {S19-S20}
MOV             R1, R3
STR             R5, [SP,#0x70+var_38]
STR             R5, [SP,#0x70+var_34]
STR             R5, [SP,#0x70+var_30]
VSTR            S16, [SP,#0x70+var_70]
VSTR            S0, [SP,#0x70+var_6C]
VSTR            S17, [SP,#0x70+var_68]
VSTR            S16, [SP,#0x70+var_64]
VSTR            S0, [SP,#0x70+var_60]
VSTR            S16, [SP,#0x70+var_5C]
VLDR            S0, =25.0
VLDR            S16, =410.0
VSTR            S0, [SP,#0x70+var_44]
VSTR            S16, [SP,#0x70+var_40]
ADD             R0, R4, #0xCC
BL              sub_59BFCC
STR             R0, [SP,#0x70+var_38]
ADD             R0, R4, #0xCC
BL              sub_59CA44
STR             R0, [SP,#0x70+var_34]
ADD             R0, R4, #0xCC
BL              sub_59CA44
STR             R0, [SP,#0x70+var_30]
MOV             R1, SP
ADD             R0, R4, #8
BL              sub_35AF88
MOV             R1, #1
ADD             R0, R4, #0x14000
VLDR            S0, =-10.0
STRB            R1, [R4,#0xBC]
VLDR            S1, =-30.0
VSTR            S19, [R0,#0x298]
VLDR            S2, =-60.0
VSTR            S0, [R0,#0x294]
VLDR            S3, =1000.0
VSTR            S1, [R0,#0x2A0]
VLDR            S4, =-1000.0
VSTR            S2, [R0,#0x29C]
VSTR            S3, [R0,#0x2B0]
ADD             R5, R4, #0x16800
VSTR            S4, [R0,#0x2AC]
ADD             R5, R5, #0x1B8
MOV             R0, R5
BL              sub_5A18EC
ADD             R4, R4, #0x16800
VSTR            S17, [R5,#0xC]
ADD             R4, R4, #0x1EC
VSTR            S17, [R5,#4]
MOV             R0, R4
BL              sub_5A18EC
VSTR            S16, [R4,#0xC]
VSTR            S16, [R4,#4]
ADD             SP, SP, #0x48 ; 'H'
VPOP            {D8-D10}
POP             {R4-R6,PC}
