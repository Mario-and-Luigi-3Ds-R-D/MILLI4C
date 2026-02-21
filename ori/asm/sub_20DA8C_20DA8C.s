LDR             R0, =off_6CE970
PUSH            {R4,LR}
SUB             SP, SP, #0x10
MOV             R4, R2
LDR             R0, [R0]
BL              sub_52F480
SUB             R1, R4, #0x50 ; 'P'
VLDR            S0, =0.0
CMP             R1, #0x35; switch 53 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_20DAB0; jumptable 0020DAB0 default case
DCD loc_20DB8C, loc_20DBA4, loc_20DBBC, loc_20DBD4; jump table for switch statement
ADD             R0, R0, #0x100; jumptable 0020DAB0 case 0
LDRSH           R0, [R0,#0x44]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
ADD             SP, SP, #0x10; jumptable 0020DAB0 default case
POP             {R4,PC}
ADD             R0, R0, #0x100; jumptable 0020DAB0 case 1
LDRSH           R0, [R0,#0x46]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
ADD             R0, R0, #0x100; jumptable 0020DAB0 case 2
LDRSH           R0, [R0,#0x48]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
ADD             R0, R0, #0x100; jumptable 0020DAB0 case 3
LDRSH           R0, [R0,#0x4A]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
ADD             R0, R0, #0x100; jumptable 0020DAB0 case 4
LDRSH           R0, [R0,#0x4C]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
ADD             R0, R0, #0x100; jumptable 0020DAB0 case 5
LDRSH           R0, [R0,#0x4E]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
ADD             R0, R0, #0x100; jumptable 0020DAB0 case 6
LDRSH           R0, [R0,#0x50]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
ADD             R0, R0, #0x100; jumptable 0020DAB0 case 7
LDRSH           R0, [R0,#0x52]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
ADD             R0, R0, #0x100; jumptable 0020DAB0 case 8
LDRSH           R0, [R0,#0x54]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
LDR             R1, [R0]; jumptable 0020DAB0 case 9
LDR             R1, [R1,#0x58]
BLX             R1
VMOV            S0, R0
VLDR            S1, =0.01
ADD             SP, SP, #0x10
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
POP             {R4,PC}
LDR             R1, [R0]; jumptable 0020DAB0 case 10
LDR             R2, [R1,#0x5C]
MOV             R1, #0
BLX             R2
VMOV            S0, R0
VLDR            S1, =0.01
ADD             SP, SP, #0x10
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
POP             {R4,PC}
LDR             R1, [R0]; jumptable 0020DAB0 case 11
LDR             R1, [R1,#0x60]
BLX             R1
VMOV            S0, R0
VLDR            S1, =0.01
ADD             SP, SP, #0x10
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
POP             {R4,PC}
LDR             R1, [R0]; jumptable 0020DAB0 case 12
LDR             R1, [R1,#0x64]
BLX             R1
VMOV            S0, R0
VLDR            S1, =0.01
ADD             SP, SP, #0x10
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
POP             {R4,PC}
LDR             R1, [R0]; jumptable 0020DAB0 case 13
LDR             R1, [R1,#0x14]
BLX             R1
VMOV            S0, R0
VLDR            S1, =0.01
ADD             SP, SP, #0x10
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
POP             {R4,PC}
LDRSB           R0, [R0,#0x14]; jumptable 0020DAB0 case 14
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4,PC}
NOP; jumptable 0020DAB0 case 15
BL              sub_5EC8D8
CMP             R0, #0
NOP
BEQ             loc_20DD50
ADD             SP, SP, #0x10
VLDR            S0, =1.0
POP             {R4,PC}
ADD             SP, SP, #0x10
VLDR            S0, =0.0
POP             {R4,PC}
ADD             R0, R0, R4,LSL#2; jumptable 0020DAB0 cases 16-18
VLDR            S0, [R0,#-0x164]
ADD             SP, SP, #0x10
POP             {R4,PC}
MOV             R1, #0; jumptable 0020DAB0 case 19
BL              sub_5EC708
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4,PC}
DCD off_6CE970
DCFS 0.0
DCFS 0.01
DCFS 1.0
MOV             R1, #0; jumptable 0020DAB0 case 20
STR             R1, [SP,#0x18+var_18]
MOV             R1, SP
BL              sub_5EC708
VLDR            S0, [SP,#0x18+var_18]
NOP
B               loc_20DDFC
NOP; jumptable 0020DAB0 case 21
BL              sub_5EC730
CMP             R0, #0
NOP
BEQ             loc_20DD50
B               loc_20DD44
NOP; jumptable 0020DAB0 case 22
BL              sub_5EC230
CMP             R0, #0
NOP
BEQ             loc_20DD50
B               loc_20DD44
LDRB            R0, [R0,#0x180]; jumptable 0020DAB0 case 23
CMP             R0, #0
BEQ             loc_20DD50
B               loc_20DD44
ADD             R0, R0, #0x100; jumptable 0020DAB0 case 24
LDRSH           R0, [R0,#0x88]
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.S32    S0, S0
POP             {R4,PC}
NOP; jumptable 0020DAB0 case 25
BL              sub_5EC8F0
CMP             R0, #0
NOP
BEQ             loc_20DD50
B               loc_20DD44
NOP; jumptable 0020DAB0 case 26
BL              sub_5EC8CC
CMP             R0, #0
NOP
BEQ             loc_20DD50
B               loc_20DD44
ADD             R0, R0, R4,LSL#2; jumptable 0020DAB0 cases 27-35
VLDR            S0, [R0,#-0x54]
ADD             SP, SP, #0x10
POP             {R4,PC}
MOV             R2, #1; jumptable 0020DAB0 cases 36-38
MOV             R1, SP
BL              sub_5EC7D4
ADD             R0, R0, R4,LSL#2
VLDR            S0, [R0,#-0x1D0]
ADD             SP, SP, #0x10
POP             {R4,PC}
MOV             R2, #1; jumptable 0020DAB0 cases 39-41
MOV             R1, SP
BL              sub_5EC884
ADD             R0, R0, R4,LSL#2
VLDR            S0, [R0,#-0x1DC]
ADD             SP, SP, #0x10
POP             {R4,PC}
VLDR            S0, =1.0; jumptable 0020DAB0 cases 42-44
MOV             R1, SP
BL              sub_5EC814
ADD             R0, R0, R4,LSL#2
VLDR            S0, [R0,#-0x1E8]
ADD             SP, SP, #0x10
POP             {R4,PC}
LDRB            R0, [R0,#0x181]; jumptable 0020DAB0 case 45
CMP             R0, #0
BEQ             loc_20DD50
B               loc_20DD44
VLDR            S0, [R0,#0x18C]; jumptable 0020DAB0 case 46
B               loc_20DF20
NOP; jumptable 0020DAB0 case 47
BL              sub_5EC344
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R1, [R0]; jumptable 0020DAB0 case 48
LDR             R1, [R1,#0x28]
BLX             R1
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDRB            R0, [R0,#0x184]; jumptable 0020DAB0 case 49
CMP             R0, #0
BEQ             loc_20DD50
B               loc_20DD44
LDRB            R0, [R0,#0x185]; jumptable 0020DAB0 case 50
CMP             R0, #0
BEQ             loc_20DD50
B               loc_20DD44
LDRB            R0, [R0,#0x186]; jumptable 0020DAB0 case 51
CMP             R0, #0
BEQ             loc_20DD50
B               loc_20DD44
LDRB            R0, [R0,#0x187]; jumptable 0020DAB0 case 52
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4,PC}
