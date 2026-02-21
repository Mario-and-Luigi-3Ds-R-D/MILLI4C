PUSH            {R4-R6,LR}
MOV             R5, R0
LDRB            R0, [R0,#0x374]
TST             R0, #1
MOVNE           R4, #0
BEQ             locret_19650C
ADD             R1, R4, R4,LSL#2
ADD             R0, R5, R1,LSL#4
ADD             R0, R0, #0x40 ; '@'
BL              sub_1E8D2C
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_196468
MOV             R4, #0
RSB             R0, R4, R4,LSL#3
ADD             R1, R0, R4,LSL#6
ADD             R0, R5, R1,LSL#2
ADD             R0, R0, #0x234
BL              sub_58DD64
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_196488
MOV             R4, #0
ADD             R0, R4, R4,LSL#2
ADD             R0, R5, R0,LSL#4
ADD             R0, R0, #0x40 ; '@'
BL              sub_1E8CE4
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_1964AC
MOV             R4, #0
RSB             R0, R4, R4,LSL#3
ADD             R0, R0, R4,LSL#6
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x130
BL              sub_536F74
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1964CC
LDR             R1, =off_67E4F0
LDRD            R0, R1, [R1]
STRD            R0, R1, [R5,#0x38]
LDRB            R1, [R5,#0x374]
MOV             R0, #0
STR             R0, [R5,#0x370]
BIC             R1, R1, #1
STRB            R1, [R5,#0x374]
POP             {R4-R6,PC}
