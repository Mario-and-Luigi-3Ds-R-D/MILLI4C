PUSH            {R0-R9,LR}
MOV             R4, R0
MOV             R5, R2
VPUSH           {D8}
SUB             SP, SP, #0x4C
LDM             R3, {R0-R2}
ADD             R6, SP, #0x80+var_68
VLDR            S16, =0.0
STM             R6, {R0-R2}
VSTR            S16, [SP,#0x80+var_64]
LDR             R0, [R4,#0x5C]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x80+var_68
BLX             R2
LDRB            R1, [SP,#0x80+var_28]
LDR             R8, =off_6CE970
MOV             R7, #1
STRB            R1, [R4,#0x60]
MOV             R9, #0
STR             R7, [R4,#0x64]
STRB            R9, [R4,#0x2D]
LDR             R0, [R8]
MOV             R3, R7
MOV             R2, R5
MOV             R1, #0xDB
STR             R9, [SP,#0x80+var_80]
BL              sub_52AEA8
LDR             R0, =dword_6E1330
LDR             R5, [R8]
LDR             R6, [R4,#0x5C]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1A1BA4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1A1BA4
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
MOV             R2, R6
MOV             R1, #0xDC
MOV             R0, R5
STR             R9, [SP,#0x80+var_80]; int
BL              sub_52B72C
LDRB            R0, [R4,#0xD]
CMP             R0, #0
BEQ             loc_1A1CD0
LDR             R0, [R4,#0x5C]
MOV             R2, #0
ADD             R1, SP, #0x80+var_50
BL              sub_5C48B8
LDR             R6, =off_6CE388
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
LDR             R5, [R0,#0xAC]
LDR             R0, [R6]
LDR             R0, [R0,#0x94]
MOV             R2, #0x7F
ADD             R3, SP, #0x80+var_74
ADD             R1, SP, #0x80+var_50
STR             R2, [SP,#0x80+var_78]; int
STM             R3, {R1,R9}
MOV             R2, #0; int
STR             R9, [SP,#0x80+var_6C]
STMEA           SP, {R5,R7}
LDR             R5, =0x10D4D8
LDR             R1, [R8]
ADD             R3, R1, R5; loc_10D4D8 ; int
MOV             R1, R0; int
ADD             R0, SP, #0x80+var_44; int
BL              sub_4F1E18
LDR             R0, [R8]
MOV             R1, #1
ADD             R0, R0, R5; loc_10D4D8
STRB            R1, [R0,#(loc_10D658+3 - 0x10D4D8)]
LDR             R0, [R8]
MOV             R1, #0
ADD             R0, R0, R5; loc_10D4D8
STRB            R1, [R0,#(loc_10D658+3 - 0x10D4D8)]
LDR             R0, [R8]
MOV             R3, #0
ADD             R5, SP, #0x80+var_5C
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1A1C78
LDR             R1, =off_6BB514
STM             R0, {R1,R4}
MOV             R1, R5
STR             R0, [SP,#0x80+var_5C]
ADD             R0, R5, #4
STR             R0, [SP,#0x80+var_54]
STR             R0, [SP,#0x80+var_58]
MOV             R2, #0
MOV             R0, R4
BL              sub_61E434
LDR             R1, [SP,#0x80+var_54]
ADD             R0, SP, #0x80+var_58
CMP             R1, R0
BNE             loc_1A1CC0
LDR             R0, [SP,#0x80+var_5C]
CMP             R0, #0
BEQ             loc_1A1CC0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x80+var_58]
STR             R1, [R0,#4]
STR             R0, [R1]
B               loc_1A1D54
LDR             R0, [R8]
MOV             R3, #0
MOV             R5, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1A1D00
LDR             R1, =off_6BB530
STM             R0, {R1,R4}
MOV             R1, R5
STR             R0, [SP,#0x80+var_80]
ADD             R0, R5, #4
STR             R0, [SP,#0x80+var_78]
STR             R0, [SP,#0x80+var_7C]
MOV             R2, #0
MOV             R0, R4
BL              sub_61E434
LDR             R1, [SP,#0x80+var_78]
ADD             R0, SP, #0x80+var_7C
CMP             R1, R0
BNE             loc_1A1D48
LDR             R0, [SP,#0x80+var_80]
CMP             R0, #0
BEQ             loc_1A1D48
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x80+var_7C]
STR             R1, [R0,#4]
STR             R0, [R1]
STRB            R7, [R4,#0xD]
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8}
ADD             SP, SP, #0x10
POP             {R4-R9,PC}
