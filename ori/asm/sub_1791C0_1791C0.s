PUSH            {R4-R11,LR}
MOV             R7, R0
LDR             R10, =off_6D1648
VPUSH           {D8}
SUB             SP, SP, #0x4C
LDR             R1, [R0,#4]
LDR             R0, [R10]
VLDR            S16, =0.0
LDR             R0, [R0,#0xBC]
CMP             R1, R0
LDR             R1, =dword_6E1330
MOVNE           R0, #1
MOVEQ           R0, #0
LDR             R1, [R1]
STR             R0, [SP,#0x78+var_40]
TST             R1, #1
BNE             loc_17922C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_17922C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R3, SP, #0x78+var_38
MOV             R8, #0
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R7, #0x400
LDRB            R1, [R7,#0x460]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [SP,#0x78+var_3C]
CMP             R1, #0
LDRGT           R9, =0xFFFF
ADDGT           R11, SP, #0x78+var_38
BLE             loc_1796E0
LDR             R0, [R7,#0x468]
ADD             R1, R8, R8,LSL#1
ADD             R1, R1, R8,LSL#4
ADD             R5, R0, R1,LSL#2
LDRH            R0, [R5]
CMP             R0, R9
BEQ             loc_1796D0
LDRB            R3, [R7,#0x460]
MOV             R0, #0
CMP             R3, #0
LDRGT           R1, [R7,#0x45C]
BLE             loc_1792B0
ADD             R2, R0, R0,LSL#1
ADD             R2, R1, R2,LSL#2
LDR             R2, [R2,#4]
CMP             R2, #0
BEQ             loc_1792CC
ADD             R0, R0, #1
CMP             R3, R0
BGT             loc_179290
MOV             R6, #0
LDRB            R0, [R5,#0x20]
CMP             R0, #1
LDRHEQ          R0, [R5,#8]
CMPEQ           R0, #0
BNE             loc_17933C
B               loc_1792D8
ADD             R0, R0, R0,LSL#1
ADD             R6, R1, R0,LSL#2
B               loc_1792B4
LDRSB           R1, [R5,#0x48]
LDR             R0, [R7,#4]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #6
BNE             loc_17933C
LDRB            R0, [R4,#0x75C]
AND             R0, R0, #7
CMP             R0, #1
BEQ             loc_179384
LDR             R0, =0x758
LDRH            R0, [R0,R4]
CMP             R0, R9
BEQ             loc_17933C
MOV             R2, #0
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_1796D0
STR             R11, [SP,#0x78+var_78]
LDR             R0, [R10]
LDRH            R2, [R5]
LDR             R1, [SP,#0x78+var_40]
MOV             R3, #0
LDR             R0, [R0,#0xA0]
BL              sub_2D3F94
LDRH            R1, [R5]
STRH            R1, [R6]
ADD             R1, R6, #4
STR             R0, [R6,#4]
STR             R1, [R0,#0x180]
LDR             R0, [R6,#4]
ADD             R4, R0, #4
LDR             R0, [R5,#4]
TST             R0, #1
BNE             loc_1793A0
B               loc_179394
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BNE             loc_17933C
B               loc_1796D0
LDRH            R0, [R4,#0xA]
BIC             R0, R0, #1
STRH            R0, [R4,#0xA]
LDR             R1, [R5,#4]
LDRH            R0, [R4,#0xA]
AND             R2, R1, #2
BIC             R1, R0, #2
MOV             R0, R2,LSR#1
ORR             R0, R1, R0,LSL#1
STRH            R0, [R4,#0xA]
LDR             R1, [R5,#4]
AND             R2, R1, #4
BIC             R1, R0, #4
MOV             R0, R2,LSR#2
ORR             R0, R1, R0,LSL#2
STRH            R0, [R4,#0xA]
LDRH            R0, [R5,#8]
STRH            R0, [R4,#6]
LDRSH           R1, [R5,#0xA]
MOV             R0, R4
BL              sub_123CE8
LDR             R1, [R5,#0xC]
MOV             R0, R4
BL              sub_485780
LDRH            R0, [R4,#0xA]
TST             R0, #1
BNE             loc_17942C
LDRSH           R0, [R4,#4]
CMP             R0, #0
LDR             R0, [R5,#0xC]
BLT             loc_179420
LDRSH           R1, [R4,#8]
CMP             R0, R1,LSL#8
BNE             loc_17942C
B               loc_179428
CMP             R0, #0
BNE             loc_17942C
STR             R0, [R4]
LDRB            R0, [R5,#0x20]
CMP             R0, #0
BEQ             loc_179454
CMP             R0, #1
BEQ             loc_179528
CMP             R0, #2
BEQ             loc_179578
CMP             R0, #3
BNE             loc_179650
B               loc_1795B8
MOV             R0, SP
BL              sub_234BEC
MOV             R0, SP
NOP
BL              sub_234B48
ADD             R0, R5, #0x24 ; '$'
ADD             R3, SP, #0x78+var_50
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R5, #0x30 ; '0'
ADD             R3, SP, #0x78+var_74
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R5, #0x3C ; '<'
ADD             R3, SP, #0x78+var_68
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
MOV             R1, SP
LDR             R0, [R6,#4]
BL              sub_231790
LDR             R1, [R6,#4]
LDRB            R0, [R5,#0x20]
STRB            R0, [R1,#0x1CD]
ADD             R1, R5, #0x24 ; '$'
LDR             R0, [R6,#4]
LDM             R1, {R1-R3}
ADD             R0, R0, #0x1D0
STM             R0, {R1-R3}
ADD             R1, R5, #0x30 ; '0'
LDR             R0, [R6,#4]
LDM             R1, {R1-R3}
ADD             R0, R0, #0x1DC
STM             R0, {R1-R3}
ADD             R1, R5, #0x3C ; '<'
LDR             R0, [R6,#4]
LDM             R1, {R1-R3}
ADD             R0, R0, #0x1E8
STM             R0, {R1-R3}
LDR             R1, [R6,#4]
LDRH            R0, [R5,#0x4A]
ADD             R1, R1, #0x100
STRH            R0, [R1,#0xF8]
MOV             R0, SP
NOP
NOP
NOP
B               loc_179650
DCD off_6D1648
DCD dword_6E1330
DCFS 0.0
DCD flt_711FE4
DCD 0xFFFF
DCD 0x758
LDRSB           R1, [R5,#0x48]
LDR             R0, [R7,#4]
LDRH            R3, [R5,#0x4A]
ADD             R2, R5, #0x24 ; '$'
ADD             R0, R0, R1,LSL#2
ADD             R1, R0, #0x14000
LDR             R0, [R6,#4]
LDR             R1, [R1,#0x184]
BL              sub_231870
ADD             R1, R5, #0x30 ; '0'
LDR             R0, [R6,#4]
LDM             R1, {R1-R3}
ADD             R0, R0, #0x1DC
STM             R0, {R1-R3}
ADD             R1, R5, #0x3C ; '<'
LDR             R0, [R6,#4]
LDM             R1, {R1-R3}
ADD             R0, R0, #0x1E8
STM             R0, {R1-R3}
B               loc_179650
LDR             R1, [R7,#4]
LDR             R0, [R6,#4]
ADD             R2, R5, #0x24 ; '$'
ADD             R1, R1, #8
BL              sub_231814
ADD             R0, R5, #0x30 ; '0'
LDR             R2, [R6,#4]
LDM             R0, {R0,R1,R3}
ADD             R2, R2, #0x1DC
STM             R2, {R0,R1,R3}
ADD             R0, R5, #0x3C ; '<'
LDR             R2, [R6,#4]
LDM             R0, {R0,R1,R3}
ADD             R2, R2, #0x1E8
STM             R2, {R0,R1,R3}
B               loc_179650
LDRB            R3, [R5,#0x48]
MOV             R4, #0
STRB            R3, [R6,#8]
LDRB            R0, [R5,#0x49]
CMP             R3, #0
STRB            R0, [R6,#9]
LDRB            R0, [R5,#0x4A]
STRB            R0, [R6,#0xA]
LDRB            R1, [R6,#9]
LDR             R2, [R7,#4]
MOV             R0, R7
BEQ             loc_179700
ADD             R0, R2, #0x13C00
ADD             R0, R0, #0x108
LDR             R2, [R0,#0x14]
LDRB            R1, [R2,R1]
CMP             R1, #0xFF
BEQ             loc_179628
MOV             R2, #0x67 ; 'g'
LDR             R0, [R0]
SMULBB          R1, R1, R2
ADD             R0, R0, R1,LSL#2
MOVS            R1, R0
BEQ             loc_179628
LDRB            R3, [R6,#0xA]
LDR             R0, [R6,#4]
ADD             R2, R5, #0x24 ; '$'
BL              sub_231920
ADD             R1, R5, #0x30 ; '0'
LDR             R0, [R6,#4]
LDM             R1, {R1-R3}
ADD             R0, R0, #0x1DC
STM             R0, {R1-R3}
ADD             R0, R5, #0x3C ; '<'
LDR             R2, [R6,#4]
LDM             R0, {R0,R1,R3}
ADD             R2, R2, #0x1E8
STM             R2, {R0,R1,R3}
MOV             R4, #0
LDR             R0, [R7,#0x458]
STR             R6, [R0,R8,LSL#2]
ADD             R0, R5, R4
LDRSB           R0, [R0,#0x10]
CMN             R0, #1
BEQ             loc_179688
LDR             R1, [R7,#4]
ADD             R0, R1, R0,LSL#2
ADD             R0, R0, #0x14000
AND             R1, R4, #0xFF
LDR             R2, [R0,#0x184]
LDR             R0, [R6,#4]
BL              sub_231B94
ADD             R4, R4, #1
CMP             R4, #8
BLT             loc_17965C
MOV             R4, #0
ADD             R0, R5, R4
LDRSB           R0, [R0,#0x18]
CMN             R0, #1
BEQ             loc_1796C4
LDR             R1, [R7,#4]
ADD             R0, R1, R0,LSL#2
ADD             R0, R0, #0x14000
AND             R1, R4, #0xFF
LDR             R2, [R0,#0x184]
LDR             R0, [R6,#4]
BL              sub_230F0C
ADD             R4, R4, #1
CMP             R4, #8
BLT             loc_179698
LDRB            R0, [R7,#0x460]
ADD             R8, R8, #1
CMP             R8, R0
BLT             loc_179260
LDR             R0, [R7,#0x468]
BL              sub_2FF5D4
LDR             R1, [SP,#0x78+var_3C]
MOV             R0, #0
STR             R0, [R1]
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R12, [R0]
SXTB            R3, R1
MOV             R1, R4
LDR             R12, [R12,#0x9C]
BLX             R12
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
B               loc_179610
