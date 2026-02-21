PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R12, =off_6CE970
SUB             R1, R1, #3
CMP             R1, #8; switch 8 cases
MOV             R0, #0
MOV             R5, #1
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1C6DDC; jumptable 001C6DDC default case, cases 1-4
DCD loc_1C6EB0; jump table for switch statement
LDR             R1, [R4,#0x1C]; jumptable 001C6DDC case 5
STRB            R0, [R1,#0xF3]
LDRB            R0, [R4,#0x40]
CMP             R0, #0
BNE             def_1C6DDC; jumptable 001C6DDC default case, cases 1-4
MOV             R0, #5
STRB            R0, [R4]
LDR             R0, [R4,#0x1C]
ADD             SP, SP, #4
MOV             R3, #0x100
POP             {R4,R5,LR}
MOV             R2, #1
MOV             R1, #3
B               sub_14C430
LDR             R0, =off_6CE118; jumptable 001C6DDC case 6
VLDR            S1, =0.3
VLDR            S2, =6.2832
LDR             R2, =0x301C9
LDR             R0, [R0]
MOV             R3, #0
MOV             R1, #0x1000
LDR             R0, [R0,#8]
VLDR            S0, [R0,#0x270]
VCVT.F32.U32    S0, S0
VADD.F32        S0, S0, S1
VMUL.F32        S0, S0, S2
VSTR            S0, [R4,#0x2C]
LDR             R0, [R12]
LDR             R12, =0xFFE683CC
SUB             R0, R0, R12
BL              sub_503808
MOV             R0, #4
STRB            R0, [R4]
STRB            R5, [R4,#0x40]
POP             {R3-R5,PC}; jumptable 001C6DDC default case, cases 1-4
LDR             R0, [R4,#0x1C]; jumptable 001C6DDC case 7
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #2
BL              sub_14C430
MOV             R0, #2
STRB            R0, [R4]
POP             {R3-R5,PC}
LDRB            R1, [R4]; jumptable 001C6DDC case 0
STRB            R5, [R4,#0x41]
CMP             R1, #0xC
BEQ             loc_1C6F10
CMP             R1, #0xD
BEQ             def_1C6DDC; jumptable 001C6DDC default case, cases 1-4
MOV             R1, #6
STRB            R1, [R4]
STRB            R0, [R4,#0x42]
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R12]
LDR             R12, =0x10D4D8
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R0, R12; loc_10D4D8
BL              sub_4E3CA0
LDR             R0, [R4,#0x1C]
ADD             SP, SP, #4
MOV             R2, #0
POP             {R4,R5,LR}
MOV             R3, #0x100
MOV             R1, R2
B               sub_14C430
MOV             R0, R4
POP             {R3-R5,LR}
B               sub_1C5AE0
