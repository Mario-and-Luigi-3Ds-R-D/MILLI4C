PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#1]
SUB             SP, SP, #0x10
CMP             R0, #0
BEQ             loc_25C6B4
CMP             R0, #1
BNE             loc_25C6AC
MOV             R2, #0
MOV             R1, SP
ADD             R0, R4, #4
BL              sub_5C4F84
LDR             R0, [SP,#0x20+var_20]
LDR             R1, =0x43660000
CMP             R0, R1
BGE             loc_25C658
ORR             R1, R1, R1,LSL#13
CMP             R0, R1
BCC             loc_25C6AC
LDR             R0, [R4,#0x7EC]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_25C670
BL              sub_533330
STR             R5, [R4,#0x7EC]
LDR             R0, [R4,#0x7F0]
CMP             R0, #0
BEQ             loc_25C684
BL              sub_533330
STR             R5, [R4,#0x7F0]
LDR             R0, [R4,#0x10]
CMP             R0, #0
ADDNE           R0, R4, #4
BLNE            sub_528B1C
LDR             R0, [R4,#0x404]
CMP             R0, #0
ADDNE           R0, R4, #0x3F8
BLNE            sub_528B1C
MOV             R0, #4
STRB            R0, [R4]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
ADD             R0, R4, #4
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_25C6AC
LDRB            R0, [R4,#0x801]
CMP             R0, #0
BEQ             loc_25C6F4
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x14
ADD             R0, R4, #4
BL              sub_14C548
NOP
NOP
B               loc_25C714
LDR             R0, =dword_6D1F40
BL              sub_546DB0
AND             R0, R0, #3
ADD             R1, R0, #0x11
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R4, #4
BL              sub_14C548
LDR             R6, =dword_6D1F40
ADD             R0, R4, #4
BL              sub_5C5724
MOV             R5, R0
MOV             R0, R6
BL              sub_546DB0
MUL             R0, R0, R5
MOV             R1, R0,LSR#16
ADD             R0, R4, #4
BL              sub_14F01C
MOV             R0, #1
STRB            R0, [R4,#1]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
