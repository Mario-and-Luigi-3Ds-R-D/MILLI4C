LDR             R0, =off_6CE970
PUSH            {R4-R6,LR}
MOV             R5, R1
MOV             R4, R2
LDR             R0, [R0]
BL              sub_52F368
SUB             R1, R4, #0x85
VLDR            S0, =0.0
CMP             R1, #0x10; switch 16 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
POP             {R4-R6,PC}; jumptable 0020D8AC default case
DCD loc_20D8F4; jump table for switch statement
LDRB            R0, [R0,#0x489]; jumptable 0020D8AC case 0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDRB            R0, [R0,#0x488]; jumptable 0020D8AC case 1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDRB            R0, [R0,#0x48A]; jumptable 0020D8AC case 2
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
ADD             R0, R0, #0x400; jumptable 0020D8AC case 3
LDRSH           R0, [R0,#0x9E]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R0, [R0,#0x470]; jumptable 0020D8AC case 4
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, [R0,#0x480]; jumptable 0020D8AC case 5
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDRB            R0, [R0,#0x48E]; jumptable 0020D8AC case 6
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDRB            R0, [R0,#0x48F]; jumptable 0020D8AC case 7
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDRB            R0, [R0,#0x490]; jumptable 0020D8AC case 8
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
ADD             R0, R0, #0x400; jumptable 0020D8AC case 9
LDRSB           R0, [R0,#0xA2]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
ADD             R0, R0, #0x400; jumptable 0020D8AC case 10
LDRSB           R0, [R0,#0x8C]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDRB            R0, [R0,#0x48D]; jumptable 0020D8AC case 11
CMP             R0, #0
VLDRNE          S0, =1.0
VLDREQ          S0, =0.0
POP             {R4-R6,PC}
ADD             R0, R0, #0x400; jumptable 0020D8AC case 12
LDRSB           R0, [R0,#0xA3]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
MOV             R0, R5; jumptable 0020D8AC cases 13-15
BL              sub_4E2ADC
ADD             R0, R0, R4,LSL#2
VLDR            S0, [R0,#-0x248]
POP             {R4-R6,PC}
