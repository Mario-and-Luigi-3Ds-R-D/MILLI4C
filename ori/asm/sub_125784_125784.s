PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x12]
LDRB            R12, [R1,#0x34]
MOV             R5, R1
MOV             R3, #0x10
ORR             R0, R0, R12
STRB            R0, [R4,#0x12]
LDRB            R12, [R5,#0x4A]
ADD             R2, R4, #8
ADD             R1, R1, #0x36 ; '6'
ORR             R0, R0, R12,LSL#2
STRB            R0, [R4,#0x12]
LDRB            R12, [R5,#0x35]
BIC             R0, R0, #0x10
AND             R3, R3, R12,LSL#4
ORR             R0, R0, R3
STRB            R0, [R4,#0x12]
LDRH            R0, [R5,#0x5A]
STRH            R0, [R4,#0x10]
MOV             R0, R2
BL              sub_1257F4
MOV             R0, #0xFF
STRB            R0, [R4,#0xF]
ADD             R1, R5, #0x42 ; 'B'
MOV             R0, R4
POP             {R4-R6,LR}
NOP
