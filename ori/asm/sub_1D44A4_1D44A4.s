PUSH            {R4-R8,LR}
MOV             R7, R0
LDR             R0, =dword_6E2378
LDRB            R4, [R0,#(byte_6E238C - 0x6E2378)]
BL              sub_47FFCC
CMP             R0, #0
BEQ             loc_1D44C8
BL              sub_50F1A4
B               loc_1D44D0
NOP
BL              sub_50F2B8
LDRD            R0, R1, [R0]
SUB             R1, R1, R0
CMP             R4, R1,ASR#1
ADDCC           R0, R0, R4,LSL#1
LDRH            R5, [R0]
MOV             R0, R5
BL              sub_50F020
MOV             R6, R0
MOV             R0, R7
BL              sub_52FA94
CMP             R0, #0
NOP
BEQ             loc_1D4544
MOV             R0, R7
BL              sub_52FA94
LDRH            R0, [R0,#0x10]
NOP
BL              sub_47FF28
CMP             R0, #0
NOP
BEQ             loc_1D4544
MOV             R0, R7
BL              sub_528E64
MOV             R0, R7
NOP
BL              sub_528E64
NOP
NOP
B               loc_1D4580
LDRB            R0, [R6,#5]
TST             R0, #1
BEQ             loc_1D4568
MOV             R1, #0x1000
MOV             R0, R7
BL              sub_52F368
MOV             R4, R0
NOP
B               loc_1D4584
TST             R0, #2
MOVEQ           R4, #0
BEQ             loc_1D4584
LDR             R1, =0x1001
MOV             R0, R7
BL              sub_52F368
MOV             R4, R0
MOV             R1, R4
MOV             R0, R7
BL              sub_52FB58
NOP
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BEQ             loc_1D45D8
LDR             R1, =0x498
MOV             R0, #5
STRH            R0, [R1,R4]
MOV             R1, R0
MOV             R0, R7
BL              sub_52A450
MOV             R1, R5
MOV             R0, R7
BL              sub_529264
NOP
NOP
B               loc_1D45FC
LDR             R1, =0x498
MOV             R0, #6
STRH            R0, [R1,R4]
MOV             R1, R0
MOV             R0, R7
BL              sub_52A450
MOV             R1, R5
MOV             R0, R7
BL              sub_529264
LDR             R0, =0x49C
STRH            R5, [R0,R4]
LDRB            R0, [R6,#4]
CMP             R0, #0
BEQ             loc_1D462C
CMP             R0, #1
CMPNE           R0, #2
BNE             locret_1D46B0
MOV             R0, R7
POP             {R4-R8,LR}
MOV             R1, #0
B               sub_52A460
LDR             R0, =0x10646C
MOV             R6, #0
ADD             R0, R0, R7
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_1D4650
SUBS            R0, R0, #0x1AC
ADDNE           R4, R0, #0x1AC
BNE             loc_1D4654
MOV             R4, #0
CMP             R4, #0
MOV             R5, #0
BEQ             loc_1D46A0
CMP             R4, #0
LDR             R1, =byte_6CE7C8
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC180
CMP             R0, #0
NOP
BEQ             loc_1D4694
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
LDRH            R6, [R0,#0x10]
B               loc_1D46A0
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_1D4660
MOV             R1, R6
MOV             R0, R7
POP             {R4-R8,LR}
B               sub_52A460
POP             {R4-R8,PC}
