PUSH            {R4-R8,LR}
MOV             R6, #0
MOV             R7, R0
LDR             R0, =0x10645C
ADD             R8, R7, R0
LDR             R0, [R8,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
LDRNE           R5, [R4,#8]
MOVEQ           R5, #0
BEQ             loc_1D4EF0
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC8D8
CMP             R0, #0
NOP
BNE             loc_1D4EDC
MOVS            R0, R4
SUBNE           R0, R4, #0x1AC
MOV             R1, #0
ADD             R0, R0, #0x40 ; '@'
BL              sub_1CCF6C
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_4E4B64
MOVS            R4, R5
MOVEQ           R5, #0
LDRNE           R5, [R4,#8]
CMP             R4, R6
BNE             loc_1D4E9C
LDR             R0, [R8,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R0, #0
ADDNE           R0, R0, #0x1AC
CMP             R0, #0
LDRNE           R4, [R0,#8]
MOVEQ           R4, #0
BEQ             loc_1D4F40
CMP             R0, #0
SUBNE           R0, R0, #0x1AC
BL              sub_5EC8D8
CMP             R0, #0
NOP
BNE             locret_1D4F78
MOVS            R0, R4
MOVEQ           R4, #0
LDRNE           R4, [R0,#8]
CMP             R0, R6
BNE             loc_1D4F14
LDR             R0, =byte_19CF28
LDR             R6, =dword_6E2378
ADD             R4, R7, #0x1A0000
LDRB            R0, [R0,R7]
CMP             R0, #0
LDRBNE          R0, [R6,#(byte_6E2389 - 0x6E2378)]
CMPNE           R0, #1
CMPNE           R0, #2
BEQ             loc_1D4F7C
MOV             R0, R7
BL              sub_52A608
LDR             R1, =off_654144
LDM             R1, {R0,R1}
STRD            R0, R1, [R4,#0x5C]
POP             {R4-R8,PC}
LDR             R0, =dword_197A04
LDR             R0, [R7,R0]
CMP             R0, #0
BNE             locret_1D4F78
LDR             R0, =0x19DFE8
ADD             R5, R7, R0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1D4FC4
BL              sub_5C6EDC
CMP             R0, #0
NOP
BEQ             locret_1D4F78
LDR             R0, [R5]
BL              sub_5C6F20
CMP             R0, #0
NOP
BNE             locret_1D4F78
MOV             R0, R7
BL              sub_5EE468
CMP             R0, #0
NOP
BEQ             loc_1D4FF8
MOV             R0, R7
BL              sub_528E64
NOP
NOP
BL              sub_5EC8BC
CMP             R0, #0
NOP
BNE             locret_1D4F78
LDRB            R0, [R6,#(byte_6E2389 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1D5014
CMP             R0, #1
BEQ             loc_1D5028
CMP             R0, #2
BEQ             loc_1D5030
MOV             R0, R7
BL              sub_52B040
LDRB            R0, [R6,#(byte_6E2389 - 0x6E2378)]
CMP             R0, #1
BNE             loc_1D5030
MOV             R0, R7
BL              sub_52C618
LDR             R1, =off_654164
LDM             R1, {R0,R1}
STRD            R0, R1, [R4,#0x5C]
POP             {R4-R8,PC}
