PUSH            {R4-R6,LR}
ADD             R5, R0, #0x400
CMP             R1, #5
MOV             R4, R0
ADD             R5, R5, #0xB5
BEQ             loc_230BEC
CMP             R1, #4
LDRBEQ          R0, [R4,#0x4B5]
ANDEQ           R1, R0, #3
CMP             R1, #3
BEQ             loc_230B88
LDR             R0, [R4,#0x4A0]
TST             R0, #1
LDREQ           R1, [R4,#0x49C]
ADD             R0, R4, R0,ASR#1
BEQ             loc_230B5C
LDR             R1, [R0]
LDR             R2, [R4,#0x49C]
LDR             R1, [R1,R2]
NOP
BLX             R1
LDRB            R0, [R4,#0x4B5]
AND             R0, R0, #3
CMP             R0, #1
BEQ             loc_230BC0
CMP             R0, #2
BEQ             loc_230BB4
CMP             R0, #3
BNE             loc_230BEC
B               loc_230BD8
LDR             R0, [R4,#0x4A8]
TST             R0, #1
LDREQ           R1, [R4,#0x4A4]
ADD             R0, R4, R0,ASR#1
BEQ             loc_230BA8
LDR             R1, [R0]
LDR             R2, [R4,#0x4A4]
LDR             R1, [R1,R2]
NOP
BLX             R1
B               loc_230BEC
LDRB            R0, [R4,#0xDE]
ORR             R0, R0, #1
STRB            R0, [R4,#0xDE]
LDR             R0, [R4]
MOV             R1, #1
LDR             R2, [R0,#0x84]
MOV             R0, R4
BLX             R2
B               loc_230BEC
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x84]
MOV             R0, R4
BLX             R2
LDRB            R0, [R4,#0x4B5]
BIC             R0, R0, #3
STRB            R0, [R5]
POP             {R4-R6,PC}
