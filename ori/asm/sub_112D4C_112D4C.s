PUSH            {R4,LR}
LDR             R4, =dword_6EF0D0
MOV             R1, #2
MOV             R0, #1
STR             R1, [R4]
MOV             R2, R0
RSB             R3, R0, #6
ADD             R2, R2, #2
STR             R1, [R4,R0,LSL#2]
ADD             R0, R0, #1
CMP             R3, R2
STR             R1, [R4,R0,LSL#2]
ADD             R0, R0, #1
BGT             loc_112D68
LDR             R1, =byte_6D23B8
MOV             R0, #1
STR             R0, [R1,#(dword_6D23C0 - 0x6D23B8)]
BL              sub_11CD90
NOP
NOP
BL              sub_11CD54
LDR             R0, =0xF4240
MOV             R1, #0
BL              sub_121140
LDR             R1, [R4]
MOV             R0, #0
CMP             R1, #0
LDR             R1, [R4,#(dword_6EF0D4 - 0x6EF0D0)]
MOVGT           R0, #1
CMP             R1, #0
LDR             R1, [R4,#(dword_6EF0D8 - 0x6EF0D0)]
ADDGT           R0, R0, #1
CMP             R1, #0
LDR             R1, [R4,#(dword_6EF0DC - 0x6EF0D0)]
ADDGT           R0, R0, #1
CMP             R1, #0
LDR             R1, [R4,#(dword_6EF0E0 - 0x6EF0D0)]
ADDGT           R0, R0, #1
CMP             R1, #0
ADDGT           R0, R0, #1
CMP             R0, #0
BGT             loc_112DA0
POP             {R4,PC}
