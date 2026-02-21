PUSH            {R4-R8,LR}
MOV             R5, R2
LDR             R6, =byte_6D23B8
LDR             R2, [R6,#(dword_6D23C8 - 0x6D23B8)]
CMP             R2, #0
BNE             loc_109CBC
BL              sub_1136D0
CMP             R0, #0
BEQ             loc_109CBC
LDR             R4, =unk_6F4174
LDR             R0, =off_6C3030
MOV             R7, #0
STR             R4, [R6,#(dword_6D23C8 - 0x6D23B8)]
STR             R7, [R6,#(dword_6D23BC - 0x6D23B8)]
STM             R4, {R0,R5}
MOV             R0, #0x18
BL              sub_112B5C
STR             R0, [R4,#(dword_6F417C - 0x6F4174)]
MOV             R0, #0x48 ; 'H'
BL              sub_112A40
STR             R0, [R4,#(dword_6F4180 - 0x6F4174)]
BL              sub_1137B8
STR             R0, [R4,#(dword_6F4184 - 0x6F4174)]
STR             R7, [R4,#(dword_6F4188 - 0x6F4174)]
MOV             R0, #0xFFFFFFFF
STR             R0, [R4,#(dword_6F4190 - 0x6F4174)]
ADD             R0, R4, #0x7000
LDR             R1, =sub_113028
MOV             R3, #2
MOV             R2, #0x34 ; '4'
ADD             R0, R0, #0x23C
STR             R7, [R4,#(dword_6F418C - 0x6F4174)]
BLX             sub_1002F4
SUB             R0, R0, #0x7000
SUB             R0, R0, #0x228
BL              sub_118AE8
MOV             R0, #1
STR             R0, [R6,#(dword_6D23CC - 0x6D23B8)]
STR             R7, [R6,#(dword_6D23D0 - 0x6D23B8)]
STR             R7, [R6,#(dword_6D23D4 - 0x6D23B8)]
LDR             R0, [R6,#(dword_6D23C8 - 0x6D23B8)]
BL              sub_113044
LDR             R0, [R6,#(dword_6D23C8 - 0x6D23B8)]
POP             {R4-R8,PC}
