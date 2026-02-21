PUSH            {R4-R8,LR}
MOV             R5, R0
BL              sub_1D1AC0
LDR             R4, =dword_6E2378
LDRB            R0, [R4,#(byte_6E2384 - 0x6E2378)]
ORR             R1, R0, #0x1000
MOV             R0, R5
BL              sub_52F368
MOV             R6, R0
LDRB            R0, [R4,#(byte_6E2387 - 0x6E2378)]
MOV             R7, #1
CMP             R0, #1
BEQ             loc_1D03D4
CMP             R0, #2
BEQ             loc_1D03F8
CMP             R0, #3
BEQ             loc_1D041C
CMP             R0, #4
BNE             loc_1D0454
B               loc_1D0440
MOV             R0, R6
BL              sub_1450AC
MOV             R4, R0
MOV             R1, R6
MOV             R0, R5
BL              sub_52FB58
STRB            R7, [R4,#5]
NOP
B               loc_1D044C
MOV             R0, R6
BL              sub_144FB8
MOV             R4, R0
MOV             R1, R6
MOV             R0, R5
BL              sub_52FB58
STRB            R7, [R4,#5]
NOP
B               loc_1D044C
MOV             R0, R6
BL              sub_145154
MOV             R4, R0
MOV             R1, R6
MOV             R0, R5
BL              sub_52FB58
NOP
NOP
B               loc_1D044C
MOV             R0, R6
BL              sub_144EEC
MOV             R4, R0
CMP             R4, #0
STRNE           R4, [R6,#0x140]
LDR             R1, =unk_653FC0
ADD             R2, R5, #0x1A0000
LDRD            R0, R1, [R1,#(off_654014 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R4-R8,PC}
