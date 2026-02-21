PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R9, #0
MOV             R11, #7
LDR             R6, =dword_6E1330
LDR             R7, =0xFFE683CC
LDR             R10, =off_6CE388
LDR             R8, =off_6CE970
VPUSH           {D8}
SUB             SP, SP, #0x24
LDRB            R0, [R0,#8]
VLDR            S16, =0.0
CMP             R0, #8; switch 8 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1A4178; jumptable 001A4178 default case
DCD loc_1A41A0; jump table for switch statement
LDR             R0, [R4,#0x14]; jumptable 001A4178 case 0
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1A4178; jumptable 001A4178 default case
LDR             R0, [R4,#4]
LDR             R5, [R0,#0x18]
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_1A41E4
LDR             R0, [R10]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x3AC]
SXTH            R1, R0
LDR             R0, [R5,#4]
BL              sub_1586A8
LDR             R0, [R10]
LDR             R0, [R0,#0x94]
LDRB            R0, [R0,#0x1D9]
AND             R0, R0, #2
MOVS            R0, R0,LSR#1
BEQ             loc_1A429C
LDR             R0, [R6]
LDR             R11, [R8]
LDR             R6, [R4,#0x14]
TST             R0, #1
ADD             R5, R4, #0xC
BNE             loc_1A4240
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1A4240
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
LDR             R1, =0x61F
MOV             R2, R6
MOV             R0, R11
STR             R9, [SP,#0x50+var_50]
BL              sub_52AE88
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x184]
LDR             R0, [R8]
LDR             R1, [R4,#0x14]
LDR             R2, =0x30745
MOV             R3, #0
SUB             R0, R0, R7
BL              sub_503720
NOP
NOP
B               loc_1A42B8
LDR             R0, [R4,#0x14]
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
STRB            R9, [R0,#0xF3]
LDR             R0, [R4,#0x14]
BL              sub_14C548
MOV             R0, #1
STRB            R0, [R4,#8]
LDR             R4, [R4,#0x14]
LDR             R0, [R10]
ADD             R4, R4, #0x39C
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x314]
VSTR            S16, [R4]
STR             R0, [R4,#4]
ADD             SP, SP, #0x24 ; '$'; jumptable 001A4178 default case
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R4,#0x14]; jumptable 001A4178 case 1
MOV             R12, R0
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_1A4178; jumptable 001A4178 default case
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R12
BL              sub_14C548
MOV             R0, #2
STRB            R0, [R4,#8]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R4,#0x10]; jumptable 001A4178 case 2
CMP             R0, #0
BNE             def_1A4178; jumptable 001A4178 default case
LDR             R0, [R4,#0x14]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x1B
BL              sub_14C548
MOV             R0, #3
NOP
B               loc_1A45C0
LDR             R0, [R4,#0x14]; jumptable 001A4178 case 3
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_1A4178; jumptable 001A4178 default case
LDR             R0, [R4,#0x14]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x1D
BL              sub_14C548
MOV             R0, #4
NOP
B               loc_1A45C0
LDR             R0, [R4,#0x14]; jumptable 001A4178 case 4
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_1A4178; jumptable 001A4178 default case
LDR             R0, [R10]
LDR             R0, [R0,#0x98]
MOV             R5, R0
LDR             R0, [R4,#0x14]
ADD             R3, SP, #0x50+var_3C
VLDR            S0, [R0,#0x2C]
ADD             R0, R0, #0x24 ; '$'
VLDM            R0, {S1-S2}
ADD             R0, R5, #0x31C
VLDM            R0, {S3-S5}
ADD             R0, SP, #0x50+var_48
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S5
VADD.F32        S2, S2, S4
VSTR            S0, [SP,#0x50+var_40]
VSTM            R0, {S1-S2}
ADD             R0, R5, #0x328
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
MOV             R1, #1
ADD             R0, R4, #0x18
BL              sub_14C450
ADD             R1, SP, #0x50+var_48
ADD             R0, R4, #0x18
BL              sub_14E984
VLDR            S0, [R5,#0x318]
ADD             R1, SP, #0x50+var_3C
ADD             R0, R4, #0x1F4
BL              sub_5A2138
MOV             R1, #0
ADD             R0, R4, #0x18
BL              sub_14C3E8
LDR             R0, [R6]
LDR             R6, [R8]
ADD             R5, R4, #0xC
TST             R0, #1
BNE             loc_1A4460
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1A4460
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
LDR             R1, =0x613
ADD             R2, R4, #0x18
MOV             R0, R6
STR             R9, [SP,#0x50+var_4C]
STR             R11, [SP,#0x50+var_50]
BL              sub_52C764
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x184]
LDR             R0, [R4,#0x10]
LDR             R2, =0x30741
MOV             R3, #0
STRH            R9, [R0,#0xA]
LDR             R0, [R8]
LDR             R1, [R4,#0x14]
SUB             R0, R0, R7
BL              sub_503720
LDR             R0, [R4,#0x14]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x1E
BL              sub_14C548
MOV             R0, #5
NOP
B               loc_1A45C0
DCD dword_6E1330
DCD 0xFFE683CC
DCD off_6CE388
DCFS 0.0
DCD off_6CE970
DCD flt_711FE4
DCD 0x61F
DCD 0x30745
DCD 0x613
DCD 0x30741
ADD             R0, R4, #0x1F4; jumptable 001A4178 case 5
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1A4178; jumptable 001A4178 default case
LDR             R0, [R4,#0x10]
BL              sub_533330
LDR             R0, [R6]
LDR             R5, [R8]
TST             R0, #1
BNE             loc_1A455C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1A455C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
LDR             R1, =0x665
ADD             R2, R4, #0x18
MOV             R0, R5
STR             R9, [SP,#0x50+var_50]
BL              sub_52AE88
MOV             R5, R0
MOV             R2, #0
ADD             R1, SP, #0x50+var_4C
ADD             R0, R4, #0x18
BL              sub_5C4F84
ADD             R6, SP, #0x50+var_4C
ADD             R0, R5, #0x134
LDM             R6, {R1-R3}
STM             R0, {R1,R2}
STR             R3, [R5,#0x13C]
LDR             R0, [R10]
BL              sub_1A397C
LDR             R0, [R8]
LDR             R2, =0x30742
MOV             R3, #0
ADD             R1, R4, #0x18
SUB             R0, R0, R7
BL              sub_503720
MOV             R0, #6
STRB            R0, [R4,#8]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R4,#0x14]; jumptable 001A4178 case 6
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x1F
BL              sub_14C548
STRB            R11, [R4,#8]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R4,#0x14]; jumptable 001A4178 case 7
BL              sub_5C5820
CMP             R0, #0
LDREQ           R0, [R4,#4]
BLEQ            sub_61E634
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4-R11,PC}
