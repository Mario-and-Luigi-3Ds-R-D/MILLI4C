PUSH            {R4-R10,LR}
MOV             R2, #0
MOV             R7, R0
ADD             R0, R0, #0x10
ADD             R4, R7, #0x120
STR             R0, [R0,#0x78]
STR             R0, [R0,#0x7C]
ADD             R0, R7, #0x98
STR             R2, [R7,#0x94]
STR             R0, [R7,#0x9C]
STR             R0, [R7,#0x98]
ADD             R0, R7, #0xA0
STR             R0, [R7,#0x118]
STR             R0, [R7,#0x11C]
MOV             R0, #2
STR             R0, [R7]
LDR             R0, =off_6CE970
STM             R4, {R1,R2}
ADD             R9, R7, #0x94
MOV             R3, R2
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x48 ; 'H'
BL              sub_10A358
CMP             R0, #0
BEQ             loc_286294
LDR             R1, [R7,#0x120]
STR             R1, [R0]
ADD             R1, R0, #4
STR             R1, [R0,#0x40]
STR             R1, [R0,#0x44]
LDR             R1, [R9,#8]
MOV             R10, R0
ADD             R0, R9, #4
CMP             R1, R0
BNE             loc_286328
LDR             R0, [R9]
CMP             R0, #0
BEQ             loc_28631C
ADD             R8, R0, #0x40 ; '@'
LDR             R6, [R0,#0x40]!
LDR             R5, [R0,#4]
CMP             R6, R5
BEQ             loc_286314
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_286300
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_286300
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2862C8
SUB             R0, R8, #0x40 ; '@'
BL              sub_300FD4
MOV             R0, R7
STR             R10, [R9]
POP             {R4-R10,PC}
LDR             R2, [R9,#4]
ADD             R0, R9, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R9,#4]
STR             R0, [R9,#8]
B               loc_28631C
