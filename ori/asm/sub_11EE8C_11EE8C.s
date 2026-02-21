PUSH            {R4-R8}
MOV             R3, #0
ADD             R2, R3, R3,LSL#1
ADD             R3, R3, #1
ADD             R2, R0, R2,LSL#3
CMP             R3, #6
LDRB            R12, [R2,#6]
LDRB            R5, [R2,#5]
LDRB            R6, [R2,#0xD]
LDRB            R4, [R2,#4]
LDRB            R7, [R2,#0xE]
LDRB            R8, [R2,#0xF]
MOV             R12, R12,LSL#8
ORR             R4, R4, R5,LSL#4
ORR             R12, R12, R6,LSL#16
ORR             R12, R12, R4
ORR             R12, R12, R7,LSL#20
ORR             R12, R12, R8,LSL#24
STR             R12, [R1],#4
LDRH            R12, [R2,#0x16]
ORR             R12, R12, #0x80000000
ORR             R12, R12, #0x4F0000
STR             R12, [R1],#4
LDRB            R12, [R2,#3]
LDRB            R5, [R2,#2]
LDRB            R6, [R2,#0xA]
LDRB            R4, [R2,#1]
LDRB            R7, [R2,#0xB]
LDRB            R8, [R2,#0xC]
MOV             R12, R12,LSL#8
ORR             R4, R4, R5,LSL#4
ORR             R12, R12, R6,LSL#12
ORR             R12, R12, R4
ORR             R12, R12, R7,LSL#16
ORR             R12, R12, R8,LSL#20
STR             R12, [R1],#4
LDRB            R4, [R2,#9]
LDRB            R12, [R2]
ORR             R12, R12, R4,LSL#16
STR             R12, [R1],#4
LDR             R12, [R2,#0x12]
LDRB            R4, [R2,#0x15]
BIC             R12, R12, #0xFF000000
ORR             R12, R12, R4,LSL#24
STR             R12, [R1],#4
LDRB            R12, [R2,#7]
LDRB            R2, [R2,#0x10]
ORR             R2, R12, R2,LSL#16
STR             R2, [R1],#4
BCC             loc_11EE94
LDRB            R2, [R0,#0x20]
LDRB            R12, [R0,#0x38]
LDRB            R3, [R0,#0x29]
LDRB            R4, [R0,#0x41]
MOV             R2, R2,LSL#8
MOV             R12, R12,LSL#9
ORR             R2, R2, R3,LSL#12
ORR             R3, R12, R4,LSL#13
LDRB            R5, [R0,#0x50]
LDRB            R6, [R0,#0x59]
LDRB            R7, [R0,#0x68]
LDRB            R8, [R0,#0x71]
ORR             R2, R2, R3
LDR             R3, =0x200E0
MOV             R12, R5,LSL#10
MOV             R4, R7,LSL#11
ORR             R12, R12, R6,LSL#14
ORR             R4, R4, R8,LSL#15
ORR             R12, R12, R2
ORR             R12, R12, R4
STR             R3, [R1,#4]
STR             R12, [R1]
LDR             R3, [R0,#0x90]
LDRB            R0, [R0,#0x93]
LDR             R2, =0xF00FD
BIC             R3, R3, #0xFF000000
ORR             R0, R3, R0,LSL#24
ADD             R3, R1, #8
STM             R3, {R0,R2}
ADD             R0, R1, #0x10
POP             {R4-R8}
BX              LR
