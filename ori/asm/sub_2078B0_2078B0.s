PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R4, R2
LDR             R1, [R2,#8]!
MOV             R7, R0
LDR             R0, [R2,#4]
UXTH            R1, R1
AND             R6, R0, #0xFF
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
VLDR            S0, =0.0
CMP             R6, #0x1E; switch 30 cases
ADD             R0, R0, #0x1C0
LDRCC           PC, [PC,R6,LSL#2]; switch jump
B               def_2078E8; jumptable 002078E8 default case
DCD loc_207968; jump table for switch statement
LDRH            R0, [R0]; jumptable 002078E8 case 0
VMOV            S0, R0
B               loc_207988
VLDR            S0, [R0,#4]; jumptable 002078E8 case 1
B               loc_207988
VLDR            S0, [R0,#8]; jumptable 002078E8 case 2
B               loc_207988
VLDR            S0, [R0,#0xC]; jumptable 002078E8 case 3
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRB            R0, [R0,#0x18]; jumptable 002078E8 case 4
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRB            R0, [R0,#0x19]; jumptable 002078E8 case 5
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRB            R0, [R0,#0x19]; jumptable 002078E8 case 6
MOV             R0, R0,LSL#30
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRB            R0, [R0,#0x19]; jumptable 002078E8 case 7
MOV             R0, R0,LSL#29
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRB            R0, [R0,#0x19]; jumptable 002078E8 case 8
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x1A]; jumptable 002078E8 case 9
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x1C]; jumptable 002078E8 case 10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x1E]; jumptable 002078E8 case 11
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x20]; jumptable 002078E8 case 12
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x22]; jumptable 002078E8 case 13
AND             R0, R0, #3
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x22]; jumptable 002078E8 case 14
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#30
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x22]; jumptable 002078E8 case 15
MOV             R0, R0,LSL#26
MOV             R0, R0,LSR#30
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x22]; jumptable 002078E8 case 16
MOV             R0, R0,LSL#24
MOV             R0, R0,LSR#30
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x24]; jumptable 002078E8 case 17
AND             R0, R0, #3
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x24]; jumptable 002078E8 case 18
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#30
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x24]; jumptable 002078E8 case 19
MOV             R0, R0,LSL#26
MOV             R0, R0,LSR#30
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x24]; jumptable 002078E8 case 20
MOV             R0, R0,LSL#24
MOV             R0, R0,LSR#30
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRB            R0, [R0,#0x26]; jumptable 002078E8 case 21
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRB            R0, [R0,#0x27]; jumptable 002078E8 case 22
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x28]; jumptable 002078E8 case 23
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x2A]; jumptable 002078E8 case 24
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x2C]; jumptable 002078E8 case 25
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x2E]; jumptable 002078E8 case 26
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x30]; jumptable 002078E8 case 27
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x32]; jumptable 002078E8 case 28
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_2078E8; jumptable 002078E8 default case
LDRH            R0, [R0,#0x34]; jumptable 002078E8 case 29
VMOV            S0, R0
VCVT.F32.U32    S0, S0
CMP             R5, #0; jumptable 002078E8 default case
LDRH            R0, [R4,#2]
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R7
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
