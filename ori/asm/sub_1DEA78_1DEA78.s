PUSH            {R4-R11,LR}
MOV             R4, R0
ADD             R8, R0, #0x1000
ADD             R8, R8, #0xC8
ADD             R6, R0, #0xC00
LDR             R11, =off_6CE970
LDRB            R2, [R8,#0xF4]
ADD             R5, R0, #0x8800
LDR             R1, =0x19B0B4
LDR             R0, [R11]
ADD             R6, R6, #0x1C8
CMP             R2, #0
LDRNE           R2, [R6,#0xC]
LDR             R1, [R1,R0]
LDR             R9, =0xFFE683CC
CMPNE           R2, #0
TSTNE           R1, #0x200
SUB             SP, SP, #0xC
ADD             R5, R5, #0x98
BEQ             loc_1DEB08
LDR             R1, =0x3000F
MOV             R2, #0
VLDR            S0, =0.0
SUB             R0, R0, R9
BL              sub_503414
MOV             R0, R5
BL              sub_2A6F20
LDR             R0, =0x19DFE8
LDR             R1, [R11]
LDR             R0, [R1,R0]
MOV             R1, #0
BL              sub_1CC8DC
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4-R11,LR}
B               sub_1DA794
ADD             R7, R4, #0x20800
ADD             R7, R7, #0x2C8
LDR             R0, [R7]
LDR             R0, [R0,#0x470]
TST             R0, R1
BEQ             loc_1DECB8
ADD             R0, R5, #0xDF0
BL              sub_29F9A4
CMP             R0, #0
LDRBNE          R0, [R0,#8]
CMPNE           R0, #0
BEQ             loc_1DECB8
LDR             R0, [R11]
LDR             R2, =0x3000E
MOV             R3, #0
ADD             R1, R4, #0x74 ; 't'
SUB             R0, R0, R9
BL              sub_503720
LDRB            R0, [R4,#0x4D]
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x54]
LDRB            R0, [R0,#0x3F6]
AND             R0, R0, #0x7F
CMP             R0, #4
BEQ             loc_1DED2C
CMP             R0, #5
CMPNE           R0, #6
BEQ             loc_1DECC0
CMP             R0, #7
BNE             loc_1DECB8
ADD             R0, R5, #0xDF0
BL              sub_29F9A4
CMP             R0, #0
LDRNE           R7, [R0]
MOV             R9, #1
MOVEQ           R7, #0
RSB             R0, R9, R9,LSL#16
AND             R1, R0, R7,LSL#1
ADD             R0, R9, R7,LSL#1
LDR             R10, =0x138FD8
UXTH            R0, R0
STR             R0, [SP,#0x30+var_30]
LDR             R0, [R11]
MOV             R2, #0
ADD             R0, R0, R10
BL              sub_571558
STR             R0, [SP,#0x30+var_28]
LDR             R0, [R11]
LDR             R1, [SP,#0x30+var_30]
MOV             R2, #0
ADD             R0, R0, R10
BL              sub_571558
MOV             R1, #0
MOV             R2, R0
ADD             R0, R4, #0x10C00
STMEA           SP, {R1,R9}
LDR             R1, [SP,#0x30+var_28]
MOV             R3, #1
ADD             R0, R0, #0x254
BL              sub_2C6840
LDR             R0, =dword_6E7CD0
MOV             R2, #1
MOV             R1, R7
BL              sub_586C24
LDR             R9, =flt_6E34B0
MOV             R0, #0xFFFFFF00
ADD             R7, R4, #0x10800
REV             R0, R0
VLDR            S0, [R9,#(flt_6E371C - 0x6E34B0)]
STR             R0, [SP,#0x30+var_30]
ADD             R0, R4, #0x10000
ADD             R7, R7, #0x3A8
MOV             R1, SP
ADD             R0, R0, #0xD00
BL              sub_4E665C
MOV             R10, #2
STRB            R10, [R7,#0xFD]
LDRB            R0, [R8,#0xF4]
CMP             R0, #0
BEQ             loc_1DEC80
VLDR            S0, [R9,#(flt_6E355C - 0x6E34B0)]
ADD             R2, R9, #0x9C
MOV             R1, #0
VCVT.F32.U32    S0, S0
ADD             R0, R6, #0x1DC
BL              sub_5A2298
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x30+var_30]
VLDR            S0, [R9,#(flt_6E355C - 0x6E34B0)]
ADD             R0, R6, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E6784
MOV             R0, #0
STRB            R0, [R6,#0x3F4]
ADD             R0, R4, #0x1F000
ADD             R0, R0, #0x820
BL              sub_338AA4
LDR             R0, [R11]
MOV             R1, #7
BL              sub_529274
LDR             R2, =off_656C04
STRB            R10, [R5,#0xFD]
ADD             R0, R4, #0x20800
ADD             R0, R0, #0x2BC
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
MOV             R0, R5
BL              sub_2A6F20
ADD             R0, R5, #0xDF0
NOP
BL              sub_29F9A4
CMP             R0, #0
LDRNE           R0, [R0]
LDR             R1, [R7]
ADD             R1, R1, #0x400
UXTH            R0, R0
STRH            R0, [R1,#0x9C]
BL              sub_50F020
LDRB            R0, [R0,#4]
MOV             R1, #0
CMP             R0, #0
BEQ             loc_1DED14
CMP             R0, #1
MOVEQ           R1, #1
BEQ             loc_1DED14
CMP             R0, #2
MOVEQ           R1, #2
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4-R11,LR}
MOV             R3, #0
MOV             R2, #1
B               sub_1DDD98
MOV             R0, R5
BL              sub_2A6F20
ADD             R0, R5, #0xDF0
NOP
BL              sub_29F9A4
CMP             R0, #0
LDRNE           R0, [R0]
UXTH            R0, R0
BL              sub_50EFA0
LDRH            R0, [R0,#0x18]
MOV             R1, R0,LSL#28
MOVS            R1, R1,LSR#30
MOVEQ           R6, #0
BEQ             loc_1DED78
CMP             R1, #1
MOVEQ           R6, #1
BEQ             loc_1DED78
CMP             R1, #2
MOVEQ           R6, #2
MOV             R1, R0,LSL#21
AND             R0, R0, #0x10
MOV             R3, R1,LSR#28
MOV             R1, R0,LSR#4
ADD             SP, SP, #0xC
MOV             R2, R6
MOV             R0, R4
POP             {R4-R11,LR}
B               sub_1DDD98
