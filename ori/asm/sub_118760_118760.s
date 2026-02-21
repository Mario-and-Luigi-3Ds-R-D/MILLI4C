PUSH            {R4-R12,LR}
MOV             R3, #6
MOV             R2, #0x18
LDR             R1, =nullsub_328
BLX             sub_1002F4
MOV             R1, #0
STRB            R1, [R0,#0x90]
STRB            R1, [R0,#0x91]
STRB            R1, [R0,#0x92]
MOV             R2, R1
MOV             R10, #0xC0
MOV             R11, #0xC8
STRB            R1, [R0,#0x93]
BIC             R3, R3, #0xFF
ORR             R3, R3, R1
BIC             R3, R3, #0xFF000000
MOV             R6, R1,LSL#16
ORR             R3, R3, R1,LSL#24
MOV             R7, R1,LSL#8
AND             R6, R6, #0xFF0000
BIC             R3, R3, #0xFF0000
AND             R9, R7, #0xFF00
ORR             R3, R3, R6
BIC             R7, R8, #0xFF
BIC             R8, R3, #0xFF00
AND             R3, R2, #0xFF
CMP             R3, #0
MOVEQ           R3, #0xE
MOVNE           R3, #0xF
BIC             R5, R5, #0xFF000000
ORR             R5, R5, R1,LSL#24
MOV             R3, R3,LSL#16
BIC             R5, R5, #0xFF0000
AND             R3, R3, #0xFF0000
ORR             R6, R7, R1
ORR             R3, R3, R5
ORR             R7, R8, R9
MOV             R5, R3,LSL#8
BIC             R8, R6, #0xFF00
MOV             R5, R5,LSR#24
BIC             R6, R12, #0xFF
MOV             R5, R5,LSL#8
MOV             R12, R1,LSL#8
BIC             R3, R3, #0xFF00
AND             R5, R5, #0xFF00
AND             R12, R12, #0xFF00
ORR             R3, R3, R5
ORR             R12, R12, R8
MOV             R5, R3,LSL#16
BIC             R3, R3, #0xFF
BIC             R12, R12, #0xFF000000
ORR             R5, R3, R5,LSR#24
ORR             R12, R12, R1,LSL#24
MOV             R8, R1,LSL#16
MOV             R3, R1
AND             R8, R8, #0xFF0000
BIC             R12, R12, #0xFF0000
ORR             R12, R12, R8
ORR             R6, R6, R3
MOVEQ           R8, #0xE
MOVNE           R8, #0xF
BIC             R6, R6, #0xFF000000
ORR             R6, R6, R8,LSL#24
BIC             LR, LR, #0xFF
MOV             R8, R6,LSR#24
BIC             R6, R6, #0xFF0000
MOV             R8, R8,LSL#16
AND             R8, R8, #0xFF0000
ORR             R6, R6, R8
ORR             LR, LR, R3
MOV             R8, R6,LSL#8
MOV             R9, R1,LSL#8
MOV             R8, R8,LSR#24
BIC             R6, R6, #0xFF00
MOV             R8, R8,LSL#8
AND             R8, R8, #0xFF00
AND             R9, R9, #0xFF00
BIC             LR, LR, #0xFF00
ORR             R6, R6, R8
ORR             LR, LR, R9
MOV             R8, R3,LSL#16
BIC             LR, LR, #0xFF0000
AND             R8, R8, #0xFF0000
ORR             LR, LR, R8
BIC             R4, R4, #0xFF
MOV             R8, R3,LSL#8
ORR             R4, R4, R3
AND             R8, R8, #0xFF00
BIC             LR, LR, #0xFF000000
BIC             R4, R4, #0xFF00
CMP             R2, #6; switch 6 cases
ORR             LR, LR, R1,LSL#24
ORR             R3, R4, R8
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_1188D4; jumptable 001188D4 default case
DCD loc_1188F4; jump table for switch statement
UXTH            R3, R3; jumptable 001188D4 case 0
MOV             R4, R10,LSL#16
B               loc_118938
UXTH            R3, R3; jumptable 001188D4 case 1
MOV             R4, R11,LSL#16
B               loc_118938
MOV             R4, #0xD0; jumptable 001188D4 case 2
UXTH            R3, R3
ORR             R3, R3, R4,LSL#16
B               def_1188D4; jumptable 001188D4 default case
MOV             R4, #0xD8; jumptable 001188D4 case 3
UXTH            R3, R3
ORR             R3, R3, R4,LSL#16
B               def_1188D4; jumptable 001188D4 default case
MOV             R4, #0xF0; jumptable 001188D4 case 4
UXTH            R3, R3
MOV             R4, R4,LSL#16
ORR             R3, R3, R4
ADD             R4, R2, R2,LSL#1; jumptable 001188D4 default case
ADD             R2, R2, #1
ADD             R4, R0, R4,LSL#3
CMP             R2, #6
STR             R7, [R4]
STR             R5, [R4,#4]
STR             R12, [R4,#8]
STR             R6, [R4,#0xC]
STR             LR, [R4,#0x10]
STR             R3, [R4,#0x14]
BCC             loc_118794
POP             {R4-R12,PC}
MOV             R4, #0xF8; jumptable 001188D4 case 5
UXTH            R3, R3
MOV             R4, R4,LSL#16
B               loc_118938
