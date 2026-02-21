PUSH            {R4-R9,LR}
MOV             R5, R2
MOV             R7, R1
ADD             R0, R0, #4
VPUSH           {D8}
SUB             SP, SP, #0x2C
BL              sub_14F198
SUB             R0, R0, #4
MOV             R8, #0
STRB            R8, [R0,#0x3F8]
ADD             R0, R0, #0x3FC
BL              sub_5A1E2C
LDR             R4, =off_6B7BEC
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
MOV             R6, #1
STR             R1, [R0,#0x10]
STRB            R6, [R0,#0x14]
ADD             R0, R0, #0x4C ; 'L'
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
SUB             R4, R0, #0xC30
STR             R1, [R0,#0x10]
STRB            R6, [R0,#0x14]
SUB             R0, R0, #0x58 ; 'X'
STR             R0, [R4,#0xC6C]
STR             R8, [R4,#0xC74]
ADD             R0, R4, #0xC80
STR             R5, [R4,#0xC78]
STR             R0, [R4,#0xE60]
STR             R0, [R4,#0xE64]
LDR             R0, =off_6B0F7C
ADD             R9, R4, #0xC00
ADD             R9, R9, #0x268
VLDR            S16, =0.0
STM             R9, {R0,R8}
ADD             R5, R4, #0x400
ADD             R6, R4, #0xC00
STR             R8, [R4]
ADD             R6, R6, #0x78 ; 'x'
VSTR            S16, [R5,#0x38]
ADD             R0, R4, #0x3FC
BL              sub_5A18EC
VLDR            S0, =1.0
ADD             R0, R4, #0xC30
VSTR            S0, [R5,#8]
VSTR            S0, [R5]
BL              sub_5A18EC
ADD             R0, R4, #0xC00
ADD             R1, R4, #0x400
VSTR            S16, [R0,#0x3C]
VSTR            S16, [R0,#0x34]
LDR             R0, [R4,#0xC78]
ADD             R2, R4, #0x800
ADD             R3, R4, #0x440
ADD             R1, R1, #0x224
LDR             R0, [R0]
ADD             R2, R2, #0x218
LDR             R0, [R0,#0x36C]
STR             R0, [R5,#0x3C]
ADD             R0, R4, #0x400
STM             R3, {R1,R2}
MOV             R1, #0
ADD             R0, R0, #0x48 ; 'H'
BL              sub_14C3E8
ADD             R0, R4, #0x800
MOV             R1, #0
ADD             R0, R0, #0x3C ; '<'
BL              sub_14C3E8
MOV             R1, #1
ADD             R0, R4, #4
BL              sub_14C450
MOV             R1, #0
ADD             R0, R4, #4
BL              sub_14C3E8
STRB            R8, [R4,#0xF6]
LDM             R7, {R0-R2}
ADD             R3, SP, #0x50+var_38
VMOV            S1, R1
STM             R3, {R0-R2}
ADD             R1, SP, #0x50+var_38
LDR             R0, [R4,#0xC78]
LDR             R0, [R0]
VLDR            S0, [R0,#0x12C]
ADD             R0, R4, #4
VSUB.F32        S0, S1, S0
VSTR            S0, [SP,#0x50+var_34]
BL              sub_14E984
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_25F96C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_25F96C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R1, =flt_711FE4
ADD             R12, SP, #0x50+var_44
LDR             R7, =off_6CE970
LDM             R1, {R0,R2,R3}
MOV             R1, #7
STM             R12, {R0,R2,R3}
ADD             R3, SP, #0x50+var_44
LDR             R0, [R7]
STMEA           SP, {R1,R8}
LDR             R1, =0x2D2
ADD             R2, R4, #4
BL              sub_52C764
STR             R0, [R4]
STRH            R8, [R0,#0xA]
STRB            R8, [R4,#0xC7C]
LDR             R0, [R4,#0xC78]
LDR             R0, [R0]
LDR             R0, [R0,#0x348]
STR             R0, [R5,#0x34]
LDR             R0, [R6]
LDR             R0, [R0]
LDR             R0, [R0,#0x350]
STR             R0, [R5,#0x30]
MOV             R0, R4
BL              sub_25E37C
LDR             R0, [R7]
LDR             R5, =0xA140
MOV             R2, #0
LDR             R1, [R0,#0x68]!
LDR             R3, [R1,#0xC]
MOV             R1, R5
BLX             R3
MOV             R1, R0
STR             R0, [R4,#0xE70]
LDR             R3, =0x404
MOV             R2, R5
MOV             R0, R9
BL              sub_127F2C
ADD             SP, SP, #0x2C ; ','
MOV             R0, R4
VPOP            {D8}
POP             {R4-R9,PC}
