PUSH            {R4-R6,LR}
BL              sub_234BEC
LDR             R1, =off_6B3894
LDR             R2, =unk_675FF4
ADD             R3, R0, #0x38 ; '8'
STR             R1, [R0]
MOV             R5, #0
LDM             R2, {R1,R2}
ADD             R0, R0, #0x44 ; 'D'
STM             R3, {R1,R2,R5}
BL              sub_5A2BD0
LDR             R4, =off_6B7BFC
LDR             R1, =sub_5A39D0
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R4, [R0],#0x30
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
MOV             R6, #1
STR             R1, [R0,#0x28]
STRB            R6, [R0,#0x2C]
ADD             R0, R0, #0x58 ; 'X'
BL              sub_5A2BD0
LDR             R1, =sub_5A39D0
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R4, [R0],#0x30
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
STRB            R6, [R0,#0x2C]
SUB             R0, R0, #0x9C
STR             R5, [R0,#0x120]
POP             {R4-R6,PC}
