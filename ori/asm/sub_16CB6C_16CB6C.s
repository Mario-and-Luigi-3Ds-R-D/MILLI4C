PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R0, R0, #0x400
VPUSH           {D8}
SUB             SP, SP, #0x74
LDRH            R0, [R0,#0x68]
CMP             R0, #0x10
BEQ             loc_16CBA0
ADD             SP, SP, #0x74 ; 't'
MOV             R0, R4
VPOP            {D8}
POP             {R4-R7,LR}
B               sub_540954
ADD             R0, R4, #0x2400
ADD             R0, R0, #0x2A8
ADD             R6, R4, #0x2600
LDRB            R1, [R0]
ADD             R6, R6, #0xA9
CMP             R1, #0
BEQ             loc_16CD44
SUB             R1, R1, #1
ANDS            R1, R1, #0xFF
STRB            R1, [R0]
BEQ             loc_16CBE8
LDR             R0, [R4,#0x7FC]
LDRH            R0, [R0,#0x1A]
TST             R0, #1
BEQ             loc_16CD94
ADD             SP, SP, #0x74 ; 't'
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R4]
MOV             R3, #0
MOV             R2, R3
MOV             R1, #4
LDR             R12, [R0,#0x34C]
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#0x7FC]
VLDR            S16, =0.0
MOV             R1, #1
MOV             R2, #0
VMOV.F32        S1, S16
VMOV.F32        S0, S16
STRH            R1, [R0,#0x16]
LDR             R0, =0x208D9
MOV             R1, R4
BL              sub_1459F8
LDR             R0, [R4,#0xE0]
MOV             R2, #0
ADD             R1, SP, #0x90+var_60
LDR             R3, [R0,#0xC]
ADD             R0, R4, #0xE0
BLX             R3
MOV             R0, #0
MOV             R1, #0x3F800000
STR             R0, [SP,#0x90+var_8C]
STR             R1, [SP,#0x90+var_90]
STR             R0, [SP,#0x90+var_88]
VSTR            S16, [SP,#0x90+var_84]
VLDR            S0, =-20.0
STRD            R0, R1, [SP,#0x90+var_80]
STR             R0, [SP,#0x90+var_78]
VSTR            S0, [SP,#0x90+var_74]
STR             R0, [SP,#0x90+var_70]
STRD            R0, R1, [SP,#0x90+var_6C]
ADD             R1, SP, #0x90+var_60
VSTR            S16, [SP,#0x90+var_64]
MOV             R2, SP
MOV             R0, R1
BL              sub_141F30
LDR             R7, =off_6D1648
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
ADD             R2, SP, #0x90+var_60
ADD             R1, R3, #0x168
BL              sub_168180
ADD             R5, R4, #0x2400
ADD             R5, R5, #0x2BC
LDR             R0, [R5]
CMP             R0, #0
BNE             loc_16CD30
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
LDR             R1, =0x16A
MOV             R2, #0
BL              sub_1681CC
STR             R0, [R5]
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_16CD0C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_16CD0C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R3, SP, #0x90+var_28
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
MOV             R3, #6
LDR             R0, [R5]
ADD             R2, SP, #0x90+var_28
MOV             R1, R4
BL              sub_231870
MOV             R0, #0x3C ; '<'
STRB            R0, [R6]
ADD             SP, SP, #0x74 ; 't'
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R4,#0x7FC]
LDRH            R1, [R0,#0x1A]
TST             R1, #1
BNE             loc_16CBDC
LDRB            R0, [R0,#0x6C]
CMP             R0, #2
BEQ             loc_16CD94
LDRB            R0, [R6]
CMP             R0, #0
BNE             loc_16CBDC
LDR             R0, [R4]
MOV             R3, #0
MOV             R2, R3
MOV             R1, R3
LDR             R12, [R0,#0x34C]
ADD             SP, SP, #0x74 ; 't'
MOV             R0, R4
VPOP            {D8}
POP             {R4-R7,LR}
BX              R12
LDR             R0, [R4]
MOV             R3, #0
MOV             R2, R3
MOV             R1, #3
LDR             R12, [R0,#0x34C]
ADD             SP, SP, #0x74 ; 't'
MOV             R0, R4
VPOP            {D8}
POP             {R4-R7,LR}
BX              R12
