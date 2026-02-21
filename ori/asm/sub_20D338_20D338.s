PUSH            {R4-R10,LR}
MOV             R5, R1
MOV             R4, R2
VPUSH           {D8-D9}
SUB             SP, SP, #0x10
LDR             R0, [R2,#8]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
MOV             R6, R0
LDR             R0, [R4,#0x10]
LDR             R1, [R4,#0xC]
VLDR            S19, =0.0
TST             R0, #0xFF
AND             R8, R1, #0xFF
ADDNE           R0, R6, #0x24 ; '$'
BNE             loc_20D3BC
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_20D3B8
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_20D3B8
LDR             R0, =flt_711FE4
VSTR            S19, [R0]
VSTR            S19, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S19, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
LDR             R1, [R4,#0x14]
MOV             R7, #0
MOV             R4, R7
VLDM            R0, {S16-S18}
LDR             R0, [R5,#4]
ADD             R5, R0, R1
LDR             R1, =0xAAAAAAAB
LDRH            R0, [R5]
AND             R0, R0, #0xFF
UMULL           R1, R0, R1, R0
MOV             R9, R0,LSR#1
CMP             R9, #0
LDRGT           R10, =unk_65B108
BLE             loc_20D714
MOV             R0, R6
LDR             R0, [R0,#0x3F0]
CMP             R0, #0
NOP
BEQ             loc_20D418
LDRB            R1, [R0,#4]
CMP             R1, #0
MOVEQ           R3, R0
BEQ             loc_20D41C
MOV             R3, #0
LDRH            R0, [R5]
AND             R2, R4, #0xFF
AND             R0, R0, #0xF00
MOV             R0, R0,LSR#8
CMP             R0, #9; switch 9 cases
LDRB            R1, [R10,R0]
SMULBB          R2, R1, R2
ADD             R2, R2, R5
ADD             R2, R2, #2
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_20D440; jumptable 0020D440 default case
DCD loc_20D46C; jump table for switch statement
LDRB            R2, [R2]; jumptable 0020D440 case 0
VMOV            S0, R2
VCVT.F32.U32    S0, S0
B               loc_20D508
LDRB            R2, [R2]; jumptable 0020D440 case 3
SXTB            R2, R2
VMOV            S0, R2
VCVT.F32.S32    S0, S0
B               loc_20D508
LDRH            R2, [R2]; jumptable 0020D440 case 1
VMOV            S0, R2
VCVT.F32.U32    S0, S0
B               loc_20D508
LDRH            R2, [R2]; jumptable 0020D440 cases 4,6
SXTH            R2, R2
VMOV            S0, R2
VCVT.F32.S32    S0, S0
B               loc_20D508
LDR             R12, [R2]; jumptable 0020D440 case 2
LDRB            R2, [R2,#3]
BIC             R12, R12, #0xFF000000
ORR             R2, R12, R2,LSL#24
VMOV            S0, R2
VCVT.F32.U32    S0, S0
B               loc_20D508
LDR             R12, [R2]; jumptable 0020D440 cases 5,7
LDRB            R2, [R2,#3]
BIC             R12, R12, #0xFF000000
ORR             R2, R12, R2,LSL#24
VMOV            S0, R2
VCVT.F32.S32    S0, S0
B               loc_20D508
LDR             R12, [R2]; jumptable 0020D440 case 8
LDRB            R2, [R2,#3]
BIC             R12, R12, #0xFF000000
ORR             R2, R12, R2,LSL#24
VMOV            S0, R2
B               loc_20D508
VMOV.F32        S0, S19; jumptable 0020D440 default case
ADD             R2, R4, #1
AND             R2, R2, #0xFF
CMP             R0, #9; switch 9 cases
MLA             R2, R2, R1, R5
ADD             R2, R2, #2
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_20D51C; jumptable 0020D51C default case
DCD loc_20D548; jump table for switch statement
LDRB            R2, [R2]; jumptable 0020D51C case 0
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_20D5E4
LDRB            R2, [R2]; jumptable 0020D51C case 3
SXTB            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_20D5E4
LDRH            R2, [R2]; jumptable 0020D51C case 1
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_20D5E4
LDRH            R2, [R2]; jumptable 0020D51C cases 4,6
SXTH            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_20D5E4
LDR             R12, [R2]; jumptable 0020D51C case 2
LDRB            R2, [R2,#3]
BIC             R12, R12, #0xFF000000
ORR             R2, R12, R2,LSL#24
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_20D5E4
LDR             R12, [R2]; jumptable 0020D51C cases 5,7
LDRB            R2, [R2,#3]
BIC             R12, R12, #0xFF000000
ORR             R2, R12, R2,LSL#24
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_20D5E4
LDR             R12, [R2]; jumptable 0020D51C case 8
LDRB            R2, [R2,#3]
BIC             R12, R12, #0xFF000000
ORR             R12, R12, R2,LSL#24
VMOV            S1, R12
B               loc_20D5E4
VMOV.F32        S1, S19; jumptable 0020D51C default case
ADD             R2, R4, #2
AND             R2, R2, #0xFF
CMP             R0, #9; switch 9 cases
MLA             R1, R1, R2, R5
ADD             R1, R1, #2
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_20D5F8; jumptable 0020D5F8 default case
DCD loc_20D624; jump table for switch statement
LDRB            R0, [R1]; jumptable 0020D5F8 case 0
VMOV            S2, R0
VCVT.F32.U32    S2, S2
B               loc_20D6D8
LDRB            R0, [R1]; jumptable 0020D5F8 case 3
SXTB            R0, R0
VMOV            S2, R0
VCVT.F32.S32    S2, S2
B               loc_20D6D8
DCD off_6CE970
DCFS 0.0
DCD dword_6E1330
DCD flt_711FE4
DCD 0xAAAAAAAB
DCD unk_65B108
LDRH            R0, [R1]; jumptable 0020D5F8 case 1
VMOV            S2, R0
VCVT.F32.U32    S2, S2
B               loc_20D6D8
LDRH            R0, [R1]; jumptable 0020D5F8 cases 4,6
SXTH            R0, R0
VMOV            S2, R0
VCVT.F32.S32    S2, S2
B               loc_20D6D8
LDR             R0, [R1]; jumptable 0020D5F8 case 2
LDRB            R1, [R1,#3]
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R1,LSL#24
VMOV            S2, R0
VCVT.F32.U32    S2, S2
B               loc_20D6D8
LDR             R0, [R1]; jumptable 0020D5F8 cases 5,7
LDRB            R1, [R1,#3]
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R1,LSL#24
VMOV            S2, R0
VCVT.F32.S32    S2, S2
B               loc_20D6D8
LDR             R0, [R1]; jumptable 0020D5F8 case 8
LDRB            R1, [R1,#3]
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R1,LSL#24
VMOV            S2, R0
B               loc_20D6D8
VMOV.F32        S2, S19; jumptable 0020D5F8 default case
MOV             R2, SP
MOV             R1, R8
MOV             R0, R3
VSTMEA          SP, {S0-S2}
VADD.F32        S2, S2, S18
VADD.F32        S0, S0, S16
VADD.F32        S1, S1, S17
VSTMEA          SP, {S0-S2}
BL              sub_3D2190
ADD             R0, R8, #1
ADD             R7, R7, #1
CMP             R7, R9
ADD             R4, R4, #3
AND             R8, R0, #0xFF
BLT             loc_20D3F4
ADD             SP, SP, #0x10
MOV             R0, #0
VPOP            {D8-D9}
POP             {R4-R10,PC}
