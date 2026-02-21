PUSH            {R4-R8,LR}
VPUSH           {D8}
SUB             SP, SP, #0x28
BL              sub_14F198
MOV             R2, #0
ADD             R1, R0, #0x3F8
STR             R2, [R0,#0x3F4]
STR             R1, [R0,#0x3FC]
STR             R1, [R0,#0x3F8]
ADD             R1, R0, #0x400
STR             R2, [R0,#0x408]
ADD             R1, R1, #0x14
STR             R2, [R0,#0x410]
STR             R1, [R0,#0x418]
STR             R1, [R0,#0x414]
ADD             R1, R0, #0x420
STR             R2, [R0,#0x41C]
STR             R1, [R0,#0x424]
STR             R1, [R0,#0x420]
ADD             R0, R0, #0x400
MOV             R8, R2
MOV             R1, #2
ADD             R0, R0, #0x28 ; '('
BL              sub_19E180
SUB             R4, R0, #0x400
LDR             R0, =off_6CE388
SUB             R4, R4, #0x28 ; '('
LDR             R0, [R0]
LDR             R0, [R0,#0x9C]
LDR             R0, [R0,#4]
MOV             R1, R0
MOV             R3, #0
MOV             R2, R3
MOV             R0, R4
BL              sub_14EEC0
MOV             R1, #1
MOV             R0, R4
BL              sub_14C450
MOV             R0, #5
VLDR            S16, =0.0
STRB            R0, [R4,#0xF1]
VLDR            S0, =-100.0
VSTR            S16, [SP,#0x48+var_48]
VSTR            S0, [SP,#0x48+var_44]
MOV             R1, SP
VSTR            S16, [SP,#0x48+var_40]
MOV             R0, R4
BL              sub_14E984
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
LDR             R7, =off_6CE970
MOV             R3, #0
ADD             R5, R4, #0x410
MOV             R2, R3
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x9C
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_1A01D0
MOV             R1, R4
BL              sub_1A5ED8
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_1A0224
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1A01FC
BL              sub_1A62C8
NOP
NOP
BL              sub_300FD4
LDR             R0, =dword_6E1330
STR             R6, [R5]
STRB            R8, [R4,#0x400]
STRB            R8, [R4,#0x445]
LDR             R0, [R0]
ADD             R5, R4, #0x400
ADD             R5, R5, #0x28 ; '('
TST             R0, #1
BNE             loc_1A026C
B               loc_1A0240
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_1A01FC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1A026C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
ADD             R1, SP, #0x48+var_30
LDRD            R2, R3, [R0]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STRD            R2, R3, [R5,#0xC]
STR             R0, [R5,#0x14]
LDR             R0, [R4,#0x410]
BL              sub_5C6690
ADD             R1, SP, #0x48+var_30
MOV             R0, R5
BL              sub_19E0C4
STRB            R8, [R4,#0x40C]
LDR             R0, [R7]
ADD             R6, R4, #0x400
MOV             R3, #0
ADD             R1, R0, #0x68 ; 'h'
ADD             R6, R6, #0x1C
MOV             R2, R3
MOV             R0, #0x400
BL              sub_10A358
LDR             R7, =off_6C075C
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_1A0314
LDR             R2, =off_6B2A84
STR             R4, [R0],#4
STM             R0!, {R2,R8}
BL              sub_14F198
SUB             R5, R0, #0xC
MOV             R1, #1
BL              sub_14C450
MOV             R1, #0
ADD             R0, R5, #0xC
BL              sub_14C3E8
LDR             R0, [R5]
ADD             R1, SP, #0x48+var_3C
LDR             R0, [R0,#0x410]
BL              sub_5C6690
VSTR            S16, [SP,#0x48+var_38]
ADD             R1, SP, #0x48+var_3C
ADD             R0, R5, #0xC
BL              sub_14E984
LDR             R0, [R6,#8]
ADD             R1, R6, #4
CMP             R0, R1
BNE             loc_1A036C
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_1A0358
ADD             R0, R0, #0xC
BL              sub_14F3EC
SUB             R1, R0, #0xC
STR             R7, [R0,#-8]!
LDR             R2, [R0,#4]
CMP             R2, #0
STRNE           R8, [R2,#0x184]
STRNE           R8, [R0,#4]
MOV             R0, R1
BL              sub_300FD4
STR             R5, [R6]
ADD             SP, SP, #0x28 ; '('
MOV             R0, R4
VPOP            {D8}
POP             {R4-R8,PC}
LDR             R2, [R6,#4]
ADD             R1, R6, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R6,#4]
STR             R1, [R6,#8]
B               loc_1A0358
