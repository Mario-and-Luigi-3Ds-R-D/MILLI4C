PUSH            {R4-R6,LR}
MOV             R6, R3
MOV             R3, #1
VPUSH           {D8}
SUB             SP, SP, #8
STR             R3, [SP,#0x20+var_20]
LDR             R3, =unk_6D0088
BL              sub_1E7DC4
LDR             R3, =off_6AE5B0
STR             R3, [R0],#0xE0
ADD             R2, R3, #0x380
STR             R2, [R0],#0x678
ADD             R1, R3, #0x398
STR             R1, [R0],#0x398
BL              sub_5A2F28
ADD             R0, R0, #0x1C
BL              sub_5A2F28
LDR             R1, =sub_2D1C7C
MOV             R3, #6
MOV             R2, #0x128
ADD             R0, R0, #0x1C
BLX             sub_1002F4
SUB             R4, R0, #0x800
SUB             R4, R4, #0x328
VLDR            S0, =14.0
SUB             R5, R0, #0x128
VSTR            S0, [R4,#0x100]
LDRSH           R0, [R6,#4]
ADD             R3, R4, #0x118
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x108]
LDRSH           R0, [R6,#6]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x10C]
LDRSH           R0, [R6,#8]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x110]
LDR             R0, [R4,#0x108]
LDR             R1, [R4,#0x10C]
STM             R3, {R0,R1}
VSTR            S0, [R4,#0x120]
LDR             R0, [R4,#0x464]
BIC             R0, R0, #0x700
ORR             R0, R0, #0x100
STR             R0, [R4,#0x464]
LDR             R0, [R4,#0x658]
BIC             R0, R0, #0x3F000000
ORR             R0, R0, #0x10000000
STR             R0, [R4,#0x658]
LDRH            R0, [R6,#0xA]
ORR             R0, R0, #0xD000
STRH            R0, [R5,#0xB2]
LDR             R0, [R6]
MOV             R1, R0,LSL#28
MOVS            R1, R1,LSR#29
BEQ             loc_173C34
CMP             R1, #2
BEQ             loc_173C44
CMP             R1, #4
BNE             loc_173C74
B               loc_173C58
LDRH            R0, [R5,#0xA8]
BIC             R0, R0, #7
ORR             R0, R0, #1
B               loc_173C50
LDRH            R0, [R5,#0xA8]
BIC             R0, R0, #7
ORR             R0, R0, #2
STRH            R0, [R5,#0xA8]
B               loc_173C74
LDRH            R1, [R5,#0xA8]
TST             R0, #0x18000
MOVNE           R0, #4
BIC             R1, R1, #7
MOVEQ           R0, #3
ORR             R0, R0, R1
STRH            R0, [R5,#0xA8]
MOV             R2, #0
LDRH            R0, [R5,#0xB2]
MOV             R1, R2
BL              sub_116B34
VLDR            S16, =0.0
LDRH            R0, [R5,#0xA8]
MOV             R3, #0x1F00
VCMP.F32        S0, S16
MOV             R1, #0
VMRS            APSR_nzcv, FPSCR
VLDR            S0, =1.0
ORREQ           R0, R0, #8
BICNE           R0, R0, #8
BIC             R0, R0, #0x50 ; 'P'
ORR             R2, R0, #0x20 ; ' '
ORR             R2, R2, #0x80
STRH            R2, [R5,#0xA8]
LDR             R12, [R6]
BIC             R2, R2, #0x1F00
ADD             R0, R4, #0x800
AND             R3, R3, R12,LSR#2
ORR             R2, R2, R3
STRH            R2, [R5,#0xA8]
LDR             R2, [R6]
MOV             R2, R2,LSR#17
STRH            R2, [R5,#0xAA]
STRH            R1, [R5,#0xAE]
STRH            R1, [R5,#0xB0]
LDR             R2, [R6]
MOV             R2, R2,LSL#22
MOV             R2, R2,LSR#26
STRB            R2, [R4,#0xAB4]
STRB            R1, [R4,#0xAB5]
VSTR            S0, [R0,#0x2B8]
VSTR            S16, [R0,#0x2BC]
VSTR            S16, [R0,#0x2C0]
VSTR            S0, [R0,#0x2C4]
ADD             R1, R4, #0x108
VSTR            S16, [R0,#0x2C8]
LDM             R1, {R1-R3}
STR             R1, [R0,#0x2CC]!
ADD             R0, R0, #4
STM             R0, {R2,R3}
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_173D5C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_173D5C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VLDR            S0, =12.0
MOV             R3, #0xFFFFFFFF
LDM             R0, {R1,R2}
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R4,#0xAE0]
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2D8
STM             R0, {R1,R2}
LDRH            R0, [R5,#0xAC]
BIC             R0, R0, #1
STRH            R0, [R5,#0xAC]
LDRB            R1, [R4,#0xAB4]
AND             R2, R0, #1
VMOV            S1, R1
VCVT.F32.U32    S1, S1
VMUL.F32        S0, S0, S1
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R0, R3, R0,LSL#1
ORR             R0, R0, R2
STRH            R0, [R5,#0xAC]
LDRH            R1, [R5,#0xA8]
AND             R0, R1, #7
CMP             R0, #1
CMPNE           R0, #3
BEQ             loc_173DE8
CMP             R0, #4
TSTNE           R1, #8
BEQ             loc_173DE8
MOV             R0, #0
ADD             R2, R4, #0x640
MOV             R1, R0
STM             R2, {R0,R1}
B               loc_173DF0
MOV             R0, R4
BL              sub_17351C
ADD             SP, SP, #8
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,PC}
