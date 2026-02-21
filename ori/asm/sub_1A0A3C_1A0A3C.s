PUSH            {R4-R7,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #4
LDRB            R0, [R0,#8]
CMP             R0, #0
BEQ             loc_1A0AA8
CMP             R0, #1
BEQ             loc_1A0B88
CMP             R0, #2
BNE             loc_1A0A9C
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x5C]
BL              sub_5C5820
CMP             R0, #0
BNE             loc_1A0A9C
LDR             R0, [R4,#4]
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
LDR             R0, [R0,#0x5C]
BL              sub_14C548
LDR             R0, [R4,#4]
BL              sub_61E4FC
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x5C]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_1A0A9C
LDR             R1, =dword_6E1330
LDR             R7, =off_6CE970
LDR             R0, [R4,#4]
VLDR            S16, =0.0
LDR             R1, [R1]
LDR             R6, [R7]
LDR             R5, [R0,#0x5C]
TST             R1, #1
BNE             loc_1A0B14
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1A0B14
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
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
LDR             R5, [R0,#0x5C]
LDR             R0, =off_6CE388
ADD             R5, R5, #0x39C
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x2E4]
VSTR            S16, [R5]
LDR             R2, =0x30750
STR             R0, [R5,#4]
MOV             R0, #1
STRB            R0, [R4,#8]
LDR             R0, [R4,#4]
LDR             R12, [R7]
MOV             R3, #0
LDR             R1, [R0,#0x5C]
ADD             SP, SP, #4
LDR             R0, =0xFFE683CC
VPOP            {D8}
SUB             R0, R12, R0
POP             {R4-R7,LR}
B               sub_503720
LDR             R0, [R4,#4]
LDR             R12, [R0,#0x5C]
ADD             R0, R12, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_1A0A9C
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x26 ; '&'
MOV             R0, R12
BL              sub_14C548
MOV             R0, #2
STRB            R0, [R4,#8]
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R7,PC}
