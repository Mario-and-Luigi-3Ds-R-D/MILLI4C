PUSH            {R4-R7,LR}
ADD             R1, R2, #8
SUB             SP, SP, #0xC
LDR             R0, [R2,#0x1C]
LDM             R1, {R1,R3}
ADD             R7, R2, #0x70 ; 'p'
AND             R6, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
AND             R5, R3, #0xFF
LDR             R0, [R0]
BL              sub_52A63C
LDRB            R2, [R0,#0xF0]
MOV             R4, R0
MOV             R3, R6
MOV             R1, R7
MOV             R0, SP
BL              sub_14C73C
MOV             R2, SP
MOV             R1, R5
MOV             R0, R4
BL              sub_218EC0
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R7,PC}
