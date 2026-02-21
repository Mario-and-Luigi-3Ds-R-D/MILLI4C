PUSH            {R4-R11,LR}
SUB             SP, SP, #0xC
MOV             R6, R0
BL              sub_5EE508
LDR             R11, =unk_653FC0
CMP             R0, #0
ADD             R8, R6, #0x1A0000
BEQ             loc_1D1528
MOV             R0, R6
BL              sub_1D44A4
LDRD            R0, R1, [R11,#(off_654084 - 0x653FC0)]
B               loc_1D172C
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E238B - 0x6E2378)]
CMP             R0, #2
BEQ             loc_1D1578
CMP             R0, #3
MOV             R0, R6
BEQ             loc_1D1588
BL              sub_528E64
MOV             R7, R0
MOV             R10, #0
ORR             R0, R10, R10
UXTH            R0, R0
ORR             R5, R0, R10,LSL#16
LDR             R0, =loc_19CF44
ADD             R0, R0, R6
STR             R0, [SP,#0x30+var_2C]
LDR             R0, [R0]
TST             R0, #0x80
BEQ             loc_1D159C
B               loc_1D1728
ADD             SP, SP, #0xC
MOV             R0, R6
POP             {R4-R11,LR}
B               sub_1D24A8
NOP
BL              sub_1D44A4
LDRD            R0, R1, [R11,#(off_65409C - 0x653FC0)]
NOP
B               loc_1D172C
LDR             R0, =byte_19CF2F
LDRB            R0, [R0,R6]
CMP             R0, #0
BNE             loc_1D1668
ADD             R0, R7, #0x100
LDR             R3, =0x3E7
LDRSH           R1, [R0,#0x48]
LDRSH           R0, [R0,#0x46]
MOV             R2, #0
RSB             R1, R1, #0
BL              sub_47FEF8
MOV             R4, R0
MOV             R0, #0x1000
BL              sub_50EFA0
LDRSH           R0, [R0,#0x16]
CMP             R0, R4
BGT             loc_1D1650
STR             R10, [SP,#0x30+var_30]
LDRB            R1, [R7,#0x495]
MOV             R3, #1
MOV             R2, #0x37 ; '7'
MOV             R0, R6
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_1D1650
LDR             R1, =byte_19CF2F
LDR             R4, =unk_6541C4
MOV             R0, #1
ADD             R9, R4, #8
STRB            R0, [R6,R1]
LDRH            R1, [R4]
MOV             R0, R6
BL              sub_5EE478
CMP             R0, #0
NOP
BEQ             loc_1D1644
LDRH            R0, [R7,#0x10]
LDRH            R1, [R4]
UXTH            R0, R0
ORR             R5, R0, R1,LSL#16
B               loc_1D1650
ADD             R4, R4, #2
CMP             R4, R9
BNE             loc_1D1618
LDR             R0, [SP,#0x30+var_2C]
LDR             R0, [R0]
TST             R0, #0x80
BNE             loc_1D16E4
MOVS            R0, R5,LSR#16
BNE             loc_1D16EC
STR             R10, [SP,#0x30+var_30]
LDRB            R1, [R7,#0x495]
MOV             R3, #1
MOV             R2, #0x38 ; '8'
MOV             R0, R6
BL              sub_5EEC7C
CMP             R0, #0
LDRNE           R0, [R7,#0x2A8]
CMPNE           R0, #0
BEQ             loc_1D16E4
BL              sub_5EC344
CMP             R0, #0
NOP
BNE             loc_1D16E4
LDR             R4, =unk_653FC8
ADD             R9, R4, #4
LDRH            R1, [R4]
MOV             R0, R6
BL              sub_5EE478
CMP             R0, #0
NOP
BEQ             loc_1D16D8
LDR             R0, [R7,#0x2A8]
LDRH            R1, [R4]
LDRH            R0, [R0,#0x10]
UXTH            R0, R0
ORR             R5, R0, R1,LSL#16
B               loc_1D16E4
ADD             R4, R4, #2
CMP             R4, R9
BNE             loc_1D16A8
MOVS            R0, R5,LSR#16
BEQ             loc_1D1728
MOV             R1, R5,LSR#16
MOV             R3, R7
MOV             R2, #0xFFFFFFFF
MOV             R0, R6
STR             R10, [SP,#0x30+var_30]
BL              sub_52F54C
UXTH            R1, R5
MOV             R0, R6
BL              sub_52A460
MOV             R1, R5,LSR#16
MOV             R0, R6
BL              sub_529264
LDRD            R0, R1, [R11,#(off_654064 - 0x653FC0)]
NOP
B               loc_1D172C
LDRD            R0, R1, [R11,#(off_65406C - 0x653FC0)]
STRD            R0, R1, [R8,#0x5C]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
