PUSH            {R4-R6,LR}
MOV             R6, R1
LDR             R2, [R0,#0x800]
MOV             R4, R0
ADD             R5, R0, #0x800
MOV             R1, R0
MOV             R0, R6
BL              sub_1273D0
LDR             R0, [R5]
BIC             R0, R0, #3
ADD             R1, R0, R6
LDR             R0, [R5,#0x9C]
STR             R0, [R1],#4
LDR             R0, =dword_6C3DDC
LDR             R0, [R0]
STR             R0, [R1],#4
ADD             R0, R4, #0x800
ADD             R0, R0, #0xA4
BL              sub_12CA78
LDR             R1, [R4,#0x8A0]
LDR             R2, =0xFF00FF11
ORR             R1, R2, R1,LSL#16
STR             R1, [R0],#4
LDR             R2, =0xF0105
LDR             R1, =0x222
STR             R2, [R0],#4
ADD             R2, R2, R1,ASR#9
STM             R0!, {R1,R2}
MOV             R1, #0x80000000
LDR             R2, =0xF02C0
STR             R1, [R0],#4
ADD             R1, R4, #0x800
STR             R2, [R0],#4
LDR             R2, =0xFF02C1
ADD             R1, R1, #0xB4
MOV             R5, R0
BL              sub_127384
ADD             R5, R5, #0x48 ; 'H'
ADD             R6, R4, #0x800
ADD             R1, R4, #0x800
LDR             R2, [R4,#0x884]
ADD             R6, R6, #0x84
ADD             R1, R1, #4
MOV             R0, R5
BL              sub_1273D0
LDR             R0, [R6]
BIC             R0, R0, #3
ADD             R0, R0, R5
POP             {R4-R6,PC}
