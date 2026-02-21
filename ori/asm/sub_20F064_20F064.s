LDR             R0, =off_6CE970
PUSH            {R4,LR}
MOV             R4, R2
LDR             R0, [R0]
BL              sub_528FF0
SUB             R1, R4, #0x2C ; ','
VLDR            S0, =0.0
CMP             R1, #0x12; switch 18 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
POP             {R4,PC}; jumptable 0020F084 default case
DCD loc_20F0D4; jump table for switch statement
MOV             R1, #0xFFFFFFFF; jumptable 0020F084 cases 0-2
BL              sub_5C56CC
ADD             R0, R0, R4,LSL#2
VLDR            S0, [R0,#-0xB0]
POP             {R4,PC}
NOP; jumptable 0020F084 case 3
BL              sub_5C55B8
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
NOP; jumptable 0020F084 case 4
BL              sub_5C5590
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
NOP; jumptable 0020F084 case 5
BL              sub_5C5500
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
POP             {R4,LR}; jumptable 0020F084 case 6
B               sub_5C5510
NOP; jumptable 0020F084 case 7
BL              sub_5C5538
CMP             R0, #0
NOP
BEQ             loc_20F148
VLDR            S0, =1.0
POP             {R4,PC}
VLDR            S0, =0.0
POP             {R4,PC}
NOP; jumptable 0020F084 case 8
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_20F148
B               loc_20F140
NOP; jumptable 0020F084 case 9
BL              sub_5C573C
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
NOP; jumptable 0020F084 case 10
BL              sub_5C5724
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
ADD             R0, R0, #0x300; jumptable 0020F084 case 11
LDRH            R0, [R0,#0xA6]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
MOV             R2, #0xFFFFFFFF; jumptable 0020F084 case 12
MOV             R1, R2
BL              sub_5C55C8
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
POP             {R4,LR}; jumptable 0020F084 case 13
B               sub_5C5564
ADD             R0, R0, #0x300; jumptable 0020F084 case 14
LDRSB           R0, [R0,#0xA8]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
LDRB            R0, [R0,#0x3A9]; jumptable 0020F084 case 15
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
ADD             R0, R0, R4; jumptable 0020F084 cases 16,17
LDRB            R0, [R0,#0x36E]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
