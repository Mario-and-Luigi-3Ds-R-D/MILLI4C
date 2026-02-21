PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R2, R1
MOV             R1, #0xFFFFFFFF
VPUSH           {D8}
MOV             R12, #0
LDR             R0, [R0,#8]
VLDR            S16, =-1.0
MOV             R3, #1
MOV             R4, R1
LDRSH           R8, [R0]
LDR             R0, [R6,#4]
MOV             R5, R1
CMP             R8, #0x1B; switch 27 cases
ADD             R7, R0, #0x21000
ADD             R0, R0, #0x23000
ADD             R7, R7, #0x15C
ADD             R0, R0, #0x4E0
LDRCC           PC, [PC,R8,LSL#2]; switch jump
B               def_1C0290; jumptable 001C0290 default case, cases 2,3,5-16,18-20
DCD loc_1C0304; jump table for switch statement
VLDR            S0, =1.0; jumptable 001C0290 cases 0,4,21
MOV             R1, #0x2800
VSTR            S0, [R0,#4]
VSTR            S0, [R0,#8]
VSTR            S0, [R0,#0xC]
MOV             R4, #2
MOV             R5, #0
VLDR            S16, =2.0
B               loc_1C03AC
VLDR            S0, =1.0; jumptable 001C0290 case 1
MOV             R4, #0
VSTR            S0, [R0,#4]
VSTR            S0, [R0,#8]
VSTR            S0, [R0,#0xC]
MOV             R1, #0x2800
MOV             R5, R4
VLDR            S16, =2.0
B               loc_1C03AC
MOV             R4, #0; jumptable 001C0290 cases 17,22,23
LDR             R1, =0x2804
MOV             R5, R4
VLDR            S16, =2.0
B               loc_1C0420
VLDR            S1, =-1.0; jumptable 001C0290 case 24
VLDR            S0, =1.0
VSTR            S1, [R0,#4]
MOV             R4, #0
VSTR            S0, [R0,#8]
LDR             R1, =0x2805
MOV             R5, R4
VLDR            S16, =2.0
VSTR            S0, [R0,#0xC]
B               loc_1C0420
LDR             R1, =0x2805; jumptable 001C0290 cases 25,26
MOV             R4, #1
MOV             R5, #0
VLDR            S16, =2.0
B               loc_1C0420
CMP             R12, #0; jumptable 001C0290 default case, cases 2,3,5-16,18-20
BEQ             loc_1C043C
CMP             R3, #0
BEQ             loc_1C0420
LDR             R3, [R6,#4]
MOV             R12, #3
ADD             R3, R3, #0x2000
ADD             R3, R3, #0x770
LDR             R0, [R3]
MOV             R8, R0,LSL#18
CMP             R12, R8,LSR#29
BHI             loc_1C03DC
CMP             R2, #0
BIC             R0, R0, #0xF
ORRNE           R0, R0, #1
STR             R0, [R3]
MOV             R0, R7
BL              sub_543494
LDR             R0, [R6,#4]
LDR             R1, [R7]
VMOV.F32        S0, S16
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
SXTH            R3, R5
VPOP            {D8}
AND             R0, R0, #0xF
ADD             R1, R0, R4
MOV             R0, R7
POP             {R4-R8,LR}
MOV             R2, #0
BX              R12
LDR             R0, [R6,#4]
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R2, [R0]
BIC             R2, R2, #0xF
STR             R2, [R0]
B               loc_1C03DC
VPOP            {D8}
POP             {R4-R8,PC}
