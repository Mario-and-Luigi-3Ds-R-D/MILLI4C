PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R5, R2
LDR             R1, [R2,#8]!
MOV             R7, R0
LDR             R0, [R2,#4]
UXTH            R1, R1
AND             R4, R0, #0xFF
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F4EC
VLDR            S0, =0.0
CMP             R4, #0x10; switch 16 cases
LDRCC           PC, [PC,R4,LSL#2]; switch jump
B               def_207468; jumptable 00207468 default case
DCD loc_2074B0; jump table for switch statement
LDRH            R0, [R0,#0x12]; jumptable 00207468 case 0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_207468; jumptable 00207468 default case
LDRH            R0, [R0,#0x14]; jumptable 00207468 case 1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_207468; jumptable 00207468 default case
LDRB            R0, [R0,#0x44]; jumptable 00207468 case 2
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_207468; jumptable 00207468 default case
ADD             R0, R0, R4,LSL#2; jumptable 00207468 cases 3-5
VLDR            S0, [R0,#0xC]
B               def_207468; jumptable 00207468 default case
LDRB            R0, [R0,#0x45]; jumptable 00207468 case 6
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_207468; jumptable 00207468 default case
LDRB            R0, [R0,#0x46]; jumptable 00207468 case 7
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_207468; jumptable 00207468 default case
VLDR            S0, [R0,#0x3C]; jumptable 00207468 case 8
B               def_207468; jumptable 00207468 default case
ADD             R0, R0, R4,LSL#2; jumptable 00207468 cases 9-14
VLDR            S0, [R0]
CMP             R6, #0; jumptable 00207468 default case
LDRH            R0, [R5,#2]
ADDNE           R2, R6, #4
MOVEQ           R2, #0
MOV             R1, R7
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
LDRB            R0, [R0,#0x47]; jumptable 00207468 case 15
CMP             R0, #0
VLDRNE          S0, =1.0
VLDREQ          S0, =0.0
B               def_207468; jumptable 00207468 default case
