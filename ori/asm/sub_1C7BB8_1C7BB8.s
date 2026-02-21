PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xAA8]
MOV             R5, R1
STRB            R1, [R4,#0xAAC]
CMP             R0, #0
BEQ             loc_1C7BE8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#0xAA8]
CMP             R5, #0xA
BEQ             loc_1C7EBC
BGE             loc_1C7C30
CMP             R5, #0xA; switch 10 cases
LDRCC           PC, [PC,R5,LSL#2]; switch jump
B               def_1C7BF8; jumptable 001C7BF8 default case
DCD loc_1C7CD4; jump table for switch statement
LDR             R0, [R4,#0xAA8]; jumptable 001C7BF8 default case
B               loc_1C7CF8
CMP             R5, #0xF
BEQ             loc_1C7F6C
BGE             loc_1C7C88
CMP             R5, #0xB
BEQ             loc_1C7EE8
CMP             R5, #0xC
BEQ             loc_1C7F14
CMP             R5, #0xD
BEQ             loc_1C7F40
CMP             R5, #0xE
BNE             locret_1C801C
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x68 ; 'h'
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_5100B0
NOP
NOP
B               loc_1C7CF4
CMP             R5, #0x10
BEQ             loc_1C7F98
CMP             R5, #0x11
BEQ             loc_1C7FC4
CMP             R5, #0x12
BEQ             loc_1C7FF0
CMP             R5, #0xFE
BNE             locret_1C801C
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x18
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1C7CF4
LDR             R1, =off_6B8B74
STM             R0, {R1,R4}
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8; jumptable 001C7BF8 case 0
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x238
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_1F6D28
STR             R0, [R4,#0xAA8]
CMP             R0, #0
BEQ             locret_1C801C
LDR             R1, [R0]
LDR             R1, [R1,#0x34]
POP             {R4-R6,LR}
BX              R1
LDR             R1, =dword_6ED9B8; jumptable 001C7BF8 case 1
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x1F8
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_202960
NOP
NOP
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8; jumptable 001C7BF8 case 2
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x110
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_236E50
NOP
NOP
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8; jumptable 001C7BF8 case 3
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x25C
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_2DDBA0
NOP
NOP
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8; jumptable 001C7BF8 case 4
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x390
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_2C5920
NOP
NOP
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8; jumptable 001C7BF8 case 5
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x1BC
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1C7CF4
MOV             R1, R4
BL              sub_2CF2C4
LDR             R1, =off_6B3C64
STR             R1, [R0]
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8; jumptable 001C7BF8 case 9
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x14
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_2C39EC
NOP
NOP
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8; jumptable 001C7BF8 case 6
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x1BC
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1C7CF4
MOV             R1, R4
BL              sub_2CF2C4
LDR             R1, =off_6ACC24
STR             R1, [R0]
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8; jumptable 001C7BF8 case 7
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x2E8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1C7CF4
MOV             R1, R4
BL              sub_308794
LDR             R1, =off_6B3CF0
STR             R1, [R0]
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8; jumptable 001C7BF8 case 8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x2E8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1C7CF4
MOV             R1, R4
BL              sub_308794
LDR             R1, =off_6ACCB0
STR             R1, [R0]
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x180
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_310E3C
NOP
NOP
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x2F8
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_2034A4
NOP
NOP
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x74 ; 't'
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_201650
NOP
NOP
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_5A3C8C
NOP
NOP
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x68 ; 'h'
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_542B8C
NOP
NOP
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x24 ; '$'
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_5474CC
NOP
NOP
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x38 ; '8'
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1C7CF4
LDR             R1, =off_6B8A0C
STM             R0, {R1,R4}
B               loc_1C7CF4
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x220
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_2DD528
NOP
NOP
B               loc_1C7CF4
POP             {R4-R6,PC}
