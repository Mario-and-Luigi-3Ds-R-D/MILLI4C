VLDR            S0, =0.0
CMP             R2, #0xA6; switch 166 cases
PUSH            {R4,LR}
LDRCC           PC, [PC,R2,LSL#2]; switch jump
POP             {R4,PC}; jumptable 0020DF38 default case, case 0
DCD def_20DF38, loc_20E1D8, loc_20E1D8, loc_20E1D8; jump table for switch statement
POP             {R4,LR}; jumptable 0020DF38 cases 1-43
B               sub_20ED68
POP             {R4,LR}; jumptable 0020DF38 cases 44-61
B               sub_20F064
POP             {R4,LR}; jumptable 0020DF38 cases 62-69
B               sub_20E470
LDR             R0, =off_6CE970; jumptable 0020DF38 cases 70-79
MOV             R4, R2
LDR             R0, [R0]
BL              sub_52A63C
SUB             R1, R4, #0x46 ; 'F'
CMP             R1, #0xA; switch 10 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_20E208; jumptable 0020E208 default case
DCD loc_20E240; jump table for switch statement
DCFS 0.0
DCD off_6CE970
ADD             R0, R0, R4,LSL#2; jumptable 0020E208 cases 0-2
VLDR            S0, [R0,#4]
POP             {R4,PC}
VLDR            S0, [R0,#0x128]; jumptable 0020E208 case 3
POP             {R4,PC}
VLDR            S0, [R0,#0x12C]; jumptable 0020E208 case 4
POP             {R4,PC}
VLDR            S0, [R0,#0x130]; jumptable 0020E208 case 5
POP             {R4,PC}
VLDR            S0, [R0,#0x134]; jumptable 0020E208 case 6
POP             {R4,PC}
LDRB            R0, [R0,#0x138]; jumptable 0020E208 case 7
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
ADD             R0, R0, #0x100; jumptable 0020E208 case 8
LDRSB           R0, [R0,#0x39]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
NOP; jumptable 0020E208 case 9
BL              sub_5C8CE0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
VLDR            S0, =0.0; jumptable 0020E208 default case
POP             {R4,PC}
POP             {R4,LR}; jumptable 0020DF38 cases 80-132
B               sub_20DA8C
POP             {R4,LR}; jumptable 0020DF38 cases 133-148
B               sub_20D888
POP             {R4,LR}; jumptable 0020DF38 cases 149-165
NOP
LDR             R0, =off_6CE970
PUSH            {R4,LR}
MOV             R4, R2
LDR             R0, [R0]
BL              sub_52F508
SUB             R1, R4, #0x95
VLDR            S0, =0.0
CMP             R1, #0x11; switch 17 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
POP             {R4,PC}; jumptable 0020E2E4 default case
DCD loc_20E330; jump table for switch statement
NOP; jumptable 0020E2E4 case 0
BL              sub_5ECEE8
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
NOP; jumptable 0020E2E4 case 1
BL              sub_5ED004
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
ADD             R0, R0, #0x200; jumptable 0020E2E4 case 2
LDRH            R0, [R0,#0x44]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDRB            R0, [R0,#0x246]; jumptable 0020E2E4 case 3
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDRB            R0, [R0,#0x249]; jumptable 0020E2E4 case 4
CMP             R0, #0
BEQ             loc_20E390
VLDR            S0, =1.0
POP             {R4,PC}
VLDR            S0, =0.0
POP             {R4,PC}
ADD             R0, R0, #0x200; jumptable 0020E2E4 case 5
LDRH            R0, [R0,#0x10]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
ADD             R0, R0, #0x200; jumptable 0020E2E4 case 6
LDRSH           R0, [R0,#0x12]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
ADD             R0, R0, #0x200; jumptable 0020E2E4 case 7
LDRSH           R0, [R0,#0x14]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
LDRB            R0, [R0,#0x21A]; jumptable 0020E2E4 case 8
CMP             R0, #0
BEQ             loc_20E390
B               loc_20E388
LDRB            R0, [R0,#0x21B]; jumptable 0020E2E4 case 9
CMP             R0, #0
BEQ             loc_20E390
B               loc_20E388
LDRB            R0, [R0,#0x21C]; jumptable 0020E2E4 case 10
CMP             R0, #0
BEQ             loc_20E390
B               loc_20E388
VLDR            S0, [R0,#0x234]; jumptable 0020E2E4 case 11
POP             {R4,PC}
LDRB            R0, [R0,#0x21D]; jumptable 0020E2E4 case 12
CMP             R0, #0
BEQ             loc_20E390
B               loc_20E388
NOP; jumptable 0020E2E4 case 13
BL              sub_5ED140
CMP             R0, #0
NOP
BEQ             loc_20E390
B               loc_20E388
LDRB            R0, [R0,#0x21E]; jumptable 0020E2E4 case 14
CMP             R0, #0
BEQ             loc_20E390
B               loc_20E388
LDRB            R0, [R0,#0x23D]; jumptable 0020E2E4 case 15
CMP             R0, #0
BEQ             loc_20E390
B               loc_20E388
LDRB            R0, [R0,#0x220]; jumptable 0020E2E4 case 16
CMP             R0, #0
BEQ             loc_20E390
B               loc_20E388
