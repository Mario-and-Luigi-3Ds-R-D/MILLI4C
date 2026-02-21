PUSH            {R4-R11,LR}
MOV             R5, R0
VPUSH           {D8}
SUB             SP, SP, #0x24
LDR             R0, [R0,#8]
LDR             R4, [R0,#0x18]
MOV             R0, R4
BL              sub_5C5820
CMP             R0, #0
BNE             loc_14F984
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #6
MOV             R0, R4
BL              sub_14C548
LDR             R0, [R5,#8]
LDR             R9, =off_6CE970
LDRB            R0, [R0,#0x495]
LDR             R7, [R9]
CMP             R0, #0
MOVNE           R8, #0x1B
MOVEQ           R8, #0x1A
BL              sub_4635D8
MOV             R6, #0
MOV             R3, R0
MOV             R2, R4
MOV             R1, R8
MOV             R0, R7
STR             R6, [SP,#0x50+var_50]
BL              sub_52AE88
LDR             R7, [R9]
BL              sub_4635D8
MOV             R3, R0
LDR             R1, =0x44C
MOV             R2, R4
MOV             R0, R7
STR             R6, [SP,#0x50+var_50]
BL              sub_52AE88
LDR             R0, [R5,#8]
LDR             R12, [R9]
LDR             R2, =0x300AC
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503808
LDR             R4, =dword_6E197C
LDR             R0, [R4,#(dword_6E19B4 - 0x6E197C)]
CMP             R0, #0
BEQ             loc_14F83C
LDR             R0, [R5,#8]
MOV             R2, #0
MOV             R1, #4
ADD             R0, R0, #0x34 ; '4'
BL              sub_1CCBB4
LDR             R1, [R5,#8]
LDR             R0, [R4,#(dword_6E19B4 - 0x6E197C)]
STRB            R0, [R1,#0x35]
LDR             R0, =0x10646C
LDR             R1, [R9]
ADD             R0, R0, R1; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BEQ             loc_14F964
LDR             R10, =dword_6E1330
LDR             R8, =dword_6E26C4
VLDR            S16, =0.0
MOV             R11, R6
CMP             R4, #0
LDR             R1, =byte_6CE7C8
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC180
CMP             R0, #0
NOP
BEQ             loc_14F958
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
LDR             R7, [R9]
LDR             R1, [R0]
LDR             R1, [R1,#0x40]
BLX             R1
STR             R0, [SP,#0x50+var_4C]; float
LDR             R0, [R10]
TST             R0, #1
BNE             loc_14F8EC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_14F8EC
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
LDR             R2, [SP,#0x50+var_4C]
LDR             R1, =0x44D
MOV             R0, R7
STR             R11, [SP,#0x50+var_50]; int
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
BL              sub_47FFCC
CMP             R0, #0
LDRNE           R0, [R8,#(dword_6E2834 - 0x6E26C4)]
LDREQ           R0, [R8,#(dword_6E2838 - 0x6E26C4)]
MOV             R2, #1
STR             R11, [SP,#0x50+var_48]; int
STR             R11, [SP,#0x50+var_44]; char
STMEA           SP, {R0,R2}
ADD             R2, SP, #0x50+var_40
MOV             R1, #2
CMP             R4, #0
STM             R2, {R1,R11}
MOVEQ           R3, #0
LDR             R1, [R5,#8]; int
SUBNE           R3, R4, #0x1AC; int
MOV             R2, #2; int
ADD             R0, SP, #0x50+var_38; int
BL              sub_4F1E18
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_14F874
LDR             R0, [R5,#8]
MOV             R2, #1
MOV             R1, #0
ADD             R0, R0, #0x34 ; '4'
BL              sub_1CCBB4
LDR             R1, =unk_63E868
LDRD            R0, R1, [R1,#(off_63E8D8 - 0x63E868)]
STRD            R0, R1, [R5,#0xC]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4-R11,PC}
