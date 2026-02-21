VMOV            S0, R2
VLDR            S1, =0.5
PUSH            {R0-R11,LR}
SUB             SP, SP, #0xC
VCVT.F32.S32    S0, S0
LDR             R0, =off_6D48F8
LDR             R4, [R0]
VMUL.F32        S0, S0, S1
VMOV            R0, S0
BICS            R1, R0, #0x80000000
BEQ             loc_126B94
MOV             R1, R0,LSL#1
MOV             R1, R1,LSR#24
SUB             R1, R1, #0x40 ; '@'
MOV             R12, R0,LSL#9
CMP             R1, #0
MOV             R12, R12,LSR#16
LDR             R5, =dword_6D2418
LDR             R7, =dword_6D241C
ORRGE           R1, R12, R1,LSL#16
MOV             R0, R0,LSR#31
LDR             R12, [R5]
ORRGE           R1, R1, R0,LSL#23
MOVLT           R1, R0,LSL#23
LDR             R0, [R7]
CMP             R12, R0
BCS             loc_126BD8
LDR             R6, =0xF0041
ADD             R8, R12, #8
STM             R12, {R1,R6}
STR             R8, [R5]
VMOV            S0, R3
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VMOV            R0, S0
BICS            R1, R0, #0x80000000
BEQ             loc_126BFC
MOV             R1, R0,LSL#1
MOV             R1, R1,LSR#24
SUB             R1, R1, #0x40 ; '@'
MOV             R12, R0,LSL#9
CMP             R1, #0
MOV             R12, R12,LSR#16
ORRGE           R1, R12, R1,LSL#16
MOV             R0, R0,LSR#31
LDR             R12, [R5]
ORRGE           R1, R1, R0,LSL#23
MOVLT           R1, R0,LSL#23
LDR             R0, [R7]
CMP             R12, R0
BCS             loc_126C38
LDR             R6, =0xF0043
ADD             R8, R12, #8
STM             R12, {R1,R6}
STR             R8, [R5]
CMP             R2, #0
CMPNE           R3, #0
BEQ             loc_126D78
LDR             LR, =0x36999999
VLDR            S1, =2.0
MOV             R0, #0
STRD            R2, R3, [SP,#0x40+var_40]
MOV             R12, SP
MOV             R8, #0x42 ; 'B'
LDR             R1, [R12,R0,LSL#2]
CMP             R1, #0x280
STREQ           LR, [R12,R0,LSL#2]
BEQ             loc_126D44
BGT             loc_126CB8
CMP             R1, #0x190
LDREQ           R1, =0x3747AE14
BEQ             loc_126D40
BGT             loc_126C9C
CMP             R1, #0xF0
LDREQ           R1, =0x38111111
BEQ             loc_126D40
CMP             R1, #0x140
LDREQ           R1, =0x37999999
BEQ             loc_126D40
B               loc_126CE8
CMP             R1, #0x1E0
LDREQ           R1, =0x37111111
BEQ             loc_126D40
CMP             R1, #0x258
LDREQ           R1, =0x36B4E81B
BEQ             loc_126D40
B               loc_126CE8
CMP             R1, #0x320
LDREQ           R1, =0x3647AE14
BEQ             loc_126D40
CMP             R1, #0x400
MOVEQ           R1, #0x36000000
BEQ             loc_126D40
CMP             R1, #0x4B0
LDREQ           R1, =0x35B4E81B
BEQ             loc_126D40
CMP             R1, #0x500
LDREQ           R1, =0x35999999
BEQ             loc_126D40
VMOV            S0, R1
VCVT.F32.U32    S2, S0
VDIV.F32        S0, S1, S2
VMOV            R9, S0
BICS            R1, R9, #0x80000000
MOVEQ           R6, R9,LSL#9
MOVEQ           R6, R6,LSR#9
BEQ             loc_126D2C
MOV             R1, R9,LSL#1
MOV             R6, R9,LSL#9
MOV             R1, R1,LSR#24
SUB             R1, R1, #0x40 ; '@'
CMP             R1, #0
MOVLT           R1, R9,LSR#31
MOV             R6, R6,LSR#9
MOVLT           R1, R1,LSL#30
BLT             loc_126D38
MOV             R9, R9,LSR#31
ORR             R1, R6, R1,LSL#23
ORR             R1, R1, R9,LSL#30
STR             R1, [R12,R0,LSL#2]
MOV             R1, R1,LSL#1
STR             R1, [R12,R0,LSL#2]
LDR             R6, [R7]
LDR             R1, [R5]
CMP             R1, R6
BCS             loc_126D6C
LDR             R9, [R12,R0,LSL#2]
ADD             R10, R8, R0,LSL#1
ORR             R10, R10, #0xF0000
STM             R1, {R9,R10}
ADD             R11, R1, #8
STR             R11, [R5]
ADD             R0, R0, #1
CMP             R0, #2
BLT             loc_126C5C
LDR             R0, [R7]
LDR             R1, [R5]
CMP             R1, R0
BCS             loc_126DA4
LDR             R6, [SP,#0x40+var_30]
LDR             R12, [SP,#0x40+var_34]
LDR             R7, =0xF0068
ORR             R6, R12, R6,LSL#16
ADD             R12, R1, #8
STRD            R6, R7, [R1]
STR             R12, [R5]
LDR             R0, [SP,#0x40+var_34]
LDRB            R1, [R4,#0x30]
STR             R0, [R4,#0x20]
LDR             R0, [SP,#0x40+var_30]
CMP             R1, #0
ADD             R1, R4, #0x24 ; '$'
STM             R1, {R0,R2,R3}
MOVEQ           R0, #1
STRBEQ          R0, [R4,#0x30]
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
