PUSH            {R4-R8,LR}
MOV             R4, R0
VPUSH           {D8}
LDR             R0, [R0,#4]
ADD             R5, R0, #0x23400
ADD             R6, R0, #0x108
LDR             R0, =off_6D1648
ADD             R5, R5, #0x108
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R0, R0, #0x2BC00
LDRB            R0, [R0,#0xEC]
CMP             R0, #0
BNE             def_1BFA54; jumptable 001BFA54 default case, cases 0,2-16,18,20
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x1C; switch 28 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1BFA54; jumptable 001BFA54 default case, cases 0,2-16,18,20
DCD def_1BFA54; jump table for switch statement
LDR             R0, [R4,#8]; jumptable 001BFA54 case 1
LDR             R1, [R0,#0x584]
CMP             R1, #0
BEQ             loc_1BFB0C
LDRH            R0, [R0,#2]
CMP             R0, #0
BNE             def_1BFA54; jumptable 001BFA54 default case, cases 0,2-16,18,20
MOV             R0, R1
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             loc_1BFB0C
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x584]
CMP             R0, #0
BNE             def_1BFA54; jumptable 001BFA54 default case, cases 0,2-16,18,20
LDR             R1, [R4,#4]
VLDR            S0, =0.0
LDR             R0, =0x2005B
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
LDR             R1, [R4,#8]
STR             R0, [R1,#0x584]
VPOP            {D8}; jumptable 001BFA54 default case, cases 0,2-16,18,20
POP             {R4-R8,PC}
LDR             R7, =off_6D1648; jumptable 001BFA54 case 17
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
MOV             R2, R6
MOV             R1, #0xD
BL              sub_168114
ADD             R5, R4, #0x1000
LDR             R0, [R5,#0x1E0]
CMP             R0, #0
BNE             loc_1BFB7C
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
MOV             R3, #0
MOV             R2, R6
MOV             R1, #0xE
BL              sub_168114
STR             R0, [R5,#0x1E0]
LDR             R0, [R5,#0x1E4]
CMP             R0, #0
BNE             loc_1BFBA4
LDR             R1, [R4,#4]
LDR             R0, =0x20057
MOV             R2, #0
VLDR            S1, =64.68
VLDR            S0, =0.0
BL              sub_1459F8
STR             R0, [R5,#0x1E4]
LDR             R1, [R4,#4]
VLDR            S0, =0.0
LDR             R0, =0x2007F
MOV             R2, #0
VPOP            {D8}
VMOV.F32        S1, S0
POP             {R4-R8,LR}
B               sub_1459F8
LDR             R1, [R4,#4]; jumptable 001BFA54 case 19
VLDR            S0, =0.0
LDR             R0, =0x2005D
MOV             R2, #0
VPOP            {D8}
VMOV.F32        S1, S0
POP             {R4-R8,LR}
B               sub_1459F8
ADD             R5, R4, #0x1000; jumptable 001BFA54 case 22
LDR             R0, [R5,#0x1E0]
CMP             R0, #0
BNE             loc_1BFC14
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R3, #0
MOV             R2, R6
MOV             R1, #0xE
BL              sub_168114
STR             R0, [R5,#0x1E0]
LDR             R0, [R5,#0x1E4]
CMP             R0, #0
BNE             loc_1BFC3C
LDR             R1, [R4,#4]
LDR             R0, =0x20057
MOV             R2, #0
VLDR            S1, =64.68
VLDR            S0, =0.0
BL              sub_1459F8
STR             R0, [R5,#0x1E4]
LDR             R1, [R4,#4]
VLDR            S0, =0.0
LDR             R0, =0x208E8
MOV             R2, #0
VPOP            {D8}
VMOV.F32        S1, S0
POP             {R4-R8,LR}
B               sub_1459F8
ADD             R5, R4, #0x1000; jumptable 001BFA54 case 23
LDR             R0, [R5,#0x1E0]
CMP             R0, #0
BNE             loc_1BFC8C
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R3, #0
MOV             R2, R6
MOV             R1, #0xE
BL              sub_168114
STR             R0, [R5,#0x1E0]
LDR             R0, [R5,#0x1E4]
CMP             R0, #0
BNE             def_1BFA54; jumptable 001BFA54 default case, cases 0,2-16,18,20
LDR             R1, [R4,#4]
LDR             R0, =0x20057
MOV             R2, #0
VLDR            S1, =64.68
VLDR            S0, =0.0
BL              sub_1459F8
STR             R0, [R5,#0x1E4]
VPOP            {D8}
POP             {R4-R8,PC}
ADD             R4, R4, #0x1000; jumptable 001BFA54 case 21
LDR             R0, [R4,#0x1E0]
CMP             R0, #0
BEQ             loc_1BFCD8
BL              sub_533330
MOV             R0, #0
STR             R0, [R4,#0x1E0]
LDR             R0, [R4,#0x1E4]
CMP             R0, #0
BEQ             def_1BFA54; jumptable 001BFA54 default case, cases 0,2-16,18,20
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
STR             R0, [R4,#0x1E4]
VPOP            {D8}
POP             {R4-R8,PC}
ADD             R5, R4, #0x1000; jumptable 001BFA54 case 24
LDR             R0, [R5,#0x1EC]
CMP             R0, #0
BNE             loc_1BFD2C
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R3, #0
MOV             R2, R6
MOV             R1, #0x55 ; 'U'
BL              sub_168114
STR             R0, [R5,#0x1EC]
VLDR            S16, =0.0
LDR             R1, [R4,#4]
LDR             R0, =0x20080
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R2, #0
BL              sub_1459F8
VMOV.F32        S1, S16
VMOV.F32        S0, S16
LDR             R1, [R4,#4]
LDR             R0, =0x20058
MOV             R2, #0
BL              sub_1459F8
VMOV.F32        S1, S16
VMOV.F32        S0, S16
LDR             R1, [R4,#4]
LDR             R0, =0x20059
MOV             R2, #0
BL              sub_1459F8
STR             R0, [R5,#0x1E8]
VPOP            {D8}
POP             {R4-R8,PC}
ADD             R4, R4, #0x1000; jumptable 001BFA54 case 25
LDR             R0, [R4,#0x1F0]
CMP             R0, #0
BEQ             def_1BFA54; jumptable 001BFA54 default case, cases 0,2-16,18,20
BL              sub_533330
MOV             R0, #0
NOP
B               loc_1BFDD0
ADD             R4, R4, #0x1000; jumptable 001BFA54 case 26
LDR             R0, [R4,#0x1F0]
CMP             R0, #0
BNE             def_1BFA54; jumptable 001BFA54 default case, cases 0,2-16,18,20
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R3, #0
MOV             R2, R5
MOV             R1, #0x89
BL              sub_168114
STR             R0, [R4,#0x1F0]
VPOP            {D8}
POP             {R4-R8,PC}
ADD             R5, R4, #0x1000; jumptable 001BFA54 case 27
LDR             R0, [R5,#0x1EC]
CMP             R0, #0
BEQ             loc_1BFDF8
BL              sub_533330
MOV             R0, #0
STR             R0, [R5,#0x1EC]
LDR             R0, [R5,#0x1E8]
CMP             R0, #0
BEQ             loc_1BFE14
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
STR             R0, [R5,#0x1E8]
LDR             R0, [R5,#0x1F0]
CMP             R0, #0
BEQ             loc_1BFE2C
BL              sub_533330
MOV             R0, #0
STR             R0, [R5,#0x1F0]
LDR             R1, [R4,#4]
VLDR            S0, =0.0
LDR             R0, =0x2005A
MOV             R2, #0
VPOP            {D8}
VMOV.F32        S1, S0
POP             {R4-R8,LR}
B               sub_1459F8
