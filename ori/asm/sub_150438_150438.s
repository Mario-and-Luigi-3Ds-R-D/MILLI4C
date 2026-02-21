PUSH            {R4-R11,LR}
MOV             R5, R0
VPUSH           {D8}
SUB             SP, SP, #0x34
LDR             R0, [R0,#8]
LDR             R4, [R0,#0x18]
ADD             R0, R4, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_1506D0
LDRB            R0, [R5,#0x20]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_1504F4
BL              sub_48004C
CMP             R0, #0
BEQ             loc_1504D4
LDR             R4, [R5,#8]
LDRH            R1, [R4,#0x10]
SUB             R0, R1, #0x1000
SUBS            R0, R0, #1
BNE             loc_1504D4
LDR             R0, [R4,#0x13C]!
CMP             R0, #0
BEQ             loc_1504AC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R4]
MOV             R0, #0
STR             R0, [SP,#0x60+var_60]
STRH            R6, [SP,#0x60+var_5C]
STRB            R6, [SP,#0x60+var_56]
LDR             R0, [R5,#8]
MOV             R1, SP
BL              sub_14774C
LDR             R1, [R5,#8]
STR             R0, [R1,#0x13C]
B               loc_1504E8
MOV             R3, #0
LDR             R1, [R5,#8]
MOV             R2, R3
MOV             R0, SP
BL              sub_4E4E28
LDR             R1, =unk_63E868
LDRD            R0, R1, [R1,#(off_63E888 - 0x63E868)]
B               loc_1506CC
LDR             R0, [R5,#8]
LDR             R9, =off_6CE970
LDR             R2, =0x300AA
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
LDR             R12, [R9]
SUB             R0, R12, R0
BL              sub_503808
MOV             R2, #0xFFFFFFFF
MOV             R1, #4
MOV             R0, R4
BL              sub_5C55C8
LDR             R1, =dword_6E197C
MOV             R0, R0,LSL#8
LDR             R1, [R1,#(dword_6E1994 - 0x6E197C)]
BL              sub_127F6C
SXTH            R3, R0
MOV             R2, #1
MOV             R1, #4
MOV             R0, R4
BL              sub_14C548
LDR             R7, [R9]
NOP
BL              sub_4635D8
MOV             R3, R0
LDR             R1, =0x44A
MOV             R2, R4
MOV             R0, R7
STR             R6, [SP,#0x60+var_60]
BL              sub_52AE88
LDR             R0, =0x10646C
LDR             R1, [R9]
ADD             R0, R0, R1; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
BEQ             loc_150594
SUBS            R0, R0, #0x1AC
ADDNE           R4, R0, #0x1AC
BNE             loc_150598
MOV             R4, #0
CMP             R4, #0
BEQ             loc_1506C4
LDR             R10, =dword_6E26C4
VLDR            S16, =0.0
MOV             R8, R6
MOV             R11, #4
CMP             R4, #0
LDR             R1, =byte_6CE7C8
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC180
CMP             R0, #0
NOP
BEQ             loc_1506B8
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
LDR             R7, [R9]
LDR             R1, [R0]
LDR             R1, [R1,#0x40]
BLX             R1
STR             R0, [SP,#0x60+var_5C]; float
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_15062C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_15062C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
LDR             R2, [SP,#0x60+var_5C]
LDR             R1, =0x44B
MOV             R0, R7
STR             R8, [SP,#0x60+var_60]; int
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
CMP             R4, #0
MOV             R2, #1
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
ADD             R1, SP, #0x60+var_48
BL              sub_5EC884
NOP
NOP
BL              sub_47FFCC
CMP             R0, #0
LDRNE           R0, [R10,#(dword_6E282C - 0x6E26C4)]
LDREQ           R0, [R10,#(dword_6E2830 - 0x6E26C4)]
MOV             R2, #1
STR             R8, [SP,#8]; int
STR             R8, [SP,#0x60+var_4C]
STMEA           SP, {R0,R2}
ADD             R2, SP, #0x60+var_54
ADD             R1, SP, #0x60+var_48
CMP             R4, #0
STM             R2, {R1,R11}
MOVEQ           R3, #0
LDR             R1, [R5,#8]; int
SUBNE           R3, R4, #0x1AC; int
MOV             R2, #1; int
ADD             R0, SP, #0x60+var_3C; int
BL              sub_4F1E18
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_1505B0
LDR             R1, =unk_63E868
LDRD            R0, R1, [R1,#(off_63E890 - 0x63E868)]
STRD            R0, R1, [R5,#0xC]
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8}
POP             {R4-R11,PC}
