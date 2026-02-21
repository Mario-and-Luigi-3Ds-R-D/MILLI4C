PUSH            {R4,R5,LR}
MOV             R4, R1
LDRB            R1, [R1,#0x27]
LDR             R0, [R2,#8]
MOV             R1, R1,LSR#4
AND             R5, R0, #0xF
ADD             R1, R4, R1,LSL#2
ADD             R3, R1, #0x2C ; ','
CMP             R5, #3
LDREQ           R0, [R3]
ADDEQ           R0, R0, #1
BEQ             loc_1F53D4
CMP             R5, #4
LDREQ           R0, [R3]
SUBEQ           R0, R0, #1
BNE             loc_1F53D8
STR             R0, [R3]
VLDR            S2, [R2,#0x6C]
VLDR            S1, [R3]
VLDR            S0, [R2,#0x70]
VCVT.S32.F32    S2, S2
VCVT.F32.S32    S1, S1
VMOV            R0, S2
BL              sub_1F4604
CMP             R0, #0
NOP
BEQ             loc_1F5424
LDR             R0, [R4]
LDR             R1, [R2,#0x14]
ADD             R0, R0, R1
STR             R0, [R4]
LDR             R0, [R2,#8]
AND             R0, R0, #0x30 ; '0'
CMP             R0, #0x10
BEQ             loc_1F5458
B               loc_1F5434
LDR             R0, [R2,#8]
AND             R0, R0, #0x30 ; '0'
CMP             R0, #0x20 ; ' '
BEQ             loc_1F5458
CMP             R5, #1
LDREQ           R0, [R3]
ADDEQ           R0, R0, #1
BEQ             loc_1F5480
CMP             R5, #2
LDREQ           R0, [R3]
SUBEQ           R0, R0, #1
BEQ             loc_1F5480
B               loc_1F5484
LDRB            R0, [R4,#0x27]
MOV             R1, R0,LSR#4
BIC             R0, R0, #0xF0
MOV             R1, R1,LSL#4
SUB             R1, R1, #0x10
AND             R1, R1, #0xF0
ORR             R0, R0, R1
STRB            R0, [R4,#0x27]
MOV             R0, #0
POP             {R4,R5,PC}
STR             R0, [R3]
MOV             R0, #0
POP             {R4,R5,PC}
