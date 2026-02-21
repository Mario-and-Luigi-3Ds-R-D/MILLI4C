PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
MOV             R0, #0
ADD             R1, R4, R0,LSL#2
LDR             R1, [R1,#0x4C]
CMP             R1, #0
BEQ             loc_1F6284
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19BD00
NOP
NOP
B               loc_1F6290
ADD             R0, R0, #1
CMP             R0, #3
BLT             loc_1F6254
LDR             R0, [R4,#0x34]
TST             R0, #2
BEQ             loc_1F6308
LDR             R0, [R6]
LDR             R1, [R0,#0xC4]
LDR             R1, [R1,#4]
LDR             R5, [R1,#4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19AFE4
LDR             R0, [R4,#0x34]
VLDR            S1, =-1.0
VLDR            S0, =0.0
BIC             R0, R0, #2
STR             R0, [R4,#0x34]
LDR             R0, [R5,#0x164]
VMOV.F32        S2, S1
BIC             R0, R0, #7
STR             R0, [R5,#0x164]
LDR             R0, [R5]
LDR             R1, [R0,#0x214]
MOV             R0, R5
BLX             R1
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              sub_19A598
LDR             R0, [R4,#0x34]
BIC             R0, R0, #0x20 ; ' '
TST             R0, #0x40
STR             R0, [R4,#0x34]
BEQ             locret_1F6368
BIC             R0, R0, #0x40 ; '@'
STR             R0, [R4,#0x34]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R2, #0xF
LDR             R1, [R0,#0x1B4]
MOV             R3, R2
TST             R1, #4
BEQ             locret_1F6368
ADD             R1, R0, #0x100
VLDR            S0, =570.0
VSTR            S0, [R0,#0x1CC]
STRH            R2, [R1,#0xD0]
STRH            R3, [R1,#0xD2]
LDR             R1, [R0,#0x1B4]
BIC             R1, R1, #4
STR             R1, [R0,#0x1B4]
POP             {R4-R6,PC}
