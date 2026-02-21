PUSH            {R4-R6,LR}
MOV             R4, R0
SUB             R0, R3, #0x7000
CMP             R0, #0x41; switch 65 cases
SUB             SP, SP, #0x10
MOV             R5, R3
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_17B408; jumptable 0017B408 default case, case 21
DCD loc_17B514, loc_17B550, loc_17B57C, loc_17B598; jump table for switch statement
LDR             R0, =off_6D1648; jumptable 0017B408 case 0
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
CMP             R0, #0
BEQ             loc_17B744
LDR             R1, [R0,#4]
LDR             R2, [R4,#4]
CMP             R1, R2
BEQ             loc_17B730
B               loc_17B744
LDR             R1, [R2,#0x70]; jumptable 0017B408 case 1
MOV             R0, #1
MOV             R1, R1,LSL#22
CMP             R0, R1,LSR#29
LDRSBEQ         R0, [R2,#0x74]
BEQ             loc_17B56C
MOV             R0, #0xFFFFFFFF
VMOV            S0, R0
VCVT.F32.S32    S0, S0
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDR             R1, [R2,#0x70]; jumptable 0017B408 case 2
MOV             R0, #1
MOV             R1, R1,LSL#22
CMP             R0, R1,LSR#29
LDRSBEQ         R0, [R2,#0x75]
BEQ             loc_17B56C
B               loc_17B568
LDR             R1, [R2,#0x70]; jumptable 0017B408 case 3
MOV             R0, #2
MOV             R1, R1,LSL#22
CMP             R0, R1,LSR#29
LDRSBEQ         R0, [R2,#0x77]
BEQ             loc_17B56C
B               loc_17B568
LDR             R1, [R2,#0x70]; jumptable 0017B408 case 4
MOV             R0, #2
MOV             R1, R1,LSL#22
CMP             R0, R1,LSR#29
LDRSBEQ         R0, [R2,#0x78]
BEQ             loc_17B56C
B               loc_17B568
LDR             R0, [R2,#0x70]; jumptable 0017B408 case 5
MOV             R2, #1
MOV             R1, R0,LSL#22
CMP             R2, R1,LSR#29
MOVNE           R2, #2
CMPNE           R2, R1,LSR#29
MOVEQ           R0, R0,LSL#5
MOVEQ           R0, R0,LSR#24
BEQ             loc_17B56C
B               loc_17B568
LDR             R0, [R4,#4]; jumptable 0017B408 case 6
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x290]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R1, [R2,#0x70]; jumptable 0017B408 case 7
MOV             R0, #4
MOV             R1, R1,LSL#25
CMP             R0, R1,LSR#29
LDREQ           R0, [R2,#0x80]
LDRBEQ          R0, [R0,#0xDC]
BEQ             loc_17B56C
B               loc_17B568
LDR             R1, [R2,#0x70]; jumptable 0017B408 case 8
MOV             R0, #1
MOV             R1, R1,LSL#22
CMP             R0, R1,LSR#29
LDRSBEQ         R0, [R2,#0x76]
BEQ             loc_17B56C
B               loc_17B568
SUB             R1, R3, #0x7000; jumptable 0017B408 cases 9,12
SUBS            R1, R1, #9
BEQ             loc_17B668
CMP             R1, #3
BNE             loc_17B694
B               loc_17B680
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
B               loc_17B694
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0x68]
SUB             R1, R0, #8
CMP             R1, #8
BCS             loc_17BE80
CMP             R0, #8
BEQ             loc_17BE30
CMP             R0, #9
BNE             loc_17BE18
B               loc_17BE04
SUB             R1, R3, #0x7000; jumptable 0017B408 cases 10,13
SUBS            R1, R1, #0xA
BEQ             loc_17B6D4
CMP             R1, #3
BNE             loc_17B700
B               loc_17B6EC
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
B               loc_17B700
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
LDR             R1, =0x468
LDRH            R1, [R1,R0]
SUB             R1, R1, #8
CMP             R1, #8
BCS             loc_17B744
LDR             R1, [R0]
LDR             R2, [R1,#0x3C8]
MOV             R1, #0
BLX             R2
LDR             R0, [R0,#0x750]
CMP             R0, #0
BEQ             loc_17B744
LDRB            R0, [R0,#0xDC]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
ADD             SP, SP, #0x10
VLDR            S0, =-1.0
POP             {R4-R6,PC}
SUB             R1, R3, #0x7000; jumptable 0017B408 cases 11,14
SUBS            R1, R1, #0xB
BEQ             loc_17B768
CMP             R1, #3
BNE             loc_17B794
B               loc_17B780
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
B               loc_17B794
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
LDR             R1, =0x468
LDRH            R1, [R1,R0]
SUB             R1, R1, #8
CMP             R1, #8
BCS             loc_17BE80
LDR             R1, [R0]
LDR             R2, [R1,#0x3C8]
MOV             R1, #0
BLX             R2
LDR             R1, [R0,#0x658]
TST             R1, #0xFC0
BEQ             loc_17B7F0
LDR             R2, =0x65C
MOV             R1, R1,LSL#20
MOV             R1, R1,LSR#26
LDRH            R2, [R2,R0]
MOV             R2, R2,LSL#20
CMP             R1, R2,LSR#26
VMOVNE          S0, R1
BEQ             loc_17B7F0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, [R0,#0x5E0]
TST             R0, #0x7E00
BEQ             loc_17BE80
MOV             R1, R0,LSL#17
MOV             R2, R0,LSL#11
MOV             R0, R1,LSR#26
CMP             R0, R2,LSR#26
BEQ             loc_17BE80
B               loc_17BB20
LDR             R0, =off_6D1648; jumptable 0017B408 case 15
LDR             R0, [R0]
LDR             R1, [R0,#0xBC]
LDR             R0, [R4,#4]
CMP             R1, R0
MOVEQ           R0, #0
BEQ             loc_17BB20
MOV             R0, #1
B               loc_17BB20
LDR             R0, [R4,#4]; jumptable 0017B408 case 16
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 case 17
LDR             R2, [R4,#4]
LDR             R0, [R0]
LDR             R1, [R0,#0xBC]
CMP             R2, R1
BNE             loc_17B890
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =0x13D04
LDRH            R0, [R0,R1]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, [R4,#4]; jumptable 0017B408 case 18
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R0, [R0]
ADD             SP, SP, #0x10
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6E7CD0; jumptable 0017B408 case 19
BL              sub_5F11CC
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 case 20
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x14]
ADD             SP, SP, #0x10
MOV             R0, R0,LSL#15
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 case 22
LDR             R0, [R0]
BL              sub_5C8540
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 case 23
LDR             R0, [R0]
BL              sub_5C855C
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, [R4,#4]; jumptable 0017B408 case 24
ADD             R1, R0, #0x10000
ADD             R1, R1, #0x4300
LDRH            R0, [R1,#8]
AND             R3, R0, #4
BIC             R2, R0, #4
MOV             R0, R3,LSR#2
VMOV            S0, R0
STRH            R2, [R1,#8]
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 case 25
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D40
LDR             R0, [R0]
ADD             SP, SP, #0x10
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R6, =off_6D1648; jumptable 0017B408 case 26
MOV             R5, #0
LDR             R0, [R6]
LDR             R4, [R0,#0xC0]
LDR             R0, [R4]
LDR             R1, [R0,#0x3C]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_17BA24
ADD             R4, R4, #0x14400
ADD             R4, R4, #0x18
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_17BA24
BL              sub_5DA46C
CMP             R0, #2
NOP
BEQ             loc_17BA0C
LDR             R0, [R4]
BL              sub_5DA46C
CMP             R0, #3
NOP
BNE             loc_17BA24
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
BL              sub_5EF424
CMP             R0, #0
MOVNE           R5, #1
VMOV            S0, R5
ADD             SP, SP, #0x10
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
DCD off_6D1648
DCD 0x468
DCFS -1.0
DCD 0x65C
DCD 0x13D04
DCD dword_6E7CD0
LDR             R0, =unk_6E8CD0; jumptable 0017B408 case 27
LDRB            R0, [R0,#(byte_6E8E77 - 0x6E8CD0)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =unk_6E8CD0; jumptable 0017B408 case 28
LDRB            R0, [R0,#(byte_6E8E78 - 0x6E8CD0)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 case 29
LDR             R0, [R0]
LDR             R1, [R0]
LDR             R1, [R1,#0xB0]
BLX             R1
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 case 30
LDR             R0, [R0]
BL              sub_1ED874
LDRB            R0, [R0,#0x11]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, [R4,#4]; jumptable 0017B408 case 31
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x2C4
LDRH            R0, [R0,#0xC]
CMP             R0, #0
BEQ             loc_17BB20
B               loc_17B830
LDR             R0, =off_6D1648; jumptable 0017B408 case 32
LDR             R2, [R4,#4]
LDR             R0, [R0]
LDR             R1, [R0,#0xBC]
CMP             R2, R1
BNE             loc_17BB10
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x2C4
LDRH            R0, [R0,#0xC]
CMP             R0, #0
BEQ             loc_17BB20
B               loc_17B830
LDR             R0, =0x13AD0
LDRH            R0, [R0,R1]
CMP             R0, #0
BNE             loc_17B830
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, [R4,#4]; jumptable 0017B408 cases 33-35
MOV             R1, SP
ADD             R0, R0, #8
BL              sub_5C7AD0
SUB             R0, R5, #0x7000
SUBS            R0, R0, #0x21 ; '!'
BEQ             loc_17BEB4
CMP             R0, #1
BEQ             loc_17BEC0
CMP             R0, #2
BNE             loc_17BE80
B               loc_17BB8C
LDR             R0, [R4,#4]; jumptable 0017B408 cases 36-38
MOV             R1, SP
ADD             R0, R0, #8
BL              sub_5C7AE8
SUB             R0, R5, #0x7000
SUBS            R0, R0, #0x24 ; '$'
BEQ             loc_17BEB4
CMP             R0, #1
BEQ             loc_17BEC0
CMP             R0, #2
BNE             loc_17BE80
VLDR            S0, [SP,#0x20+var_18]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDR             R0, [R4,#4]; jumptable 0017B408 case 39
VLDR            S1, =57.296
VLDR            S0, [R0,#0x48]
ADD             SP, SP, #0x10
VMUL.F32        S0, S0, S1
POP             {R4-R6,PC}
LDR             R0, [R4,#4]; jumptable 0017B408 case 40
VLDR            S1, =57.296
VLDR            S0, [R0,#0x4C]
B               loc_17BD90
LDR             R0, [R4,#4]; jumptable 0017B408 case 41
VLDR            S1, =57.296
VLDR            S0, [R0,#0x50]
B               loc_17BD90
LDR             R0, =dword_6EDA78; jumptable 0017B408 case 42
MOV             R1, #0
LDR             R0, [R0,R1,LSL#2]
MOV             R5, R0
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x78]
BLX             R1
LDR             R1, =0x1FFB
AND             R0, R0, R5
ADD             SP, SP, #0x10
AND             R0, R0, R1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78; jumptable 0017B408 case 43
MOV             R1, #2
LDR             R0, [R0,R1,LSL#2]
MOV             R5, R0
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x78]
BLX             R1
LDR             R1, =0x1FFB
AND             R0, R0, R5
ADD             SP, SP, #0x10
AND             R0, R0, R1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78; jumptable 0017B408 case 44
MOV             R1, #3
LDR             R0, [R0,R1,LSL#2]
MOV             R5, R0
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x78]
BLX             R1
LDR             R1, =0x1FFB
AND             R0, R0, R5
ADD             SP, SP, #0x10
AND             R0, R0, R1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78; jumptable 0017B408 case 45
MOV             R1, #4
LDR             R0, [R0,R1,LSL#2]
MOV             R5, R0
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x78]
BLX             R1
LDR             R1, =0x1FFB
AND             R0, R0, R5
ADD             SP, SP, #0x10
AND             R0, R0, R1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78; jumptable 0017B408 case 46
MOV             R1, #0
LDR             R0, [R0,R1,LSL#2]
LDR             R1, =0x1FFB
ADD             SP, SP, #0x10
AND             R0, R0, R1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78; jumptable 0017B408 case 47
MOV             R1, #2
LDR             R0, [R0,R1,LSL#2]
LDR             R1, =0x1FFB
ADD             SP, SP, #0x10
AND             R0, R0, R1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78; jumptable 0017B408 case 48
MOV             R1, #3
LDR             R0, [R0,R1,LSL#2]
LDR             R1, =0x1FFB
ADD             SP, SP, #0x10
AND             R0, R0, R1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78; jumptable 0017B408 case 49
MOV             R1, #4
LDR             R0, [R0,R1,LSL#2]
LDR             R1, =0x1FFB
ADD             SP, SP, #0x10
AND             R0, R0, R1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, [R4,#4]; jumptable 0017B408 cases 50,51
LDR             R1, [R0]
LDR             R2, [R1,#0x80]
MOV             R1, SP
BLX             R2
SUB             R0, R5, #0x7000
SUBS            R0, R0, #0x32 ; '2'
BEQ             loc_17BD7C
CMP             R0, #1
BNE             loc_17BE80
B               loc_17BD9C
LDR             R0, =dword_6EDA78
VLDR            S1, [SP,#0x20+var_20]
LDRSH           R0, [R0,#(word_6EDABC - 0x6EDA78)]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
ADD             SP, SP, #0x10
VMUL.F32        S0, S0, S1
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78
VLDR            S1, [SP,#0x20+var_1C]
LDRSH           R0, [R0,#(word_6EDABE - 0x6EDA78)]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
B               loc_17BD90
LDR             R0, =dword_6EDA78; jumptable 0017B408 case 52
LDRSH           R0, [R0,#(word_6EDABC - 0x6EDA78)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78; jumptable 0017B408 case 53
LDRSH           R0, [R0,#(word_6EDABE - 0x6EDA78)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 case 54
LDR             R0, [R0]
LDR             R1, [R0,#0xC8]
TST             R1, #0x10
BEQ             loc_17BE80
LDRB            R0, [R0,#0xD4]
TST             R0, #4
BEQ             loc_17BE10
ADD             SP, SP, #0x10
VLDR            S0, =2.0
POP             {R4-R6,PC}
TST             R0, #8
BEQ             loc_17BE24
ADD             SP, SP, #0x10
VLDR            S0, =3.0
POP             {R4-R6,PC}
TST             R0, #1
VLDRNE          S0, =4.0
BNE             loc_17B574
ADD             SP, SP, #0x10
VLDR            S0, =1.0
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 cases 55,56
LDR             R0, [R0]
LDR             R1, [R0,#0xC8]
TST             R1, #0x10
BEQ             loc_17BE80
LDRB            R1, [R0,#0xD4]
TST             R1, #0xD
BEQ             loc_17BE80
LDRSH           R3, [R0,#0xCE]
LDRSH           R2, [R0,#0xCC]
MOV             R1, SP
BL              sub_1ED6C8
SUB             R0, R5, #0x7000
SUBS            R0, R0, #0x37 ; '7'
BEQ             loc_17BEB4
CMP             R0, #1
BEQ             loc_17BEC0
ADD             SP, SP, #0x10
VLDR            S0, =0.0
POP             {R4-R6,PC}
DCD unk_6E8CD0
DCD 0x13AD0
DCFS 57.296
DCD dword_6EDA78
DCD 0x1FFB
DCFS 2.0
DCFS 3.0
DCFS 4.0
DCFS 1.0
DCFS 0.0
VLDR            S0, [SP,#0x20+var_20]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
VLDR            S0, [SP,#0x20+var_1C]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 case 57
LDR             R0, [R0]
LDR             R0, [R0,#0xB0]
ADD             R0, R0, #0x300
LDRSB           R0, [R0,#0x76]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 case 58
LDR             R0, [R0]
LDR             R0, [R0,#0xB0]
ADD             R0, R0, #0x300
LDRSB           R0, [R0,#0x77]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 case 59
LDR             R0, [R0]
LDR             R0, [R0,#0xB0]
ADD             R0, R0, #0x300
LDRSB           R0, [R0,#0x78]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6D1648; jumptable 0017B408 case 60
LDR             R0, [R0]
LDR             R0, [R0,#0xB0]
ADD             R0, R0, #0x300
LDRSB           R0, [R0,#0x79]
VMOV            S0, R0
B               loc_17BA28
LDR             R0, =off_6D1648; jumptable 0017B408 case 61
LDR             R0, [R0]
LDR             R0, [R0,#0xB0]
BL              sub_5C63C0
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =unk_6E8CD0; jumptable 0017B408 case 62
LDRB            R0, [R0,#(byte_6E8E74 - 0x6E8CD0)]
ADD             SP, SP, #0x10
MOV             R0, R0,LSL#26
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =unk_6E8CD0; jumptable 0017B408 case 63
LDRB            R0, [R0,#(byte_6E8E74 - 0x6E8CD0)]
ADD             SP, SP, #0x10
MOV             R0, R0,LSL#25
MOV             R0, R0,LSR#31
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =unk_6E8CD0; jumptable 0017B408 case 64
LDRB            R0, [R0,#(byte_6E8EE0 - 0x6E8CD0)]
VMOV            S0, R0
B               loc_17B7E4
LDR             R0, [R4]; jumptable 0017B408 default case, case 21
LDR             R12, [R0,#0x90]
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
