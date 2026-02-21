PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =unk_6E8CD0
LDR             R6, =off_6D1648
VPUSH           {D8}
LDRB            R1, [R0,#(byte_6E8E74 - 0x6E8CD0)]
LDR             R0, [R6]
VLDR            S16, =0.0
TST             R1, #4
BNE             loc_1EA10C
LDR             R1, [R0,#0xC8]
TST             R1, #8
BEQ             loc_1EA304
LDR             R1, [R4,#4]
LDR             R2, [R1,#0x14]
ORR             R2, R2, #0x4000
STR             R2, [R1,#0x14]
LDR             R1, [R4,#4]
ORR             R2, R2, #0x8000
STR             R2, [R1,#0x14]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
STRH            R0, [R1,#0x4C]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x4000
BEQ             loc_1EA204
LDR             R5, [R0,#4]
MOV             R1, #1
LDRB            R0, [R5,#0xDE]
ORR             R0, R0, #1
STRB            R0, [R5,#0xDE]
LDR             R0, [R5]
LDR             R2, [R0,#0x84]
MOV             R0, R5
BLX             R2
LDR             R0, [R6]
LDR             R1, =0x8B8
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
STRH            R0, [R1,R5]
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x204]
MOV             R1, #1
BLX             R2
LDR             R0, [R5,#4]
LDRB            R1, [R5,#0xDC]
LDR             R2, [R0]
LDR             R2, [R2,#0x208]
BLX             R2
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x14]
BIC             R1, R1, #1
STR             R1, [R0,#0x14]
LDR             R0, [R4,#4]
BIC             R1, R1, #2
BIC             R2, R1, #0x40 ; '@'
STR             R1, [R0,#0x14]
LDR             R0, [R4,#4]
BIC             R1, R2, #0x80
STR             R2, [R0,#0x14]
LDR             R0, [R4,#4]
ORR             R2, R1, #0x40000
BIC             R3, R2, #0x400000
STR             R1, [R0,#0x14]
LDR             R0, [R4,#4]
STR             R2, [R0,#0x14]
LDR             R0, [R4,#4]
STR             R3, [R0,#0x14]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x8000
BEQ             loc_1EA344
LDR             R5, [R0,#8]
MOV             R1, #1
LDRB            R0, [R5,#0xDE]
ORR             R0, R0, #1
STRB            R0, [R5,#0xDE]
LDR             R0, [R5]
LDR             R2, [R0,#0x84]
MOV             R0, R5
BLX             R2
LDR             R1, [R6]
LDR             R0, =0x8B8
LDR             R1, [R1,#0xBC]
ADD             R1, R1, #0x10000
ADD             R1, R1, #0x3D00
LDRH            R1, [R1,#4]
STRH            R1, [R0,R5]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x4000
BEQ             loc_1EA298
ORR             R1, R1, #0x10000
STR             R1, [R0,#0x14]
LDR             R0, [R4,#4]
ORR             R1, R1, #0x80000
VMOV.F32        S1, S16
MOV             R2, #0
STR             R1, [R0,#0x14]
LDR             R0, [R4,#4]
VLDR            S0, =32.0
LDR             R1, [R0]
LDR             R3, [R1,#0xEC]
MOV             R1, R2
B               loc_1EA340
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x204]
MOV             R1, #1
BLX             R2
LDR             R0, [R5,#4]
LDRB            R1, [R5,#0xDC]
LDR             R2, [R0]
LDR             R2, [R2,#0x208]
BLX             R2
LDR             R1, [R4,#4]
LDR             R0, [R1,#0x14]
BIC             R0, R0, #1
STR             R0, [R1,#0x14]
LDR             R2, [R4,#4]
BIC             R1, R0, #2
BIC             R0, R1, #0x40 ; '@'
STR             R1, [R2,#0x14]
LDR             R1, [R4,#4]
BIC             R2, R0, #0x80
ORR             R3, R2, #0x400000
STR             R0, [R1,#0x14]
LDR             R0, [R4,#4]
STR             R2, [R0,#0x14]
LDR             R0, [R4,#4]
STR             R3, [R0,#0x14]
B               loc_1EA344
NOP
BL              sub_5C8540
CMP             R0, #0
NOP
BEQ             loc_1EA344
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x80000
BEQ             loc_1EA344
VMOV.F32        S0, S16
LDR             R1, [R0]
MOV             R2, #0
LDR             R3, [R1,#0xEC]
VMOV.F32        S1, S0
MOV             R1, R2
BLX             R3
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
TST             R1, #0x10000
LDR             R0, [R0,#4]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R4, [R0]
BEQ             loc_1EA3EC
MOV             R0, R1,LSL#16
MOVS            R0, R0,LSR#30
BEQ             loc_1EA3D8
CMP             R0, #1
BEQ             loc_1EA3EC
CMP             R0, #2
BEQ             loc_1EA408
CMP             R0, #3
BNE             loc_1EA424
MOV             R3, #0
MOV             R2, #1
MOV             R1, R3
MOV             R0, R4
BL              sub_59AD78
VPOP            {D8}
MOV             R0, R4
POP             {R4-R6,LR}
MOV             R2, #1
MOV             R3, #0
MOV             R1, R2
B               sub_59AD78
DCD unk_6E8CD0
DCD off_6D1648
DCFS 0.0
DCD 0x8B8
DCFS 32.0
MOV             R3, #0
MOV             R2, R3
MOV             R1, R3
MOV             R0, R4
BL              sub_59AD78
VPOP            {D8}
MOV             R0, R4
POP             {R4-R6,LR}
MOV             R3, #0
MOV             R2, R3
MOV             R1, #1
B               sub_59AD78
VPOP            {D8}
MOV             R3, #0
MOV             R0, R4
POP             {R4-R6,LR}
MOV             R2, R3
MOV             R1, R3
B               sub_59AD78
VPOP            {D8}
POP             {R4-R6,PC}
