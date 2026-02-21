PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R8, R0
ADD             R1, R2, #8
VPUSH           {D8}
MOV             R4, R2
LDR             R0, [R2,#0x10]
LDM             R1, {R1,R2}
AND             R6, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
SXTB            R7, R2
LDR             R0, [R0]
BL              sub_528EB0
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BLX             R1
VLDR            S0, =0.0
CMP             R0, #0
BEQ             loc_20CF7C
ADD             R1, R7, R7,LSL#1
ADD             R1, R0, R1,LSL#3
ADDS            R0, R1, #0xD8
BEQ             loc_20CF7C
CMP             R6, #7; switch 7 cases
VLDR            S1, =1.0
VLDR            S2, =0.0039062
LDRCC           PC, [PC,R6,LSL#2]; switch jump
B               def_20CF10; jumptable 0020CF10 default case
DCD loc_20CF34; jump table for switch statement
LDRH            R0, [R0,#0xA]; jumptable 0020CF10 case 0
TST             R0, #1
BNE             loc_20CF7C
VMOV.F32        S0, S1
B               loc_20CF7C
LDRSH           R0, [R0,#6]; jumptable 0020CF10 case 1
VMOV            S0, R0
VCVT.F32.S32    S16, S0
B               def_20CF10; jumptable 0020CF10 default case
LDRSH           R0, [R0,#4]; jumptable 0020CF10 case 2
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S2
B               def_20CF10; jumptable 0020CF10 default case
LDRH            R0, [R0,#0xA]; jumptable 0020CF10 case 3
AND             R0, R0, #2
MOVS            R0, R0,LSR#1
BNE             loc_20CF40
VMOV.F32        S16, S0
B               def_20CF10; jumptable 0020CF10 default case
LDRSH           R0, [R0,#8]; jumptable 0020CF10 case 4
VMOV            S0, R0
VCVT.F32.S32    S16, S0
B               def_20CF10; jumptable 0020CF10 default case
VLDR            S0, [R0]; jumptable 0020CF10 case 5
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S2
B               def_20CF10; jumptable 0020CF10 default case
LDRB            R0, [R1,#0xE8]; jumptable 0020CF10 case 6
VMOV            S0, R0
VCVT.F32.S32    S16, S0
CMP             R5, #0; jumptable 0020CF10 default case
LDRH            R0, [R4,#2]
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R8
VMOV.F32        S0, S16
BL              sub_145730
VPOP            {D8}
MOV             R0, #0
POP             {R4-R8,PC}
