PUSH            {R0,R1,R4-R11,LR}
MOV             R10, R0
LDR             R0, =off_6BC3B4
VPUSH           {D8}
SUB             SP, SP, #0x34
STR             R0, [SP,#0x68+var_60]
LDR             R0, [R10,#0x11C]
LDR             R9, [R10,#0x118]
CMP             R0, R9
BEQ             loc_284AA8
ADD             R8, SP, #0x68+var_58
VLDR            S17, =0.0
LDR             R0, [R9]
MOV             R1, #0
LDRB            R2, [R0]
CMP             R2, #0
BNE             loc_2847AC
ADD             R3, R0, #8
LDR             R0, [SP,#0x68+var_60]
ADD             R12, SP, #0x68+var_40
LDR             R2, [SP,#0x68+var_28]
ADD             R1, SP, #0x68+var_60
LDR             R4, [R0,#0xC]
MOV             R0, R12
BLX             R4
LDRB            R0, [SP,#0x68+var_40]
MOV             R1, #1
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_2847B0
MOV             R0, #0
CMP             R1, #0
LDRNE           R1, [SP,#0x68+var_3C]
CMPNE           R1, #0
MOVNE           R1, #0
STRNE           R1, [SP,#0x68+var_3C]
CMP             R0, #0
BEQ             loc_284A98
LDR             R0, [R9]
LDRB            R0, [R0,#1]
CMP             R0, #4
BEQ             loc_284924
LDR             R0, [R10,#0x94]
MOV             R6, #0
LDR             R1, [R0],#0x40
LDR             R11, [R1,#0x3C]
LDR             R1, =off_6CE970
VLDR            S0, [R11,#0x3C]
LDR             R1, [R1]
LDR             R2, [R11,#0x148]
VLDR            S16, [R11,#0x144]
ADD             R1, R1, #0x100000
ADD             R1, R1, #0xC400
VLDR            S1, [R1,#(loc_10C4EC - 0x10C400)]
STR             R2, [SP,#0x68+var_68]
VMUL.F32        S0, S1, S0
VMOV            R1, S0
STR             R1, [SP,#0x68+var_64]
LDM             R0, {R4,R7}
CMP             R4, R7
BEQ             loc_2848B0
LDR             R0, [R4]
ADD             R1, SP, #0x68+var_58
STR             R0, [SP,#0x68+var_5C]
ADD             R0, R4, #4
STR             R0, [SP,#0x68+var_58]
LDR             R2, [R4,#8]
STR             R2, [SP,#0x68+var_54]
STR             R1, [R2]
STR             R1, [R4,#8]
LDR             R0, [SP,#0x68+var_5C]
LDRB            R0, [R0,#0x3FC]
CMP             R0, #0
CMPNE           R0, #1
LDR             R0, [SP,#0x68+var_54]
MOVEQ           R5, #1
MOVNE           R5, #0
CMP             R0, R8
BNE             loc_284890
LDR             R0, [SP,#0x68+var_5C]
CMP             R0, #0
BEQ             loc_284890
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x68+var_58]
CMP             R5, #0
ADDNE           R6, R6, #1
ADD             R4, R4, #0xC
STR             R1, [R0,#4]
CMP             R4, R7
STR             R0, [R1]
BNE             loc_284828
VMOV            S0, R6
VLDR            S1, [R11,#0x14C]
VCVT.F32.U32    S0, S0
VMLA.F32        S16, S0, S1
VMOV            R7, S16
LDR             R0, =off_6CE970
LDR             R4, [R9]
LDR             R2, =0x30224
MOV             R3, #0
LDR             R12, [R0]
LDR             R0, =0xFFE683CC
ADD             R1, R4, #0x98
SUB             R0, R12, R0
BL              sub_503720
MOV             R2, #0
ADD             R1, SP, #0x68+var_5C
ADD             R0, R4, #0x98
BL              sub_5C4F84
LDR             R0, [R4,#4]
LDRB            R1, [R4,#1]
LDR             R5, [R0,#0x3C]
CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_284908; jumptable 00284908 default case
DCD loc_28494C; jump table for switch statement
LDR             R0, =off_6CDCE8
LDR             R0, [R0]
BL              sub_5CDB34
LDR             R0, [R0,#8]
STR             R0, [SP,#0x68+var_64]
LDR             R0, [R10,#0x120]
LDR             R7, [R0,#0x18]
LDR             R0, [R0,#0x1C]
STR             R0, [SP,#0x68+var_68]
B               loc_2848C4
LDR             R11, [R0]; jumptable 00284908 case 0
MOV             R0, #0xA
STR             R0, [SP,#0x68+var_50]
B               def_284908; jumptable 00284908 default case
LDR             R11, [R0,#4]; jumptable 00284908 case 1
MOV             R0, #8
B               loc_284970
LDR             R11, [R0,#8]; jumptable 00284908 case 2
MOV             R0, #6
STR             R0, [SP,#0x68+var_50]
ADD             R6, R4, #0x98; jumptable 00284908 default case
MOV             R1, #1
MOV             R0, R6
BL              sub_14C450
LDR             R0, [R6]
MOV             R2, #0
MOV             R1, R11
LDR             R3, [R0,#0x58]
MOV             R0, R6
BLX             R3
MOV             R2, #1
MOV             R1, R2
MOV             R0, R6
BL              sub_14B798
MOV             R0, #0
STRB            R0, [R6,#0xF1]
VLDR            S1, [R5,#0x38C]
VLDR            S0, [SP,#0x68+var_5C]
MOV             R1, #2
ADD             R0, R4, #0x98
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_5C]
VLDR            S1, [R5,#0x390]
VLDR            S0, [SP,#0x68+var_58]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_58]
VLDR            S1, [R5,#0x394]
VLDR            S0, [SP,#0x68+var_54]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_54]
BL              sub_14C450
ADD             R1, SP, #0x68+var_5C
ADD             R0, R4, #0x98
BL              sub_14E984
LDR             R0, [SP,#0x68+var_50]
MOV             R3, #0x100
MOV             R2, #0
AND             R1, R0, #0xFF
ADD             R0, R4, #0x98
BL              sub_14C548
VLDR            S2, =1.0
VSTR            S17, [SP,#0x68+var_4C]
VSTR            S2, [SP,#0x68+var_48]
VSTR            S17, [SP,#0x68+var_44]
VLDR            S0, [R5,#0x3A4]
ADD             R1, SP, #0x68+var_4C
VLDR            S1, [R5,#0x398]
VADD.F32        S2, S0, S2
ADD             R0, R4, #0x274
BL              sub_5A3264
LDRD            R2, R3, [SP,#0x68+var_68]
ADD             R6, R4, #0x400
ADD             R6, R6, #0xF8
STR             R7, [R4,#0x4F4]
STM             R6, {R2,R3}
MOV             R0, #2
MOV             R1, #1
STRB            R0, [R4]
STRB            R1, [R4,#0x500]
LDR             R0, [R10,#0x124]
CMP             R0, #0
BEQ             loc_284A98
LDR             R0, [R9]
BIC             R1, R1, #0xFF
LDRB            R12, [R0,#1]
ADD             R0, R0, #0xBC
LDM             R0, {R2-R4}
ORR             R1, R1, R12
STMEA           SP, {R4,R10}
LDR             R0, [R10,#0x124]
LDR             R12, [R0]
LDR             R12, [R12,#8]
BLX             R12
LDR             R0, [R10,#0x11C]
ADD             R9, R9, #0xC
CMP             R0, R9
BNE             loc_284764
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8}
ADD             SP, SP, #8
POP             {R4-R11,PC}
DCD off_6BC3B4
DCFS 0.0
DCD off_6CE970
DCD 0x30224
DCD 0xFFE683CC
DCD off_6CDCE8
DCFS 1.0
LDR             R11, [R0,#0xC]; jumptable 00284908 case 3
MOV             R0, #7
B               loc_284970
LDR             R11, [R0,#0x10]; jumptable 00284908 case 4
MOV             R0, #0xB
B               loc_284970
