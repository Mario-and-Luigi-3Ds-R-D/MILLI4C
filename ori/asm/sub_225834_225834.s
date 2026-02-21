PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R0, R0, #0x400
LDR             R6, =off_6CDA80
ADD             R0, R0, #4
VPUSH           {D8}
VMOV.F32        S16, S0
SUB             SP, SP, #0x1C
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x400
ADD             R0, R0, #0x38 ; '8'
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x490
BL              sub_5A176C
LDRB            R0, [R4,#0x3FC]
MOV             R5, #9
MOV             R7, #8
CMP             R0, #8; switch 8 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_225884; jumptable 00225884 default case
DCD loc_2258AC; jump table for switch statement
ADD             R1, SP, #0x38+var_2C; jumptable 00225884 case 0
MOV             R0, R4
BL              sub_5C9654
ADD             R1, SP, #0x38+var_2C
ADD             R0, R4, #8
BL              sub_14E984
LDR             R0, [R6]
VLDR            S0, =0.0
MOV             R1, SP
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2FC
LDR             R0, [R0]
LDR             R0, [R0,#0x468]
VSTR            S0, [SP,#0x38+var_38]
VSTR            S0, [SP,#0x38+var_34]
STR             R0, [SP,#0x38+var_30]
ADD             R0, R4, #8
BL              sub_14E9C8
ADD             SP, SP, #0x1C; jumptable 00225884 default case
VPOP            {D8}
POP             {R4-R7,PC}
ADD             SP, SP, #0x1C; jumptable 00225884 case 1
VMOV.F32        S0, S16
VPOP            {D8}
MOV             R0, R4
POP             {R4-R7,LR}
B               sub_224BC0
ADD             SP, SP, #0x1C; jumptable 00225884 case 2
VMOV.F32        S0, S16
VPOP            {D8}
MOV             R0, R4
POP             {R4-R7,LR}
B               sub_2256DC
ADD             R0, R4, #0x1E4; jumptable 00225884 case 3
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_225884; jumptable 00225884 default case
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
LDRB            R0, [R0]
CMP             R0, #2
BNE             loc_225970
STRB            R5, [R4,#0x3FC]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
STRB            R7, [R4,#0x3FC]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
ADD             R0, R4, #0x1E4; jumptable 00225884 case 4
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_225884; jumptable 00225884 default case
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
LDRB            R0, [R0]
CMP             R0, #2
BNE             loc_225970
B               loc_225960
ADD             R0, R4, #8; jumptable 00225884 case 5
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_225884; jumptable 00225884 default case
B               loc_225960
ADD             R0, R4, #0x1E4; jumptable 00225884 case 6
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_225884; jumptable 00225884 default case
B               loc_225960
ADD             SP, SP, #0x1C; jumptable 00225884 case 7
VMOV.F32        S0, S16
VPOP            {D8}
MOV             R0, R4
POP             {R4-R7,LR}
B               sub_22545C
