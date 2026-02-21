PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R7, R1
VPUSH           {D8}
SUB             SP, SP, #0x1600
LDR             R0, [R0,#0xC4]
MOV             R9, SP
MOV             R8, R9
LDR             R4, [R0,#4]
LDR             R0, [R4]
LDR             R1, [R0,#0x188]
MOV             R0, R4
BLX             R1
MOV             R5, R0
LDR             R0, [R4]
LDR             R1, [R0,#0x18C]
MOV             R0, R4
BLX             R1
LDR             R1, =0x2684
ADD             R3, R5, #0x2400
ADD             R3, R3, #0x36C
LDRH            R2, [R1,R5]
ADD             R1, R1, #0x10
STRH            R2, [SP,#0x1628+var_1626]
LDRB            R2, [R1,R5]
SUB             R1, R1, #8
STRB            R2, [SP,#0x1628+var_1622]
LDR             R1, [R1,R5]
MOV             R2, #0x10
ADD             R5, R5, #0x2700
CMP             R1, #0
LDRSHNE         R1, [R1,#0x30]
MOVEQ           R1, #0xFFFFFFFF
ADD             R5, R5, #0x6D ; 'm'
STRH            R1, [SP,#0x1628+var_1628]
ADD             R1, R0, #0x2600
ADD             R0, R0, #0x2600
LDRH            R12, [R1,#0x74]
ADD             R0, R0, #0x76 ; 'v'
MOV             R1, #0x20 ; ' '
STRH            R12, [SP,#0x1628+var_1624]
LDRB            R0, [R0]
STRB            R0, [SP,#0x1628+var_1621]
LDRB            R0, [R3]
LDRB            R3, [SP,#0x1628+var_1620]
AND             R0, R2, R0,LSL#4
BIC             R2, R3, #0x10
ORR             R0, R0, R2
STRB            R0, [SP,#0x1628+var_1620]
LDRB            R2, [R5]
BIC             R0, R0, #0x20 ; ' '
AND             R1, R1, R2,LSL#5
ORR             R0, R0, R1
STRB            R0, [SP,#0x1628+var_1620]
LDR             R0, [R4]
LDR             R1, [R0,#0x188]
MOV             R0, R4
BLX             R1
LDR             R1, [R0]
LDR             R1, [R1,#0x468]
BLX             R1
LDRB            R1, [SP,#0x1628+var_1620]
MOV             R2, #0xE
AND             R0, R2, R0,LSL#1
BIC             R1, R1, #0xE
ORR             R0, R0, R1
STRB            R0, [SP,#0x1628+var_1620]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x4000
ADD             R1, R1, #0xF10
LDR             R1, [R1]
CMP             R1, #0
BEQ             loc_1E3D80
ORR             R0, R0, #1
STRB            R0, [SP,#0x1628+var_1620]
MOV             R1, R4
ADD             R0, R8, #0xC
BL              sub_37CAEC
B               def_1E3D94; jumptable 001E3D94 default case
BIC             R0, R0, #1
STRB            R0, [SP,#0x1628+var_1620]
MOV             R1, R0,LSL#28
MOV             R1, R1,LSR#29
CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1E3D94; jumptable 001E3D94 default case
DCD loc_1E3DB0; jump table for switch statement
LDR             R0, [R4]; jumptable 001E3D94 case 0
LDR             R1, [R0,#0x188]
MOV             R0, R4
BLX             R1
MOV             R5, R0
LDR             R0, [R4]
LDR             R1, [R0,#0x18C]
MOV             R0, R4
BLX             R1
ADD             R1, R5, #0x2400
ADD             R0, R0, #0x2400
LDR             R2, [R1,#0x2D4]
STR             R2, [SP,#0x1628+var_161C]
LDR             R1, [R1,#0x2D8]
STR             R1, [SP,#0x1628+var_1618]
LDR             R1, [R0,#0x278]
STR             R1, [SP,#0x1628+var_1614]
LDR             R0, [R0,#0x27C]
STR             R0, [SP,#0x1628+var_1610]
B               def_1E3D94; jumptable 001E3D94 default case
LDR             R1, [R4]; jumptable 001E3D94 case 1
MOV             R0, R4
LDR             R1, [R1,#0x188]
BLX             R1
ADD             R0, R0, #0x2400
ADD             R0, R0, #0x298
LDRB            R0, [R0]
STRB            R0, [SP,#0x1628+var_161C]
B               def_1E3D94; jumptable 001E3D94 default case
LDR             R1, [R4]; jumptable 001E3D94 cases 2,3
MOV             R0, R4
LDR             R1, [R1,#0x188]
BLX             R1
ADD             R1, R0, #0x2400
ADD             R1, R1, #0x368
ADD             R12, R0, #0x2400
LDR             R4, [R1]
MOV             R3, R0
ADD             R0, R0, #0x2000
STR             R4, [SP,#0x1628+var_161C]
LDR             R4, [R12,#0x298]
ADD             R0, R0, #0x6A0
ADD             R1, R3, #0x26C0
STR             R4, [SP,#0x1628+var_1618]
LDR             R12, [R12,#0x29C]
ADD             R2, R3, #0x2600
ADD             R2, R2, #0xAB
STR             R12, [SP,#0x1628+var_1614]
LDRB            R0, [R0]
ADD             R3, R3, #0x2600
ADD             R3, R3, #0xA9
STRB            R0, [SP,#0x1628+var_1610]
LDRB            R0, [R1]
STRB            R0, [SP,#0x1628+var_1610+1]
LDRB            R0, [R2]
STRB            R0, [SP,#0x1628+var_1610+2]
LDRB            R0, [R3]
STRB            R0, [SP,#0x1628+var_1610+3]
B               def_1E3D94; jumptable 001E3D94 default case
LDR             R1, [R4]; jumptable 001E3D94 case 4
MOV             R0, R4
LDR             R1, [R1,#0x188]
BLX             R1
LDR             R2, =0x2698
LDRB            R4, [SP,#0x1628+var_161C]
MOV             R3, #2
ADD             R1, R2, #0xD7
LDRB            R5, [R2,R0]
BIC             R4, R4, #1
SUB             R12, R1, #0xD6
AND             R5, R5, #1
ORR             R4, R4, R5
SUB             R2, R1, #0xD3
STRB            R4, [SP,#0x1628+var_161C]
LDRB            R1, [R1,R0]
BIC             R4, R4, #2
AND             R1, R3, R1,LSL#1
ORR             R1, R1, R4
STRB            R1, [SP,#0x1628+var_161C]
LDRB            R1, [R12,R0]
STRB            R1, [SP,#0x1628+var_161C+1]
LDR             R1, [R2,R0]
ADD             R0, R0, #0x2400
ADD             R0, R0, #0x2A4
CMP             R1, #0
LDRSHNE         R1, [R1,#0x30]
MOVEQ           R1, #0xFFFFFFFF
STRH            R1, [SP,#0x1628+var_161C+2]
LDR             R0, [R0]
CMP             R0, #0
LDRBNE          R0, [R0,#0xDC]
MOVEQ           R0, #0xFFFFFFFF
STRB            R0, [SP,#0x1628+var_1618]
LDR             R4, [R6,#0xBC]; jumptable 001E3D94 default case
ADD             R8, R8, #0x20 ; ' '
ADD             R0, R4, #0x16800
ADD             R0, R0, #0x1B8
MOV             R5, R0
BL              sub_5F1964
CMP             R0, #0
VLDR            S16, =0.0
LDRNE           R0, [R5,#0x10]
ADD             R5, R4, #0x16800
VMOVEQ.F32      S0, S16
VLDR            S1, [R5,#0x1BC]
VLDRNE          S0, [R0,#4]
ADD             R0, SP, #0x1628+var_228
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x190]
ADD             R0, R4, #0x16800
ADD             R0, R0, #0x1EC
MOV             R10, R0
BL              sub_5F1964
CMP             R0, #0
LDRNE           R0, [R10,#0x10]
VMOVEQ.F32      S0, S16
VLDR            S1, [R5,#0x1F0]
ADD             R1, SP, #0x1628+var_228
VLDRNE          S0, [R0,#4]
LDR             R0, =0x16AE8
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#0x194]
LDRB            R0, [R0,R4]
ADD             R1, SP, #0x1628+var_628
CMP             R0, #0
ADD             R0, SP, #0x1628+var_628
LDRB            R0, [R0,#0x5E0]
ORRNE           R0, R0, #2
BICEQ           R0, R0, #2
STRB            R0, [R1,#0x5E0]
ADD             R0, R4, #0x16800
ADD             R0, R0, #0x2EC
MOV             R10, R0
BL              sub_5F1964
CMP             R0, #0
LDRNE           R0, [R10,#0x10]
VMOVEQ.F32      S0, S16
VLDR            S1, [R5,#0x2F0]
VLDRNE          S0, [R0,#4]
ADD             R0, SP, #0x1628+var_228
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x198]
ADD             R0, R4, #0x16000
ADD             R0, R0, #0xB20
MOV             R10, R0
BL              sub_5F1964
CMP             R0, #0
LDRNE           R0, [R10,#0x10]
VMOVEQ.F32      S0, S16
VLDR            S1, [R5,#0x324]
VLDRNE          S0, [R0,#4]
ADD             R0, SP, #0x1628+var_228
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x19C]
ADD             R0, R4, #0x16800
ADD             R0, R0, #0x388
MOV             R10, R0
BL              sub_5F1964
CMP             R0, #0
LDRNE           R0, [R10,#0x10]
VMOVEQ.F32      S0, S16
VLDR            S1, [R5,#0x38C]
VLDRNE          S0, [R0,#4]
ADD             R0, SP, #0x1628+var_228
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x1A0]
ADD             R0, R4, #0x16800
ADD             R0, R0, #0x354
MOV             R10, R0
BL              sub_5F1964
CMP             R0, #0
LDRNE           R0, [R10,#0x10]
VMOVEQ.F32      S0, S16
VLDR            S1, [R5,#0x358]
VLDRNE          S0, [R0,#4]
ADD             R0, SP, #0x1628+var_228
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x1A4]
ADD             R0, R4, #0x16000
ADD             R0, R0, #0xA20
MOV             R10, R0
BL              sub_5F1964
CMP             R0, #0
LDRNE           R0, [R10,#0x10]
VLDR            S0, [R5,#0x224]
LDR             R1, =0x16BBC
ADD             R3, R4, #0x16000
VLDRNE          S16, [R0,#4]
ADD             R0, SP, #0x1628+var_228
ADD             R3, R3, #0xCE0
VADD.F32        S0, S16, S0
VSTR            S0, [R0,#0x1A8]
LDR             R1, [R1,R4]
ADD             R0, SP, #0x1628+var_628
ADD             R10, R0, #0x5D0
STR             R1, [R0,#0x5AC]
LDR             R1, [R5,#0x3C0]
STR             R1, [R0,#0x5B0]
LDR             R2, [R5,#0x3C4]
LDR             R1, =0x16BC8
STR             R2, [R0,#0x5B4]
LDR             R1, [R1,R4]
STR             R1, [R0,#0x5B8]
LDR             R1, [R5,#0x3CC]
STR             R1, [R0,#0x5BC]
LDR             R2, [R5,#0x3D0]
LDR             R1, =0x16BD4
STR             R2, [R0,#0x5C0]
LDR             R1, [R1,R4]
STR             R1, [R0,#0x5C4]
LDR             R1, [R5,#0x3D8]
STR             R1, [R0,#0x5C8]
LDR             R1, [R5,#0x3DC]
STR             R1, [R0,#0x5CC]
LDM             R3, {R1,R2}
ADD             R3, R4, #0x16C00
ADD             R3, R3, #0xE8
STM             R10, {R1,R2}
ADD             R10, R0, #0x400
LDM             R3, {R1,R3}
ADD             R10, R10, #0x1D8
LDR             R2, =0x16CD8
STM             R10, {R1,R3}
LDRB            R0, [R0,#0x5E0]
LDRB            R1, [R2,R4]
ADD             R2, R2, #0x24 ; '$'
BIC             R0, R0, #1
AND             R1, R1, #1
ORR             R0, R0, R1
ADD             R1, SP, #0x1628+var_628
STRB            R0, [R1,#0x5E0]
LDRB            R2, [R2,R4]
MOV             R1, #4
BIC             R0, R0, #4
AND             R1, R1, R2,LSL#2
ORR             R1, R1, R0
ADD             R0, SP, #0x1628+var_628
STRB            R1, [R0,#0x5E0]
ADD             R1, R4, #0x15000
ADD             R1, R1, #0x13C
MOV             R0, R8
BL              sub_3211B0
ADD             R1, R4, #0x16000
ADD             R0, R8, #0x1000
ADD             R1, R1, #0x338
ADD             R0, R0, #0x70 ; 'p'
BL              sub_37C9A8
ADD             R0, R8, #0x1000
MOV             R1, R4
ADD             R0, R0, #0x20 ; ' '
BL              sub_3A10BC
LDR             R0, [R6,#0xC0]
ADD             R10, SP, #0x1628+var_228
ADD             R10, R10, #0x1E8
ADD             R1, R0, #0x3C000
ADD             R2, R1, #0x178
ADD             R0, SP, #0x1628+var_628
LDM             R2, {R2,R3}
STM             R10, {R2,R3}
LDR             R2, [R1,#0x184]
LDR             R1, [R1,#0x180]
STR             R1, [R0,#0x5F0]
STR             R2, [R0,#0x5F4]
LDR             R2, =0x15F8
LDR             R0, [R7,#8]
MOV             R1, R9
BL              sub_1103A4
LDR             R0, [R7,#8]
ADD             R0, R0, #0x1400
ADD             R0, R0, #0x1F8
STR             R0, [R7,#8]
ADD             SP, SP, #0x1600
VPOP            {D8}
POP             {R4-R10,PC}
