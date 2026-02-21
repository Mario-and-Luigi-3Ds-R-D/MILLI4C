PUSH            {R4-R6,LR}
ADD             R1, R2, #8
VPUSH           {D8}
LDR             R0, [R2,#0x10]
LDM             R1, {R1,R3}
VLDR            S16, [R2,#0x74]
AND             R5, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
SXTB            R6, R3
LDR             R0, [R0]
BL              sub_528EB0
MOV             R4, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x4C]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             def_20D05C; jumptable 0020D05C default case, cases 0,4
LDR             R0, [R4]
LDR             R1, [R0,#0x4C]
MOV             R0, R4
BLX             R1
ADD             R1, R6, R6,LSL#1
ADD             R0, R0, R1,LSL#3
ADDS            R0, R0, #0xD8
BEQ             def_20D05C; jumptable 0020D05C default case, cases 0,4
CMP             R5, #6; switch 6 cases
VLDR            S0, =256.0
LDRCC           PC, [PC,R5,LSL#2]; switch jump
B               def_20D05C; jumptable 0020D05C default case, cases 0,4
DCD def_20D05C; jump table for switch statement
VCVT.S32.F32    S0, S16; jumptable 0020D05C case 1
VMOV            R1, S0
STRH            R1, [R0,#6]
B               def_20D05C; jumptable 0020D05C default case, cases 0,4
VMUL.F32        S0, S16, S0; jumptable 0020D05C case 2
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
BL              sub_123CE8
NOP
NOP
B               def_20D05C; jumptable 0020D05C default case, cases 0,4
VLDR            S0, =0.0; jumptable 0020D05C case 3
LDRH            R2, [R0,#0xA]
VCMP.F32        S16, S0
BIC             R2, R2, #2
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
ORR             R1, R2, R1,LSL#1
STRH            R1, [R0,#0xA]
B               def_20D05C; jumptable 0020D05C default case, cases 0,4
VMUL.F32        S0, S16, S0; jumptable 0020D05C case 5
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_485780
VPOP            {D8}; jumptable 0020D05C default case, cases 0,4
MOV             R0, #0
POP             {R4-R6,PC}
