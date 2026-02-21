PUSH            {R3-R9,LR}
MOV             R4, R0
LDRB            R0, [R0,#8]
CMP             R0, #0
BEQ             loc_1A0FB4
CMP             R0, #1
BEQ             loc_1A10E0
CMP             R0, #2
LDREQ           R0, [R4,#0x10]
CMPEQ           R0, #0
BNE             locret_1A0FB0
LDR             R0, [R4,#0x18]
CMP             R0, #0
LDREQ           R0, [R4,#4]
BLEQ            sub_61E4FC
POP             {R3-R9,PC}
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x5C]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             locret_1A0FB0
LDR             R1, =dword_6E1330
LDR             R7, =off_6CE970
LDR             R0, [R4,#4]
LDR             R1, [R1]
LDR             R6, [R7]
LDR             R5, [R0,#0x5C]
TST             R1, #1
BNE             loc_1A1020
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1A1020
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R0, #0
MOV             R1, R0
STR             R0, [SP,#0x20+var_20]
LDR             R3, =flt_711FE4
MOV             R2, R5
MOV             R0, R6
BL              sub_52AE88
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x1A
LDR             R0, [R0,#0x5C]
BL              sub_14C548
LDR             R0, [R4,#4]
LDR             R8, =0xFFE683CC
LDR             R2, =0x30750
ADD             R5, R4, #0xC
LDR             R1, [R0,#0x5C]
LDR             R0, [R7]
MOV             R3, #0
SUB             R0, R0, R8
BL              sub_503720
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x64]
LDR             R0, [R4,#4]
LDR             R2, =0x30013
ADD             R5, R4, #0x14
MOV             R3, #0
LDR             R1, [R0,#0x5C]
LDR             R0, [R7]
SUB             R0, R0, R8
BL              sub_503720
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
MOV             R0, #1
STRNE           R5, [R6,#0x64]
B               loc_1A1114
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x5C]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_1A0FB0
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x1B
LDR             R0, [R0,#0x5C]
BL              sub_14C548
MOV             R0, #2
STRB            R0, [R4,#8]
POP             {R3-R9,PC}
