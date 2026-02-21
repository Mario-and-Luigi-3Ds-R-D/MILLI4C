PUSH            {R4-R10,LR}
MOV             R5, R1
MOV             R4, R2
MOV             R9, R0
ADD             R0, R2, #0x10
VPUSH           {D8}
ADD             R1, R2, #8
LDM             R0, {R0,R2}
LDM             R1, {R1,R3}
AND             R7, R0, #0xFF
LDR             R0, =off_6CE970
AND             R8, R3, #0xFF
UXTH            R1, R1
AND             R6, R2, #0xFF
LDR             R0, [R0]
BL              sub_528FF0
MOV             R2, R7
MOV             R1, R8
BL              sub_5ECC58
VLDR            S16, =0.0
VLDR            S17, =1.0
CMP             R6, #7; switch 7 cases
VMOV.F32        S0, S16
LDRCC           PC, [PC,R6,LSL#2]; switch jump
B               def_20C910; jumptable 0020C910 default case
DCD loc_20C934; jump table for switch statement
LDRB            R0, [R0,#0x10]; jumptable 0020C910 case 0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_20C910; jumptable 0020C910 default case
NOP; jumptable 0020C910 case 1
LDRSH           R0, [R0,#0xA]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
B               def_20C910; jumptable 0020C910 default case
NOP; jumptable 0020C910 case 2
BL              sub_5F15A8
NOP
NOP
B               def_20C910; jumptable 0020C910 default case
NOP; jumptable 0020C910 case 3
BL              sub_5F15D4
CMP             R0, #0
NOP
BNE             loc_20C9A0
B               loc_20C998
NOP; jumptable 0020C910 case 4
BL              sub_5F159C
CMP             R0, #0
NOP
BEQ             loc_20C9A0
VMOV.F32        S0, S16
B               def_20C910; jumptable 0020C910 default case
VMOV.F32        S0, S17
B               def_20C910; jumptable 0020C910 default case
NOP; jumptable 0020C910 case 5
BL              sub_5F158C
NOP
NOP
B               def_20C910; jumptable 0020C910 default case
NOP; jumptable 0020C910 case 6
BL              loc_5F1574
CMP             R5, #0; jumptable 0020C910 default case
LDRH            R0, [R4,#2]
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R9
BL              sub_145730
VPOP            {D8}
MOV             R0, #0
POP             {R4-R10,PC}
