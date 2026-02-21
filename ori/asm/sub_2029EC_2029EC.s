PUSH            {R4-R8}
ADD             R1, R1, R0
MOV             R3, R0
SUB             R4, R1, #1
MOV             R5, #0xC0
MOV             R6, #0xE0
MOV             R7, #0x80
B               loc_202A7C
CMP             R1, #0x7F
SUB             R12, R4, R3
BHI             loc_202A24
CMP             R12, #0
STRBNE          R1, [R3],#1
B               loc_202A78
CMP             R1, #0x800
BCS             loc_202A50
CMP             R12, #2
BCC             loc_202A78
MOV             R12, R1,LSL#21
AND             R1, R1, #0x3F ; '?'
ORR             R12, R5, R12,LSR#27
STRB            R12, [R3],#1
ORR             R1, R1, #0x80
STRB            R1, [R3],#1
B               loc_202A78
CMP             R12, #3
BCC             loc_202A78
ORR             R8, R6, R1,LSR#12
MOV             R12, R1,LSL#20
STRB            R8, [R3],#1
ORR             R12, R7, R12,LSR#26
AND             R1, R1, #0x3F ; '?'
STRB            R12, [R3],#1
ORR             R1, R1, #0x80
STRB            R1, [R3],#1
ADD             R2, R2, #2
LDRH            R1, [R2]
CMP             R1, #0
CMPNE           R3, R4
BNE             loc_202A0C
MOV             R1, #0
STRB            R1, [R3]
POP             {R4-R8}
BX              LR
