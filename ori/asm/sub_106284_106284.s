PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R1, #0
LDR             R2, =0x1218
BL              sub_110BE4
ADD             R4, R6, #0x1000
LDRB            R0, [R4,#0x1A4]
ORR             R0, R0, #4
STRB            R0, [R4,#0x1A4]
BL              sub_107834
STRB            R0, [R4,#0x210]
BL              sub_10E15C
STRB            R0, [R4,#0x211]
MOV             R1, #0
MOV             R0, R6
BL              sub_1093B4
MOV             R0, #0xFF
ADD             R5, R6, #0xC00
ADD             R5, R5, #0x278
STRB            R0, [R4,#0x1A6]
MOV             R2, #0x204
MOV             R1, #0
MOV             R0, R5
BL              sub_110BE4
MOV             R0, #0x80
MOV             R7, #0
MOV             R1, R5
MOV             R2, #0x40 ; '@'
STRB            R0, [R1,#4]
SUBS            R2, R2, #1
STRB            R0, [R1,#8]!
BNE             loc_1062F4
MOV             R0, #0
MOV             R3, #3
ADD             R1, R6, R0,LSL#2
CMP             R0, #0
LDR             R5, [R1,#0xE60]
CMPNE           R0, #2
ORR             R2, R5, #0x1E
STR             R2, [R1,#0xE60]
BICEQ           R2, R2, #0x20 ; ' '
ORRNE           R2, R2, #0x20 ; ' '
STR             R2, [R1,#0xE60]
LDR             R2, [R1,#0xE64]
CMN             R0, #1
CMPNE           R0, #1
ORR             R2, R2, #0x1E
STR             R2, [R1,#0xE64]
BICEQ           R2, R2, #0x20 ; ' '
ORRNE           R2, R2, #0x20 ; ' '
SUBS            R3, R3, #1
ADD             R0, R0, #2
STR             R2, [R1,#0xE64]
BNE             loc_10630C
ADD             R0, R6, #0xC00
MOV             R2, #0xFF
MOV             R1, #0x10
ADD             R0, R0, #0x1D4
BL              sub_116B10
ADD             R0, R6, #0x400
MOV             R2, #0x60 ; '`'
MOV             R1, #0
ADD             R0, R0, #0x284
BL              sub_110BE4
STRB            R7, [R4,#0x7C]
MOV             R4, #0
MOV             R8, #0x40 ; '@'
ADD             R0, R6, R4
ADD             R5, R0, #0x1000
ADD             R0, R6, R4,LSL#7
ADD             R0, R0, #0x1000
STRB            R7, [R5,#0x7D]
ADD             R0, R0, #0x82
MOV             R2, #0
MOV             R1, #0x80
STRB            R8, [R5,#0x7F]
BL              sub_110BE4
ADD             R4, R4, #1
CMP             R4, #2
STRB            R7, [R5,#0x182]
BLT             loc_106390
ADD             R0, R6, #0x1000
MOV             R2, #0
MOV             R1, #0x20 ; ' '
ADD             R0, R0, #0x184
BL              sub_110BE4
ADD             R0, R6, #0x400
ADD             R0, R0, #0x2FC
MOV             R2, #0x28 ; '('
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R6, #0x400
POP             {R4-R8,LR}
ADD             R0, R0, #0x324
MOV             R2, #0x28 ; '('
MOV             R1, #0
B               sub_110BE4
