PUSH            {R4-R6,LR}
ADD             R0, R2, #0x10
ADD             R1, R2, #8
VPUSH           {D8}
LDM             R0, {R0,R3}
LDM             R1, {R1,R12}
AND             R5, R0, #0xFF
LDR             R0, =off_6CE970
VLDR            S16, [R2,#0x78]
UXTH            R1, R1
AND             R6, R12, #0xFF
LDR             R0, [R0]
AND             R4, R3, #0xFF
BL              sub_528FF0
MOV             R2, R5
MOV             R1, R6
BL              sub_5ECC58
CMP             R4, #7; switch 7 cases
LDRCC           PC, [PC,R4,LSL#2]; switch jump
B               def_20CA3C; jumptable 0020CA3C default case, cases 0,4,5
DCD def_20CA3C; jump table for switch statement
VCVT.S32.F32    S0, S16; jumptable 0020CA3C case 1
VMOV            R1, S0
STRH            R1, [R0,#0xA]
NOP
NOP
B               def_20CA3C; jumptable 0020CA3C default case, cases 0,4,5
VMOV.F32        S0, S16; jumptable 0020CA3C case 2
BL              sub_5924AC
NOP
NOP
B               def_20CA3C; jumptable 0020CA3C default case, cases 0,4,5
VLDR            S0, =0.0; jumptable 0020CA3C case 3
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
BL              sub_5924CC
NOP
NOP
B               def_20CA3C; jumptable 0020CA3C default case, cases 0,4,5
VMOV.F32        S0, S16; jumptable 0020CA3C case 6
BL              sub_591DB4
VPOP            {D8}; jumptable 0020CA3C default case, cases 0,4,5
MOV             R0, #0
POP             {R4-R6,PC}
