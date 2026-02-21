PUSH            {R4-R11,LR}
SUB             SP, SP, #0xC
LDR             R0, =off_6D48F8
VLDR            S1, =0.5
LDR             R1, [R0]
LDR             R0, [R1,#0x28]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VMOV            R0, S0
BICS            R2, R0, #0x80000000
BEQ             loc_13146C
MOV             R2, R0,LSL#1
MOV             R2, R2,LSR#24
SUB             R2, R2, #0x40 ; '@'
MOV             R3, R0,LSL#9
CMP             R2, #0
MOV             R3, R3,LSR#16
LDR             R12, =dword_6D2418
LDR             R5, =dword_6D241C
ORRGE           R2, R3, R2,LSL#16
MOV             R0, R0,LSR#31
LDR             R3, [R12]
ORRGE           R2, R2, R0,LSL#23
MOVLT           R2, R0,LSL#23
LDR             R0, [R5]
CMP             R3, R0
BCS             loc_1314B0
LDR             R4, =0xF0041
ADD             R6, R3, #8
STM             R3, {R2,R4}
STR             R6, [R12]
LDR             R0, [R1,#0x2C]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VMOV            R0, S0
BICS            R2, R0, #0x80000000
BEQ             loc_1314D8
MOV             R2, R0,LSL#1
MOV             R2, R2,LSR#24
SUB             R2, R2, #0x40 ; '@'
MOV             R3, R0,LSL#9
CMP             R2, #0
MOV             R3, R3,LSR#16
MOV             R0, R0,LSR#31
ORRGE           R2, R3, R2,LSL#16
ORRGE           R3, R2, R0,LSL#23
MOVLT           R3, R0,LSL#23
LDR             R0, [R5]
LDR             R2, [R12]
CMP             R2, R0
BCS             loc_131514
LDR             R4, =0xF0043
ADD             R6, R2, #8
STM             R2, {R3,R4}
STR             R6, [R12]
LDR             R0, [R1,#0x28]
CMP             R0, #0
LDRNE           R2, [R1,#0x2C]
CMPNE           R2, #0
BEQ             loc_131664
LDR             R11, =0x3747AE14
LDR             R6, =0x36999999
VLDR            S1, =2.0
STMEA           SP, {R0,R2}
MOV             R0, #0
ADD             LR, R11, #0xFF000000
MOV             R4, SP
MOV             R7, #0x42 ; 'B'
LDR             R2, [R4,R0,LSL#2]
CMP             R2, #0x280
STREQ           R6, [R4,R0,LSL#2]
BEQ             loc_131630
BGT             loc_1315A4
CMP             R2, #0x190
STREQ           R11, [R4,R0,LSL#2]
BEQ             loc_131630
BGT             loc_131588
CMP             R2, #0xF0
LDREQ           R2, =0x38111111
BEQ             loc_13162C
CMP             R2, #0x140
LDREQ           R2, =0x37999999
BEQ             loc_13162C
B               loc_1315D4
CMP             R2, #0x1E0
LDREQ           R2, =0x37111111
BEQ             loc_13162C
CMP             R2, #0x258
LDREQ           R2, =0x36B4E81B
BEQ             loc_13162C
B               loc_1315D4
CMP             R2, #0x320
STREQ           LR, [R4,R0,LSL#2]
BEQ             loc_131630
CMP             R2, #0x400
MOVEQ           R2, #0x36000000
BEQ             loc_13162C
CMP             R2, #0x4B0
LDREQ           R2, =0x35B4E81B
BEQ             loc_13162C
CMP             R2, #0x500
LDREQ           R2, =0x35999999
BEQ             loc_13162C
VMOV            S0, R2
VCVT.F32.U32    S2, S0
VDIV.F32        S0, S1, S2
VMOV            R2, S0
BICS            R3, R2, #0x80000000
MOVEQ           R8, R2,LSL#9
MOVEQ           R8, R8,LSR#9
BEQ             loc_131618
MOV             R3, R2,LSL#1
MOV             R8, R2,LSL#9
MOV             R3, R3,LSR#24
SUB             R3, R3, #0x40 ; '@'
CMP             R3, #0
MOVLT           R2, R2,LSR#31
MOV             R8, R8,LSR#9
MOVLT           R2, R2,LSL#30
BLT             loc_131624
MOV             R2, R2,LSR#31
ORR             R3, R8, R3,LSL#23
ORR             R2, R3, R2,LSL#30
STR             R2, [R4,R0,LSL#2]
MOV             R2, R2,LSL#1
STR             R2, [R4,R0,LSL#2]
LDR             R2, [R5]
LDR             R3, [R12]
CMP             R3, R2
BCS             loc_131658
LDR             R8, [R4,R0,LSL#2]
ADD             R9, R7, R0,LSL#1
ORR             R9, R9, #0xF0000
ADD             R10, R3, #8
STRD            R8, R9, [R3]
STR             R10, [R12]
ADD             R0, R0, #1
CMP             R0, #2
BLT             loc_131548
LDR             R2, [R12]
LDR             R0, [R5]
CMP             R2, R0
BCS             loc_131694
ADD             R4, R1, #0x20 ; ' '
LDR             R3, =0xF0068
LDM             R4, {R4,R6}
STR             R3, [R2,#4]
ORR             R6, R4, R6,LSL#16
ADD             R4, R2, #8
STR             R6, [R2]
STR             R4, [R12]
LDR             R0, [R5]
LDR             R2, [R12]
CMP             R2, R0
BCS             loc_1316BC
LDR             R0, =dword_6D4900
LDR             R4, =0x30107
ADD             R6, R2, #8
LDR             R3, [R0]
STM             R2, {R3,R4}
STR             R6, [R12]
LDR             R2, [R12]
LDR             R0, [R5]
CMP             R2, R0
BCS             loc_1316E8
LDR             R0, =dword_6D491C
LDR             R3, =0x80126
ADD             R6, R2, #8
LDR             R4, [R0]
STR             R3, [R2,#4]
STR             R4, [R2]
STR             R6, [R12]
LDRB            R0, [R1,#0x64F]
LDR             R7, =0x10062
MOV             R2, #0
CMP             R0, #0
ADD             R4, R7, #0xB6
BEQ             loc_131798
LDR             R0, [R5]
LDR             R3, [R12]
MOV             R6, #1
CMP             R3, R0
BCS             loc_131720
ADD             R8, R3, #8
STRD            R6, R7, [R3]
STR             R8, [R12]
LDR             R0, [R5]
LDR             R3, [R12]
CMP             R3, R0
BCS             loc_1317D0
STR             R4, [R3,#4]
ADD             R7, R3, #8
STR             R6, [R3]
STR             R7, [R12]
B               loc_1317D0
DCD off_6D48F8
DCFS 0.5
DCD dword_6D2418
DCD dword_6D241C
DCD 0xF0041
DCD 0xF0043
DCD 0x3747AE14
DCD 0x36999999
DCFS 2.0
DCD 0x38111111
DCD 0x37999999
DCD 0x37111111
DCD 0x36B4E81B
DCD 0x35B4E81B
DCD 0x35999999
DCD 0xF0068
DCD dword_6D4900
DCD 0x30107
DCD dword_6D491C
DCD 0x80126
DCD 0x10062
LDR             R3, [R12]
LDR             R0, [R5]
CMP             R3, R0
BCS             loc_1317B4
STM             R3, {R2,R7}
ADD             R6, R3, #8
STR             R6, [R12]
LDR             R0, [R5]
LDR             R3, [R12]
CMP             R3, R0
BCS             loc_1317D0
STM             R3, {R2,R4}
ADD             R6, R3, #8
STR             R6, [R12]
LDR             R0, [R12]
LDR             R3, [R5]
CMP             R0, R3
BCS             loc_1317F8
LDR             R3, =dword_6D4914
LDR             R6, =0x10061
ADD             R7, R0, #8
LDR             R4, [R3]
STM             R0, {R4,R6}
STR             R7, [R12]
LDR             R0, [R12]
LDR             R3, [R5]
CMP             R0, R3
BCS             loc_131820
LDR             R3, =dword_6D4918
LDR             R6, =0x7006A
ADD             R7, R0, #8
LDR             R4, [R3]
STM             R0, {R4,R6}
STR             R7, [R12]
LDR             R3, [R12]
LDR             R0, [R5]
CMP             R3, R0
BCS             loc_131848
LDR             R0, =dword_6D490C
LDR             R6, =0xF0102
ADD             R7, R3, #8
LDR             R4, [R0]
STM             R3, {R4,R6}
STR             R7, [R12]
LDRB            R0, [R1,#0x64D]
LDR             R4, =0x20100
CMP             R0, #0
BEQ             loc_131878
LDR             R0, [R5]
LDR             R3, [R12]
CMP             R3, R0
BCS             loc_1318D0
STM             R3, {R2,R4}
ADD             R6, R3, #8
STR             R6, [R12]
B               loc_1318D0
LDR             R0, [R12]
LDR             R3, [R5]
CMP             R0, R3
BCS             loc_1318AC
LDRB            R3, [R1,#0x64C]
LDR             R7, =0xF0101
ADD             R8, R0, #8
CMP             R3, #0
LDRNE           R3, =dword_6D48FC
LDREQ           R6, =0x1010000
LDRNE           R6, [R3]
STRD            R6, R7, [R0]
STR             R8, [R12]
LDR             R3, [R5]
LDR             R0, [R12]
CMP             R3, R0
BLS             loc_1318D0
MOV             R6, #0x100
STR             R4, [R0,#4]
ADD             R7, R0, #8
STR             R6, [R0]
STR             R7, [R12]
LDRB            R0, [R1,#0x3C]
LDR             R4, =0xF0040
CMP             R0, #0
LDR             R0, [R5]
BEQ             loc_131934
LDR             R2, [R12]
CMP             R2, R0
BCS             loc_13194C
LDR             R0, [R1,#0x38]
SUB             R3, R0, #0x400
SUBS            R3, R3, #4
LDR             R3, [R1,#0x34]
MOVEQ           R0, #1
MOVNE           R0, #0
SUB             R6, R3, #0x900
SUBS            R6, R6, #1
MOVEQ           R3, #1
MOVNE           R3, #0
CMP             R0, R3
MOVNE           R3, #2
MOVEQ           R3, #1
STM             R2, {R3,R4}
ADD             R6, R2, #8
STR             R6, [R12]
B               loc_13194C
LDR             R3, [R12]
CMP             R3, R0
BCS             loc_13194C
STM             R3, {R2,R4}
ADD             R6, R3, #8
STR             R6, [R12]
LDR             R2, [R12]
LDR             R0, [R5]
CMP             R2, R0
BCS             loc_13197C
LDRB            R0, [R1,#0x693]
LDR             R4, =0x1011B
ADD             R6, R2, #8
CMP             R0, #0
MOVNE           R3, #1
MOVEQ           R3, #0
STM             R2, {R3,R4}
STR             R6, [R12]
LDR             R2, [R12]
LDR             R0, [R5]
CMP             R0, R2
BLS             loc_1319A4
LDR             R0, =dword_6D4904
LDR             R4, =0xF0105
ADD             R6, R2, #8
LDR             R3, [R0]
STM             R2, {R3,R4}
STR             R6, [R12]
LDR             R2, [R12]
LDR             R0, [R5]
CMP             R2, R0
BCS             loc_1319CC
LDR             R0, =dword_6D4908
LDR             R4, =0xF0106
ADD             R6, R2, #8
LDR             R3, [R0]
STM             R2, {R3,R4}
STR             R6, [R12]
LDR             R0, [R5]
LDR             R2, [R12]
CMP             R2, R0
BCS             loc_1319F4
LDR             R0, =dword_6D4910
LDR             R4, =0xF0103
ADD             R5, R2, #8
LDR             R3, [R0]
STM             R2, {R3,R4}
STR             R5, [R12]
LDR             R0, [R1]
ORR             R0, R0, #0x100
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
