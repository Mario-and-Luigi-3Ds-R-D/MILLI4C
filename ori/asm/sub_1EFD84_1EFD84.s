PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R6, R1
LDR             R5, =byte_6ED8BC
LDR             R0, =unk_6E8CD0
STRB            R1, [R5]
LDRB            R0, [R0,#(byte_6E8E74 - 0x6E8CD0)]
AND             R0, R0, #0x20 ; ' '
MOV             R0, R0,LSR#5
STRB            R0, [R5,#(byte_6ED8BD - 0x6ED8BC)]
LDR             R0, =dword_6E7CD0
LDR             R0, [R0,#(dword_6E85EC - 0x6E7CD0)]
STR             R0, [R5,#(dword_6ED8C4 - 0x6ED8BC)]
LDR             R0, =dword_6E7CD0
BL              sub_5F0F50
STRB            R0, [R5,#(byte_6ED8C8 - 0x6ED8BC)]
LDR             R0, =unk_67E3D4
ADD             R6, R6, R6,LSL#2
MOV             R3, #0
MOV             R1, #0x64 ; 'd'
ADD             R0, R0, R6,LSL#2
STRB            R3, [R5,#(byte_6ED8C9 - 0x6ED8BC)]
STRB            R1, [R5,#(byte_6ED8CA - 0x6ED8BC)]
LDRH            R2, [R0]
ADD             R1, R5, #0x14
ADD             R12, R5, #0x20 ; ' '
STRH            R2, [R5,#(word_6ED8E0 - 0x6ED8BC)]
LDRH            R7, [R0,#4]
STRH            R7, [R5,#(word_6ED8D0 - 0x6ED8BC)]
LDRH            R7, [R5,#(word_6ED8D2 - 0x6ED8BC)]
LDRH            R2, [R0,#6]
BIC             R7, R7, #1
AND             R2, R2, #1
ORR             R7, R7, R2
STRH            R7, [R5,#(word_6ED8D2 - 0x6ED8BC)]
LDRH            R2, [R0,#8]
STRH            R2, [R5,#(word_6ED8D4 - 0x6ED8BC)]
LDRH            R2, [R5,#(word_6ED8D6 - 0x6ED8BC)]
LDRH            R8, [R0,#0xA]
BIC             R2, R2, #1
AND             R8, R8, #1
ORR             R9, R2, R8
STRH            R9, [R5,#(word_6ED8D6 - 0x6ED8BC)]
LDRH            R2, [R0,#0xC]
STRH            R2, [R1,#(word_6ED8D8 - 0x6ED8D0)]
LDRH            R2, [R1,#(word_6ED8DA - 0x6ED8D0)]
LDRH            R7, [R0,#0xE]
BIC             R2, R2, #1
AND             R7, R7, #1
ORR             R2, R2, R7
STRH            R2, [R1,#(word_6ED8DA - 0x6ED8D0)]
LDRH            R1, [R0,#0x10]
STRH            R1, [R12]
LDRH            R0, [R0,#0x12]
LDRH            R1, [R12,#(word_6ED8DE - 0x6ED8DC)]
AND             R0, R0, #1
BIC             R1, R1, #1
ORR             R0, R0, R1
STRH            R0, [R12,#(word_6ED8DE - 0x6ED8DC)]
LDR             R0, =unk_67E438
ADD             R1, R5, #0x28 ; '('
ADD             R0, R0, R6,LSL#2
LDRH            R2, [R0]
STRH            R2, [R5,#(word_6ED8F4 - 0x6ED8BC)]
LDRH            R12, [R0,#4]
STRH            R12, [R5,#(word_6ED8E4 - 0x6ED8BC)]
LDRH            R12, [R5,#(word_6ED8E6 - 0x6ED8BC)]
LDRH            R7, [R0,#6]
BIC             R2, R12, #1
AND             R12, R7, #1
ORR             R2, R2, R12
STRH            R2, [R5,#(word_6ED8E6 - 0x6ED8BC)]
LDRH            R2, [R0,#8]
STRH            R2, [R5,#(word_6ED8E8 - 0x6ED8BC)]
LDRH            R7, [R5,#(word_6ED8EA - 0x6ED8BC)]
LDRH            R8, [R0,#0xA]
BIC             R2, R7, #1
AND             R7, R8, #1
ORR             R2, R2, R7
STRH            R2, [R5,#(word_6ED8EA - 0x6ED8BC)]
LDRH            R2, [R0,#0xC]
STRH            R2, [R1,#(word_6ED8EC - 0x6ED8E4)]
LDRH            R2, [R1,#(word_6ED8EE - 0x6ED8E4)]
LDRH            R12, [R0,#0xE]
BIC             R2, R2, #1
AND             R12, R12, #1
ORR             R2, R2, R12
STRH            R2, [R1,#(word_6ED8EE - 0x6ED8E4)]
LDRH            R1, [R0,#0x10]
STRH            R1, [R5,#(word_6ED8F0 - 0x6ED8BC)]
LDRH            R0, [R0,#0x12]
LDRH            R1, [R5,#(word_6ED8F2 - 0x6ED8BC)]
AND             R0, R0, #1
BIC             R1, R1, #1
ORR             R0, R0, R1
STRH            R0, [R5,#(word_6ED8F2 - 0x6ED8BC)]
LDR             R0, [R4,#0xC4]
LDR             R1, [R0,#4]
LDR             R0, [R1,#0x14]
BIC             R0, R0, #0xF00
STR             R0, [R1,#0x14]
LDR             R1, [R4,#0xC4]
ORR             R0, R0, #1
LDR             R2, [R1,#4]
ORR             R1, R0, #2
STR             R0, [R2,#0x14]
LDR             R0, [R4,#0xC4]
ORR             R2, R1, #0x80
LDR             R0, [R0,#4]
STR             R1, [R0,#0x14]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
STR             R2, [R0,#0x14]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
STRH            R3, [R0,#0x1C]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
STRH            R3, [R0,#0x1E]
STR             R3, [R4,#0x154]
LDR             R0, [R4,#0xBC]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x38 ; '8'
LDR             R0, [R0]
STR             R0, [R4,#0x158]
LDR             R0, [R4,#0xC0]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x38 ; '8'
LDR             R0, [R0]
STR             R0, [R4,#0x15C]
LDR             R0, [R4]
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E1CC
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R10,LR}
BX              R12
