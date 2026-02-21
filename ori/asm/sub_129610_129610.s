PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, R1
MOV             R6, R2
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_129674
LDR             R0, =0x131E
CMP             R4, #0
LDRH            R0, [R0,R5]
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x1000
LDR             R0, [R0,#0xA0]
ADD             R1, R0, #4
ADD             R1, R1, R4,LSL#1
STRH            R6, [R1,#0x20]
LDREQ           R1, [R0]
ORREQ           R1, R1, #0x40 ; '@'
BEQ             loc_12966C
CMP             R4, #1
LDREQ           R1, [R0]
ORREQ           R1, R1, #0x80
BNE             loc_129670
STR             R1, [R0]
MOV             R0, #1
POP             {R4-R6,PC}
