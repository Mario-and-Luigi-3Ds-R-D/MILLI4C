PUSH            {R4,LR}
BL              sub_234BEC
LDR             R1, =off_6B0958
LDR             R2, =off_67E540
ADD             R4, R0, #0x38 ; '8'
STR             R1, [R0]
MOV             R3, #3
LDM             R2, {R1,R2}
ADD             R0, R0, #0x40 ; '@'
STM             R4, {R1,R2}
MOV             R2, #0x50 ; 'P'
LDR             R1, =sub_1E8D74
BLX             sub_1002F4
LDR             R1, =sub_536F90
MOV             R3, #2
MOV             R2, #0x11C
ADD             R0, R0, #0xF0
BLX             sub_1002F4
SUB             R0, R0, #0x130
MOV             R1, #0
STR             R1, [R0,#0x370]
LDRB            R1, [R0,#0x374]
BIC             R1, R1, #1
STRB            R1, [R0,#0x374]
ADD             R0, R0, #0x384
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R2, R0, #0x18
MOV             R1, #1
STR             R2, [R0,#0x10]
STRB            R1, [R0,#0x14]
MOV             R3, R1
LDR             R1, =sub_62C6DC
MOV             R2, #0x58 ; 'X'
ADD             R0, R0, #0x38 ; '8'
BLX             sub_1002F4
SUB             R0, R0, #0x3BC
POP             {R4,PC}
