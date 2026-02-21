PUSH            {R4-R8,LR}
MOV             R5, R2
MOV             R6, R0
MOV             R7, R1
VPUSH           {D8}
LDRD            R0, R1, [R5,#8]
VLDR            S16, =0.0
AND             R4, R1, #0xFF
UXTH            R0, R0
CMP             R4, #0x19; switch 25 cases
LDRCC           PC, [PC,R4,LSL#2]; switch jump
B               def_1F4290; jumptable 001F4290 default case
DCD loc_1F42FC; jump table for switch statement
NOP; jumptable 001F4290 cases 0-6
BL              sub_50EFC4
CMP             R4, #7; switch 7 cases
LDRCC           PC, [PC,R4,LSL#2]; switch jump
B               def_1F4290; jumptable 001F4290 default case
DCD loc_1F432C; jump table for switch statement
LDRH            R0, [R0]; jumptable 001F4308 case 0
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRH            R0, [R0,#2]; jumptable 001F4308 case 1
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRH            R0, [R0,#4]; jumptable 001F4308 case 2
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRH            R0, [R0,#6]; jumptable 001F4308 case 3
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRB            R0, [R0,#8]; jumptable 001F4308 case 4
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
VLDR            S0, [R0,#0xC]; jumptable 001F4308 case 5
B               loc_1F44B0
VLDR            S0, [R0,#0x10]; jumptable 001F4308 case 6
B               loc_1F44B0
NOP; jumptable 001F4290 cases 7-14
BL              sub_50EFA0
SUB             R1, R4, #7
CMP             R1, #8; switch 8 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1F4290; jumptable 001F4290 default case
DCD loc_1F44A0; jump table for switch statement
LDRSH           R0, [R0,#0x16]; jumptable 001F439C case 1
VMOV            S0, R0
VCVT.F32.S32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRH            R0, [R0,#0x18]; jumptable 001F439C case 2
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRH            R0, [R0,#0x18]; jumptable 001F439C case 3
MOV             R0, R0,LSL#30
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRH            R0, [R0,#0x18]; jumptable 001F439C case 4
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#30
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRH            R0, [R0,#0x18]; jumptable 001F439C case 5
MOV             R0, R0,LSL#27
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRH            R0, [R0,#0x18]; jumptable 001F439C case 6
MOV             R0, R0,LSL#25
MOV             R0, R0,LSR#30
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRH            R0, [R0,#0x18]; jumptable 001F439C case 7
MOV             R0, R0,LSL#21
MOV             R0, R0,LSR#28
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
NOP; jumptable 001F4290 cases 15-24
BL              sub_11CA94
SUB             R1, R4, #0xF
CMP             R1, #0xA; switch 10 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1F4290; jumptable 001F4290 default case
DCD loc_1F44A0; jump table for switch statement
LDRB            R0, [R0,#0x14]; jumptable 001F439C case 0
B               loc_1F44AC
LDRB            R0, [R0,#0x15]; jumptable 001F4470 case 1
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRSH           R0, [R0,#0x16]; jumptable 001F4470 case 2
B               loc_1F44C4
LDRSH           R0, [R0,#0x18]; jumptable 001F4470 case 3
VMOV            S0, R0
B               loc_1F4518
LDRSH           R0, [R0,#0x1A]; jumptable 001F4470 case 4
VMOV            S0, R0
VCVT.F32.S32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRSH           R0, [R0,#0x1C]; jumptable 001F4470 case 5
VMOV            S0, R0
VCVT.F32.S32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRSH           R0, [R0,#0x1E]; jumptable 001F4470 case 6
VMOV            S0, R0
VCVT.F32.S32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
LDRSH           R0, [R0,#0x20]; jumptable 001F4470 case 7
VMOV            S0, R0
VCVT.F32.S32    S16, S0
B               def_1F4290; jumptable 001F4290 default case
VLDR            S0, [R0,#0x24]; jumptable 001F4470 case 8
B               loc_1F4518
VLDR            S0, [R0,#0x28]; jumptable 001F4470 case 9
VCVT.F32.S32    S16, S0
LDRH            R0, [R5,#2]; jumptable 001F4290 default case
MOV             R2, R7
MOV             R1, R6
VMOV.F32        S0, S16
BL              sub_145730
VPOP            {D8}
MOV             R0, #0
POP             {R4-R8,PC}
