PUSH            {R4,LR}
LDR             R0, =off_6CE970
MOV             R4, R2
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R0]
BL              sub_528EB0
VLDR            S16, =0.0
CMP             R4, #0x2C; switch 44 cases
LDRCC           PC, [PC,R4,LSL#2]; switch jump
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
DCD def_20ED8C; jump table for switch statement
LDRB            R0, [R0,#0xF2]; jumptable 0020ED8C case 1
CMP             R0, #0
BNE             loc_20EFA0
B               loc_20EFA8
LDRSB           R0, [R0,#0xF6]; jumptable 0020ED8C case 2
VMOV            S0, R0
B               loc_20EED4
LDRB            R0, [R0,#0xF0]; jumptable 0020ED8C case 3
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
ADD             R0, R0, R4,LSL#2; jumptable 0020ED8C cases 4-6
VLDR            S16, [R0,#0x14]
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
MOV             R2, #0; jumptable 0020ED8C cases 7-9
MOV             R1, SP
BL              sub_5C4198
ADD             R0, R0, R4,LSL#2
VLDR            S16, [R0,#-0x1C]
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDR             R1, [R0]; jumptable 0020ED8C cases 10-12
MOV             R2, #0
LDR             R3, [R1,#0x2C]
MOV             R1, SP
BLX             R3
ADD             R0, R0, R4,LSL#2
VLDR            S16, [R0,#-0x28]
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDR             R1, [R0]; jumptable 0020ED8C case 13
MOV             R2, #0
LDR             R3, [R1,#0x24]
MOV             R1, SP
BLX             R3
VLDR            S16, [SP,#0x20+var_18]
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
VLDR            S0, [R0,#0x40]; jumptable 0020ED8C case 14
VCVT.F32.S32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
ADD             R0, R0, R4,LSL#2; jumptable 0020ED8C cases 15-17
VLDR            S16, [R0,#0x20]
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
ADD             R0, R0, R4,LSL#2; jumptable 0020ED8C cases 18-20
VLDR            S16, [R0,#-4]
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDR             R0, [R0,#0x9C]; jumptable 0020ED8C case 21
REV             R0, R0
MOV             R0, R0,LSR#8
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDR             R0, [R0,#0x9C]; jumptable 0020ED8C case 22
MOV             R0, R0,LSR#24
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDR             R0, [R0,#0xA0]; jumptable 0020ED8C case 23
REV             R0, R0
MOV             R0, R0,LSR#8
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDR             R0, [R0,#0xA0]; jumptable 0020ED8C case 24
MOV             R0, R0,LSR#24
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDRB            R0, [R0,#0xF3]; jumptable 0020ED8C case 26
CMP             R0, #0
BNE             loc_20EFA0
B               loc_20EFA8
LDRB            R0, [R0,#0xF4]; jumptable 0020ED8C case 27
CMP             R0, #0
BNE             loc_20EFA0
B               loc_20EFA8
VLDR            S16, [R0,#0x98]; jumptable 0020ED8C case 28
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDRB            R0, [R0,#0xF1]; jumptable 0020ED8C case 29
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDRB            R0, [R0,#0xF7]; jumptable 0020ED8C case 30
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDRB            R0, [R0,#0xF5]; jumptable 0020ED8C case 31
CMP             R0, #0
BEQ             loc_20EFA8
VLDR            S16, =1.0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
VLDR            S16, =0.0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
ADD             R0, R0, R4,LSL#2; jumptable 0020ED8C cases 32,33
VLDR            S16, [R0,#-0x30]
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
ADD             R0, R0, R4,LSL#2; jumptable 0020ED8C cases 34-36
VLDR            S16, [R0,#-0x58]
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
NOP; jumptable 0020ED8C case 37
BL              sub_5C4A04
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
VLDR            S0, [R0,#0xEC]; jumptable 0020ED8C case 38
VCVT.F32.U32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDRSB           R0, [R0,#0xF8]; jumptable 0020ED8C case 39
VMOV            S0, R0
VCVT.F32.S32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDRSB           R0, [R0,#0xF5]; jumptable 0020ED8C case 40
VMOV            S0, R0
VCVT.F32.S32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDRB            R0, [R0,#0xFC]; jumptable 0020ED8C case 41
VMOV            S0, R0
VCVT.F32.U32    S16, S0
B               def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDR             R1, [R0]; jumptable 0020ED8C cases 42,43
LDR             R1, [R1,#0x54]
BLX             R1
CMP             R4, #0x2A ; '*'
LDRHEQ          R0, [R0,#0x10]
VMOVEQ          S0, R0
BEQ             loc_20EFE0
CMP             R4, #0x2B ; '+'
BNE             def_20ED8C; jumptable 0020ED8C default case, cases 0,25
LDR             R0, [R0,#0x9C]
VMOV            S0, R0
VCVT.F32.U32    S16, S0
ADD             SP, SP, #0x10; jumptable 0020ED8C default case, cases 0,25
VMOV.F32        S0, S16
VPOP            {D8}
POP             {R4,PC}
