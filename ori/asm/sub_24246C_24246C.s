PUSH            {R4-R10,LR}
MOV             R7, R0
MOV             R9, R1
VPUSH           {D8}
LDR             R0, [R0,#4]
ADD             R8, R0, #0x21000
LDR             R0, =off_6D1648
ADD             R8, R8, #0x15C
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#0x890]
TST             R0, #1
BNE             loc_2426DC
LDR             R0, [R7,#8]
MOV             R6, #0xFFFFFFFF
VLDR            S16, =-1.0
MOV             R4, R6
LDRSH           R1, [R0]
MOV             R0, #0
MOV             R5, R6
CMP             R1, #0x21; switch 33 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2424C0; jumptable 002424C0 default case, cases 1-16,18-20,22,29-31
DCD loc_24254C; jump table for switch statement
LDRH            R0, [R8,#0xB8]; jumptable 002424C0 case 0
CMP             R0, #0
BEQ             loc_2426DC
LDR             R0, [R7,#8]
LDRSH           R0, [R0,#2]
CMP             R0, #0
CMPNE           R0, #1
BEQ             loc_2426DC
CMP             R0, #2
CMPNE           R0, #4
BEQ             loc_2426DC
CMP             R0, #3
MOVNE           R6, #0x2000
MOVNE           R4, #2
BEQ             loc_2426DC
MOV             R5, #0
B               loc_242608
LDR             R6, =0x2014; jumptable 002424C0 case 17
MOV             R4, #0
B               loc_2425B0
MOV             R6, #0x2000; jumptable 002424C0 case 21
MOV             R4, #4
B               loc_242588
MOV             R6, #0x2000; jumptable 002424C0 case 23
MOV             R4, #6
MOV             R5, #1
B               loc_242608
MOV             R6, #0x2000; jumptable 002424C0 case 24
MOV             R4, #4
MOV             R5, #0
B               loc_242608
MOV             R6, #0x2000; jumptable 002424C0 case 25
MOV             R4, #6
MOV             R5, #0
VLDR            S16, =2.0
B               loc_242664
LDR             R0, [R7,#4]; jumptable 002424C0 case 26
MOV             R6, #0x2000
MOV             R4, #6
MOV             R5, #1
LDR             R0, [R0,#0x4B8]
VLDR            S16, =2.0
STR             R0, [R7,#0x60]
B               loc_242664
LDR             R6, =0x2010; jumptable 002424C0 case 27
MOV             R4, #0
MOV             R5, #1
VLDR            S16, =2.0
B               loc_242664
LDR             R0, [R7,#4]; jumptable 002424C0 case 28
LDR             R6, =0x2010
MOV             R4, #2
ADD             R0, R0, #0x17000
MOV             R5, #1
VLDR            S16, =2.0
ADD             R0, R0, #0x4B0
BL              sub_580A78
LDR             R0, [R7,#4]
MOV             R1, #0
ADD             R0, R0, #0x17400
ADD             R0, R0, #0xAD
STRB            R1, [R0]
B               loc_242664
MOV             R6, #0x2000; jumptable 002424C0 case 32
MOV             R4, #2
MOV             R5, #0
VLDR            S16, =2.0
B               loc_242664
CMP             R0, #0; jumptable 002424C0 default case, cases 1-16,18-20,22,29-31
BEQ             loc_2426DC
LDR             R1, [R7,#4]
MOV             R2, #3
ADD             R1, R1, #0x2000
ADD             R1, R1, #0x770
LDR             R0, [R1]
MOV             R3, R0,LSL#18
CMP             R2, R3,LSR#29
BHI             loc_242694
CMP             R9, #0
BIC             R0, R0, #0xF
ORRNE           R0, R0, #1
STR             R0, [R1]
MOV             R1, R6
MOV             R0, R8
BL              sub_543494
LDR             R0, [R7,#4]
LDR             R1, [R8]
VMOV.F32        S0, S16
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
SXTH            R3, R5
VPOP            {D8}
AND             R0, R0, #0xF
ADD             R1, R0, R4
MOV             R0, R8
POP             {R4-R10,LR}
MOV             R2, #0
BX              R12
VPOP            {D8}
POP             {R4-R10,PC}
