PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R7, R1
MOV             R9, #0
MOV             R6, R2
LDR             R10, =off_6CE970
MOV             R3, R9
VPUSH           {D8}
SUB             SP, SP, #0x54
LDR             R0, [R0,#8]
LDR             R12, [R10]
ADD             R2, R2, #0x18
MOV             R1, #0x16
LDR             R5, [R0,#0x18]
MOV             R0, R12
STR             R9, [SP,#0x80+var_80]; int
BL              sub_52AEA8
LDRB            R0, [R7,#0x4B0]
VLDR            S16, =0.0
CMP             R0, #0
BEQ             loc_21A698
ADD             R1, R6, #0x18
ADD             R0, SP, #0x80+var_44
BL              sub_480160
BL              sub_48004C
CMP             R0, #0
LDR             R0, =dword_6E26C4
ADD             R8, SP, #0x80+var_44
MOV             R11, #1
VLDRNE          S17, [R0,#(flt_6E26E8 - 0x6E26C4)]
VLDREQ          S17, [R0,#(flt_6E26E0 - 0x6E26C4)]
LDR             R0, [R4,#8]
LDRB            R0, [R0,#0x48D]
CMP             R0, #0
MOV             R0, R7
BEQ             loc_21A5B8
BL              sub_5ED958
LDRB            R1, [R6,#0x44]
ADD             R2, SP, #0x80+var_70
STR             R8, [SP,#0x80+var_74]; char
STR             R9, [SP,#0x80+var_78]; int
STM             R2, {R1,R9}
MOV             R3, R0; int
VSTR            S17, [SP,#0x80+var_80]
STR             R11, [SP,#0x80+var_7C]; float
LDR             R1, [R4,#8]; int
MOV             R2, #5; int
ADD             R0, SP, #0x80+var_38; int
BL              sub_4F1B20
B               loc_21A5F0
NOP
BL              sub_5ED958
LDRB            R1, [R6,#0x44]
ADD             R2, SP, #0x80+var_70
STR             R8, [SP,#0x80+var_74]; char
STR             R9, [SP,#0x80+var_78]; int
STM             R2, {R1,R9}
MOV             R3, R0; int
VSTR            S17, [SP,#0x80+var_80]
STR             R11, [SP,#0x80+var_7C]; float
LDR             R1, [R4,#8]; int
MOV             R2, #5; int
ADD             R0, SP, #0x80+var_38; int
BL              sub_4F1E18
LDRH            R0, [R7,#0x10]
BL              sub_47FF54
CMP             R0, #0
NOP
BEQ             loc_21A698
MOV             R0, R7
BL              sub_5ED958
CMP             R0, #0
NOP
BEQ             loc_21A698
LDR             R8, [R10]
MOV             R0, R7
BL              sub_5ED958
LDR             R1, [R0]
LDR             R1, [R1,#0x40]
BLX             R1
MOV             R7, R0
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_21A670
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_21A670
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
MOV             R2, R7
MOV             R1, #0x17
MOV             R0, R8
STR             R9, [SP,#0x80+var_80]
BL              sub_52B72C
MOV             R1, R0
LDR             R0, [R0,#0x19C]
ORR             R0, R0, #0x100000
STR             R0, [R1,#0x19C]
LDR             R0, [R4,#8]
LDR             R12, [R10]
LDR             R2, =0x300A5
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503808
ADD             R1, R6, #0x24 ; '$'
ADD             R0, SP, #0x80+var_5C
BL              sub_480160
LDR             R0, [R5]
MOV             R2, #0
ADD             R1, SP, #0x80+var_68
LDR             R3, [R0,#0x28]
MOV             R0, R5
BLX             R3
LDR             R0, [SP,#0x80+var_58]
ADD             R1, SP, #0x80+var_68
STR             R0, [SP,#0x80+var_64]
LDR             R0, [R5]
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
ADD             R1, R5, #0x1B0
LDRSB           R0, [R1,#5]
CMP             R0, #0
LDRSBLT         R2, [R1,#4]
BGE             loc_21A71C
ADD             R0, R0, R2
SXTB            R0, R0
CMP             R0, #0
BLT             loc_21A70C
LDRSB           R2, [R1,#4]
CMP             R2, R0
BGT             loc_21A738
SUB             R0, R0, R2
SXTB            R0, R0
CMP             R2, R0
BLE             loc_21A728
LDR             R1, [R1]
ADD             R0, R0, R0,LSL#1
ADD             R6, SP, #0x80+var_68
ADD             R0, R1, R0,LSL#2
LDM             R6, {R1-R3}
STM             R0, {R1-R3}
ADD             R1, R5, #0x1B0
LDRB            R0, [R5,#0x1B5]
SUB             R0, R0, #1
SXTB            R0, R0
CMP             R0, #0
LDRSBLT         R2, [R1,#4]
BGE             loc_21A77C
ADD             R0, R0, R2
SXTB            R0, R0
CMP             R0, #0
BLT             loc_21A76C
LDRSB           R2, [R1,#4]
CMP             R2, R0
BGT             loc_21A798
SUB             R0, R0, R2
SXTB            R0, R0
CMP             R2, R0
BLE             loc_21A788
LDR             R1, [R1]
ADD             R0, R0, R0,LSL#1
ADD             R6, SP, #0x80+var_68
ADD             R0, R1, R0,LSL#2
LDM             R6, {R1-R3}
VLDR            S0, =1.0
STM             R0, {R1-R3}
ADD             R2, SP, #0x80+var_50
VSTR            S16, [SP,#0x80+var_50]
VSTR            S0, [SP,#0x80+var_4C]
VSTR            S16, [SP,#0x80+var_48]
LDR             R0, [R4,#0x14]
VLDR            S0, [R5,#0x28]
MOV             R1, #1
ADD             R0, R0, #0x10
VNEG.F32        S0, S0
VLDM            R0, {S1-S2}
ADD             R0, R5, #0x1DC
BL              sub_5A2954
LDRB            R0, [R4,#0x19]
MOV             R3, #0x100
MOV             R2, #1
ADD             R0, R0, #4
AND             R1, R0, #0xFF
MOV             R0, R5
BL              sub_14C430
LDRB            R0, [R4,#0x1A]
CMP             R0, #5
BNE             loc_21A824
LDR             R1, =sub_21AC1C
MOV             R3, #0
MOV             R2, #1
MOV             R0, R5
STR             R9, [SP,#0x80+var_80]
BL              sub_501E58
LDR             R1, =off_64E794
LDRD            R0, R1, [R1,#(off_64E7B4 - 0x64E794)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0x54 ; 'T'
VPOP            {D8}
POP             {R4-R11,PC}
