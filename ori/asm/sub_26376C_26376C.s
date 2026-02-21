PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
LDRB            R0, [R0,#4]
VLDR            S16, =0.0
CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_263788; jumptable 00263788 default case, cases 3,5
DCD loc_2637AC; jump table for switch statement
ADD             R0, R4, #0x1E4; jumptable 00263788 case 0
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_263788; jumptable 00263788 default case, cases 3,5
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #6
ADD             R0, R4, #8
BL              sub_14C548
MOV             R0, #1
NOP
B               loc_2638A8
ADD             R0, R4, #8; jumptable 00263788 case 1
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_263788; jumptable 00263788 default case, cases 3,5
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #8
ADD             R0, R4, #8
BL              sub_14C548
MOV             R0, #2
NOP
B               loc_2638A8
ADD             R0, R4, #8; jumptable 00263788 case 2
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_263788; jumptable 00263788 default case, cases 3,5
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #9
ADD             R0, R4, #8
BL              sub_14C548
LDR             R0, [R4]
LDR             R0, [R0,#0x2A8]
VSTR            S16, [R4,#0x3A4]
STR             R0, [R4,#0x3A8]
MOV             R0, #3
B               loc_2638A8
ADD             R0, R4, #8; jumptable 00263788 case 4
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_263788; jumptable 00263788 default case, cases 3,5
MOV             R2, SP
VLDR            S0, =1000.0
MOV             R1, #0
VSTR            S0, [SP,#0x20+var_20]
VSTR            S16, [SP,#0x20+var_1C]
VSTR            S16, [SP,#0x20+var_18]
LDR             R0, [R4]
VLDR            S0, [R0,#0x2A4]
ADD             R0, R4, #0x1E4
BL              sub_5A25D0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #7
ADD             R0, R4, #8
BL              sub_14C548
MOV             R0, #6
STRB            R0, [R4,#4]
ADD             SP, SP, #0x10; jumptable 00263788 default case, cases 3,5
VPOP            {D8}
POP             {R4,PC}
MOV             R2, #0; jumptable 00263788 case 6
MOV             R1, SP
ADD             R0, R4, #8
BL              sub_5C4F84
LDR             R0, [SP,#0x20+var_20]
LDR             R1, =0x43660000
CMP             R0, R1
BGE             loc_2638E4
ORR             R1, R1, R1,LSL#13
CMP             R0, R1
BCC             def_263788; jumptable 00263788 default case, cases 3,5
MOV             R0, #7
STRB            R0, [R4,#4]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
