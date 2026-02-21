PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R8, R1
MOV             R5, R2
MOV             R7, R3
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_141A6C
LDM             R5, {R2,R4}
LDRH            R1, [R5,#0x12]
ADD             R0, R2, #0xEC000000
CMP             R0, #0x8000000
BCS             loc_141A68
LDR             R0, =0x131A
MOV             R12, R2
LDRH            R0, [R0,R6]
AND             R0, R0, #1
ADD             R0, R0, R0,LSL#1
ADD             R0, R6, R0,LSL#5
ADD             R0, R0, R8,LSL#2
ADD             R0, R0, #0x1000
LDR             R6, [R0,#0xB0]
LDR             R0, [R6,#0xB4]
UXTH            R0, R0
TST             R0, #0xC
BNE             loc_1419C0
AND             R3, R0, #3
CMP             R3, #1
ADDEQ           R12, R2, R4
CMP             R3, #2
ADDEQ           R12, R12, R4,LSL#1
MOV             R3, R0,LSL#28
MOV             R8, #1
CMP             R8, R3,LSR#30
BNE             loc_1419E4
AND             R9, R0, #3
CMP             R9, #1
ADDEQ           R12, R12, R4,LSL#1
CMP             R9, #2
ADDEQ           R12, R12, R4,LSL#2
MOV             R9, #2
CMP             R9, R3,LSR#30
ANDEQ           R0, R0, #3
CMPEQ           R0, #1
BNE             loc_141A14
LDR             R9, =0x92492493
ADD             R0, R4, #0xD
MOV             R3, #0
SMLAL           R3, R0, R9, R0
MOV             R3, R0,ASR#3
SUB             R0, R3, R0,ASR#31
ADD             R12, R12, R0,LSL#3
CMP             R12, #0x14000000
BLS             loc_141A68
CMP             R12, #0x1C000000
BHI             loc_141A68
ADD             R0, R2, #0xC000000
ADD             R3, R7, R7,LSL#2
ADD             R9, R6, #4
MOV             R2, R4,ROR#16
ADD             R4, R9, R3,LSL#2
ADD             R3, R4, #0x48 ; 'H'
MOV             R0, R0,ROR#16
STRH            R1, [R4,#0x58]
STM             R3, {R0,R2}
LDR             R1, [R5,#8]
CMP             R1, #0
BEQ             loc_141A70
ADD             R0, R4, #0x50 ; 'P'
BL              sub_141EE8
STRB            R8, [R4,#0x56]
NOP
B               loc_141A7C
MOV             R0, #0
POP             {R4-R10,PC}
LDRH            R0, [R4,#0x56]
BIC             R0, R0, #0xFF
STRH            R0, [R4,#0x56]
LDRH            R0, [R9,#0x46]
ORR             R0, R0, R8,LSL R7
STRH            R0, [R9,#0x46]
LDRB            R0, [R5,#0x10]
STRB            R0, [R4,#0x57]
LDR             R0, [R6]
ORR             R0, R0, #0x80000
STR             R0, [R6]
MOV             R0, #1
POP             {R4-R10,PC}
