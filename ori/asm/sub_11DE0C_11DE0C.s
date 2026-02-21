PUSH            {R4-R10,LR}
MOV             R6, #1
CMP             R3, #0
MOV             R4, R0
LDR             R7, =0xF0111
MOV             R9, R2
BIC             R8, R7, R6
BEQ             loc_11DE34
STRD            R6, R7, [R1],#8
STM             R1!, {R6,R8}
TST             R9, #1
BEQ             loc_11DE7C
LDRB            R0, [R4,#4]
CMP             R0, #0
MOVEQ           R2, #2
MOVNE           R2, #0
ORR             R2, R2, R0,LSL#16
LDR             R0, =0xF0117
STR             R2, [R1],#4
ADD             R5, R1, #4
STR             R0, [R1]
LDR             R0, [R4]
BL              sub_122B64
MOV             R1, R0,LSR#3
LDR             R0, =0xF011D
STR             R1, [R5],#4
ADD             R1, R5, #4
STR             R0, [R5]
TST             R9, #6
BEQ             loc_11DEB4
LDR             R0, =0xF0116
LDRB            R2, [R4,#0x28]
ADD             R5, R1, #8
STR             R0, [R1,#4]
STR             R2, [R1]
LDR             R0, [R4,#0x24]
BL              sub_122B64
MOV             R1, R0,LSR#3
LDR             R0, =0xF011C
STR             R1, [R5],#4
STR             R0, [R5],#4
MOV             R1, R5
ADD             R0, R4, #0x40 ; '@'
LDR             R3, =0xFFFFF000
LDM             R0, {R0,R2}
ADD             R4, R4, #0x40 ; '@'
LDR             R12, =0xF011E
ADD             R5, R3, R2,LSL#12
ORR             R5, R5, #0x1000000
ORR             R0, R0, R5
STM             R1, {R0,R12}
SUB             R2, R12, #0xB0
ADD             R0, R1, #8
LDM             R4, {R1,R12}
ADD             R3, R3, R12,LSL#12
ORR             R3, R3, #0x1000000
ORR             R1, R1, R3
STM             R0!, {R1,R2,R6,R7}
STM             R0!, {R6,R8}
POP             {R4-R10,PC}
