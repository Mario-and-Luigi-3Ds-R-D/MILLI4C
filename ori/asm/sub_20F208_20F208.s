PUSH            {R4-R6,LR}
MOV             R5, R2
LDR             R0, =off_6CE970
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0]
BL              sub_528FF0
MOV             R4, R0
SUB             R0, R5, #0x2C ; ','
CMP             R0, #0x12; switch 18 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_20F230; jumptable 0020F230 default case, cases 0-2,8-10,12
DCD def_20F230; jump table for switch statement
MOV             R0, R4; jumptable 0020F230 case 3
BL              sub_5C55DC
MOV             R5, R0
MOV             R0, R4
BL              sub_5C5500
VCVT.S32.F32    S0, S16
SXTH            R2, R0
VPOP            {D8}
MOV             R3, R5
VMOV            R0, S0
AND             R1, R0, #0xFF
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_14C548
VCVT.S32.F32    S0, S16; jumptable 0020F230 case 4
VPOP            {D8}
VMOV            R0, S0
UXTH            R1, R0
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_14F01C
VCVT.S32.F32    S0, S16; jumptable 0020F230 case 5
VPOP            {D8}
MOV             R0, R4
POP             {R4-R6,LR}
VMOV            R1, S0
B               sub_14D5E0
VMOV.F32        S0, S16; jumptable 0020F230 case 6
VPOP            {D8}
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_14D5EC
VLDR            S0, =0.0; jumptable 0020F230 case 7
MOV             R0, R4
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
VPOP            {D8}
POP             {R4-R6,LR}
MOVNE           R1, #1
MOVEQ           R1, #0
B               sub_14D728
VCVT.S32.F32    S0, S16; jumptable 0020F230 case 11
VPOP            {D8}
VMOV            R0, S0
AND             R1, R0, #0xFF
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_14F074
VMOV.F32        S0, S16; jumptable 0020F230 case 13
VPOP            {D8}
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_14D7F4
VLDR            S0, =0.0; jumptable 0020F230 case 14
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R0, #1
MOVEQ           R0, #0
STRB            R0, [R4,#0x3A8]
VPOP            {D8}; jumptable 0020F230 default case, cases 0-2,8-10,12
POP             {R4-R6,PC}
VCVT.U32.F32    S0, S16; jumptable 0020F230 case 15
VMOV            R0, S0
STRB            R0, [R4,#0x3A9]
VPOP            {D8}
POP             {R4-R6,PC}
VCVT.U32.F32    S0, S16; jumptable 0020F230 cases 16,17
ADD             R1, R4, R5
VMOV            R0, S0
STRB            R0, [R1,#0x36E]
VPOP            {D8}
POP             {R4-R6,PC}
