PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R4, R2
MOV             R8, R0
VPUSH           {D8}
LDR             R1, [R2,#8]!
LDR             R0, [R2,#4]
UXTH            R1, R1
AND             R6, R0, #0xFF
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F480
MOV             R7, R0
MOV             R0, R6
BL              sub_1CCF18
LDRB            R0, [R0,#1]
VLDR            S16, =0.0
MOV             R1, #0
RSB             R0, R0, R0,LSL#4
ADD             R0, R7, R0,LSL#2
ADD             R7, R0, #0x44 ; 'D'
MOV             R0, R7
BL              sub_5C7178
CMP             R0, #0
BEQ             def_20B414; jumptable 0020B414 default case, cases 2-4
SUB             R0, R6, #2
CMP             R0, #8; switch 8 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_20B414; jumptable 0020B414 default case, cases 2-4
DCD loc_20B43C; jump table for switch statement
MOV             R0, R7; jumptable 0020B414 cases 0,1
LDRH            R0, [R0,#0x30]
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_20B414; jumptable 0020B414 default case, cases 2-4
MOV             R0, R7; jumptable 0020B414 cases 5-7
LDRH            R0, [R0,#0x30]
VMOV            S0, R0
VCVT.F32.S32    S16, S0
CMP             R5, #0; jumptable 0020B414 default case, cases 2-4
LDRH            R0, [R4,#2]
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R8
VMOV.F32        S0, S16
BL              sub_145730
VPOP            {D8}
MOV             R0, #0
POP             {R4-R8,PC}
