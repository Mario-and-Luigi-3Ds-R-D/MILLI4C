PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
LDR             R0, [R4,#8]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_296928
LDRB            R0, [R4,#0x20]
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_295B54; jumptable 00295B54 default case
DCD loc_295B74; jump table for switch statement
MOV             R0, R4; jumptable 00295B54 case 0
BL              sub_295070
NOP
NOP
B               def_295B54; jumptable 00295B54 default case
MOV             R0, R4; jumptable 00295B54 case 1
BL              sub_2952C8
NOP
NOP
B               def_295B54; jumptable 00295B54 default case
LDR             R0, [R4,#4]; jumptable 00295B54 case 2
LDR             R0, [R0,#0x4C]
BL              sub_5CDB18
CMP             R0, #0
NOP
BNE             def_295B54; jumptable 00295B54 default case
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
CMP             R0, #0
MOVEQ           R0, R4
BLEQ            sub_295214
NOP
NOP
B               def_295B54; jumptable 00295B54 default case
LDR             R0, [R4,#4]; jumptable 00295B54 case 3
MOV             R5, R0
LDR             R0, [R0,#0x30]
LDRB            R0, [R0]
CMP             R0, #4
BNE             def_295B54; jumptable 00295B54 default case
LDR             R0, [R5,#0x4C]
BL              sub_5CDB04
CMP             R0, #0
NOP
BEQ             loc_295C1C
ADD             R5, R5, #0x12800
ADD             R5, R5, #4
LDR             R0, [R5]
BL              sub_5CDA90
CMP             R0, #0
NOP
BEQ             loc_295C44
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12C00
LDRB            R0, [R0,#0x10]
CMP             R0, #0
BNE             loc_295C44
LDR             R0, [R4,#8]
BL              sub_5CDCAC
CMP             R0, #0
NOP
BEQ             def_295B54; jumptable 00295B54 default case
LDR             R5, [R4,#4]
LDR             R0, [R5,#0x4C]
BL              sub_5CDB04
CMP             R0, #0
NOP
BEQ             loc_295C78
ADD             R5, R5, #0x12800
ADD             R5, R5, #4
LDR             R0, [R5]
BL              sub_5CDA90
CMP             R0, #0
NOP
BEQ             loc_295C8C
LDR             R0, [R4,#4]
LDR             R1, =0x12C10
LDRB            R1, [R1,R0]
CMP             R1, #0
BEQ             loc_295D3C
LDR             R0, [R4,#4]
BL              sub_292EFC
NOP
NOP
B               def_295B54; jumptable 00295B54 default case
LDR             R1, [R4,#4]; jumptable 00295B54 case 4
MOV             R0, R1
LDR             R1, [R1,#0x30]
LDR             R0, [R0,#0x40]
BL              sub_2819CC
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x30]
BL              sub_5CDB94
CMP             R0, #0
NOP
BEQ             def_295B54; jumptable 00295B54 default case
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
BL              sub_2816AC
MOV             R0, #5
STRB            R0, [R4,#0x20]
B               def_295B54; jumptable 00295B54 default case
LDR             R0, [R4,#4]; jumptable 00295B54 case 5
LDR             R1, [R0,#0x40]
CMP             R1, #0
BNE             def_295B54; jumptable 00295B54 default case
LDR             R0, [R0,#0x30]
LDRB            R0, [R0]
CMP             R0, #4
BNE             def_295B54; jumptable 00295B54 default case
LDR             R0, [R4,#8]
BL              sub_5CDCAC
CMP             R0, #0
NOP
BEQ             def_295B54; jumptable 00295B54 default case
LDR             R0, [R4,#4]
LDR             R1, =0x12C10
LDRB            R1, [R1,R0]
CMP             R1, #0
BEQ             loc_295D3C
BL              sub_292EFC
NOP
NOP
B               def_295B54; jumptable 00295B54 default case
NOP
BL              sub_294860
LDR             R0, [R4,#4]; jumptable 00295B54 default case
LDR             R0, [R0,#0x30]
CMP             R0, #0
BEQ             locret_295E04
BL              sub_5CDB94
CMP             R0, #0
NOP
BEQ             locret_295E04
LDR             R0, [R4,#8]
BL              sub_5CDC98
CMP             R0, #0
NOP
BEQ             locret_295E04
LDR             R5, [R4,#4]
LDR             R0, [R5,#0x4C]
BL              sub_5CDB04
CMP             R0, #0
NOP
BEQ             loc_295DC0
ADD             R5, R5, #0x12800
ADD             R5, R5, #4
LDR             R0, [R5]
BL              sub_5CDA90
CMP             R0, #0
NOP
BNE             loc_295DC0
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12C00
LDRB            R0, [R0,#0x10]
CMP             R0, #0
BEQ             locret_295E04
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
LDR             R1, [R1,#0x14]
VLDR            S0, [R1,#0x3D8]
BL              sub_5A20E4
LDR             R0, [R4,#4]
LDR             R1, [R0,#8]
CMP             R1, #0
BEQ             loc_295DF0
POP             {R4-R6,LR}
MOV             R0, R1
B               loc_28E9CC
POP             {R4-R6,LR}
B               sub_292330
DCFS 0.0039062
DCD off_6CE970
DCD 0x12C10
POP             {R4-R6,PC}
