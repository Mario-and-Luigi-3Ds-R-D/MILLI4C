PUSH            {R4-R6,LR}
LDR             R5, =byte_6D4A28
LDR             R0, [R5,#(dword_6D4A30 - 0x6D4A28)]
CMP             R0, #0
MOVNE           R0, #0
BNE             locret_119368
BL              sub_119B9C
MOVS            R1, R0,LSR#31
BNE             locret_119368
LDR             R4, =aDspDsp; "dsp::DSP"
LDR             R6, =dword_6D4A3C
MOV             R0, R4
BL              sub_300168
MOV             R2, R0
MOV             R3, #0
MOV             R1, R4
MOV             R0, R6
BL              sub_119C04
MOVS            R1, R0,LSR#31
BNE             locret_119368
SUB             R0, R6, #4
STR             R0, [R5,#(dword_6D4A30 - 0x6D4A28)]
LDR             R1, [R5,#(dword_6D4A3C - 0x6D4A28)]
LDR             R3, =unk_70E398
STR             R1, [R0]
MOV             R0, #0
MOV             R1, #8
MOV             R4, R0
SUB             R2, R3, #0x20 ; ' '
SUB             R12, R3, #0x40 ; '@'
STR             R4, [R3,R0,LSL#2]
STR             R4, [R2,R0,LSL#2]
STR             R4, [R12,R0,LSL#2]
SUBS            R1, R1, #1
ADD             R0, R0, #1
BNE             loc_11932C
STRB            R4, [R5,#(byte_6D4A29 - 0x6D4A28)]
STR             R4, [R5,#(dword_6D4A40 - 0x6D4A28)]
STR             R4, [R5,#(dword_6D4A44 - 0x6D4A28)]
STRH            R4, [R5,#(word_6D4A2C - 0x6D4A28)]
STRH            R4, [R5,#(word_6D4A2E - 0x6D4A28)]
LDR             R0, =dword_70E3B8
STRB            R4, [R5,#(byte_6D4A2A - 0x6D4A28)]
BL              sub_11A6F8
MOV             R0, R4
POP             {R4-R6,PC}
