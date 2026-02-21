PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R0, [R1]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #2
BEQ             loc_23381C
ADD             R6, R5, #0x14
MOV             R2, #0x20 ; ' '
ADD             R1, R5, #0x18
MOV             R0, R4
BL              sub_1103A4
MOV             R2, #0x40 ; '@'
ADD             R1, R6, #0x84
ADD             R0, R4, #0x20 ; ' '
BL              sub_1103A4
MOV             R2, #4
ADD             R1, R6, #0xC4
ADD             R0, R4, #0x60 ; '`'
BL              sub_1103A4
LDRB            R0, [R4,#0x64]
LDRB            R1, [R5,#0xDE]
BIC             R0, R0, #1
AND             R1, R1, #1
ORR             R0, R0, R1
STRB            R0, [R4,#0x64]
LDRB            R1, [R5,#0xDE]
BIC             R0, R0, #4
AND             R1, R1, #4
ORR             R0, R0, R1
STRB            R0, [R4,#0x64]
LDRB            R1, [R5,#0xDE]
BIC             R0, R0, #8
AND             R1, R1, #8
ORR             R0, R0, R1
STRB            R0, [R4,#0x64]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #3
BEQ             locret_233D70
ADD             R0, R5, #0x108
ADD             R3, R4, #0x68 ; 'h'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R5, #0x118
ADD             R3, R4, #0x74 ; 't'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R5, #0x130
LDM             R0, {R0,R1}
STRD            R0, R1, [R4,#0x80]
ADD             R0, R5, #0x138
LDM             R0, {R0,R1}
STRD            R0, R1, [R4,#0x88]
LDR             R0, [R4,#0x90]
LDR             R1, [R5,#0x464]
BIC             R0, R0, #0xF
AND             R1, R1, #0xF
ORR             R0, R0, R1
STR             R0, [R4,#0x90]
LDR             R1, [R5,#0x464]
BIC             R0, R0, #0xF0
AND             R1, R1, #0xF0
ORR             R0, R0, R1
STR             R0, [R4,#0x90]
LDR             R1, [R5,#0x464]
BIC             R0, R0, #0x700
AND             R1, R1, #0x700
ORR             R0, R0, R1
STR             R0, [R4,#0x90]
LDR             R1, [R5,#0x464]
BIC             R0, R0, #0x3800
AND             R1, R1, #0x3800
ORR             R0, R0, R1
STR             R0, [R4,#0x90]
LDR             R1, [R5,#0x464]
BIC             R0, R0, #0x4000
AND             R1, R1, #0x4000
ORR             R0, R0, R1
STR             R0, [R4,#0x90]
LDR             R0, [R5]
LDR             R1, [R0,#0x80]
MOV             R0, R5
BLX             R1
LDR             R1, [R4,#0x90]
ADD             R8, R5, #0x400
BIC             R1, R1, #0x8000
ORR             R0, R1, R0,LSL#15
STR             R0, [R4,#0x90]
LDR             R1, [R5,#0x464]
BIC             R0, R0, #0x10000
AND             R1, R1, #0x10000
ORR             R0, R0, R1
STR             R0, [R4,#0x90]
LDRH            R0, [R8,#0x68]
STRH            R0, [R4,#0x94]
LDRH            R0, [R8,#0x6A]
STRH            R0, [R4,#0x96]
LDR             R0, [R5,#0x470]
STR             R0, [R4,#0x98]
LDR             R0, [R5,#0x474]
STR             R0, [R4,#0x9C]
LDRB            R0, [R5,#0x4B4]
STRB            R0, [R4,#0xA0]
LDRB            R0, [R4,#0xA1]
LDRB            R1, [R5,#0x4B5]
BIC             R0, R0, #3
AND             R1, R1, #3
ORR             R0, R0, R1
STRB            R0, [R4,#0xA1]
LDRB            R1, [R5,#0x4B5]
BIC             R0, R0, #4
AND             R1, R1, #4
ORR             R0, R0, R1
STRB            R0, [R4,#0xA1]
LDRB            R1, [R5,#0x4B5]
BIC             R0, R0, #8
AND             R1, R1, #8
ORR             R0, R0, R1
STRB            R0, [R4,#0xA1]
LDRB            R1, [R5,#0x4B5]
BIC             R0, R0, #0xF0
BIC             R1, R1, #0xF
ORR             R0, R0, R1
STRB            R0, [R4,#0xA1]
LDR             R0, [R5,#0x4AC]
CMP             R0, #0
LDRNE           R1, [R5,#0x4B0]
CMPNE           R1, #0
MOVEQ           R0, #0
SUBNE           R0, R0, R1
STRB            R0, [R4,#0xA2]
LDR             R0, [R5]
LDR             R1, [R0,#0xC]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_233A70
LDR             R0, [R5]
LDR             R1, [R0,#0x38]
MOV             R0, R5
BLX             R1
MOV             R6, R0
LDR             R0, [R0,#0xA4]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
LDR             R0, [R4,#0x90]
BICEQ           R0, R0, #0x20000
ORRNE           R0, R0, #0x20000
TST             R0, #0x20000
STR             R0, [R4,#0x90]
BEQ             loc_233A7C
LDR             R0, [R6,#0xA4]
ADD             R7, R4, #0x100
LDRB            R0, [R0,#0x6C]
STRH            R0, [R7,#0xE]
LDR             R0, [R6,#0xA4]
LDR             R2, [R0,#0x10]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
STRH            R0, [R7,#0x10]
LDR             R0, [R6,#0xA4]
LDRH            R0, [R0,#0x16]
STRH            R0, [R7,#0x12]
B               loc_233A7C
LDR             R0, [R4,#0x90]
BIC             R0, R0, #0x20000
STR             R0, [R4,#0x90]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #4
BEQ             locret_233D70
LDR             R1, [R8,#0xB8]
MOV             R0, #0x20 ; ' '
MOV             R3, #0xFC
STR             R1, [R4,#0xA4]
LDR             R1, [R8,#0xBC]
MOV             R12, #0x3F00
STR             R1, [R4,#0xA8]
LDR             R1, [R8,#0xC0]
STR             R1, [R4,#0xAC]
LDR             R1, [R8,#0xC4]
STR             R1, [R4,#0xB0]
LDR             R1, [R8,#0xC8]
STR             R1, [R4,#0xB4]
LDR             R1, [R8,#0xCC]
STR             R1, [R4,#0xB8]
LDRH            R1, [R8,#0xD0]
STRH            R1, [R4,#0xBC]
LDRH            R1, [R8,#0xD2]
STRH            R1, [R4,#0xBE]
LDR             R1, [R8,#0xD4]
STR             R1, [R4,#0xC0]
LDR             R1, [R8,#0xDC]
STR             R1, [R4,#0xC4]
LDR             R1, [R8,#0xE4]
STR             R1, [R4,#0xC8]
LDR             R1, [R4,#0xCC]
LDR             R2, [R5,#0x4EC]
BIC             R1, R1, #1
AND             R2, R2, #1
ORR             R1, R1, R2
STR             R1, [R4,#0xCC]
LDR             R2, [R5,#0x4EC]
BIC             R1, R1, #2
AND             R2, R2, #2
ORR             R1, R1, R2
STR             R1, [R4,#0xCC]
LDR             R2, [R5,#0x4EC]
BIC             R1, R1, #4
AND             R2, R2, #4
ORR             R1, R1, R2
STR             R1, [R4,#0xCC]
LDR             R2, [R5,#0x4EC]
BIC             R1, R1, #8
AND             R2, R2, #8
ORR             R1, R1, R2
STR             R1, [R4,#0xCC]
LDR             R2, [R5,#0x4EC]
BIC             R1, R1, #0x10
AND             R2, R2, #0x10
ORR             R1, R1, R2
STR             R1, [R4,#0xCC]
LDR             R2, [R5,#0x4EC]
BIC             R1, R1, #0x20 ; ' '
AND             R0, R0, R2,LSR#5
ORR             R0, R0, R1
STR             R0, [R4,#0xCC]
LDR             R0, [R8,#0x1AC]
STR             R0, [R4,#0xD0]
LDR             R1, [R5,#0x5E0]
LDR             R0, [R4,#0xD4]
AND             R1, R3, R1,LSR#7
BIC             R0, R0, #0xFC
ORR             R0, R0, R1
STR             R0, [R4,#0xD4]
LDR             R1, [R5,#0x5E0]
BIC             R0, R0, #0x3F00
AND             R1, R12, R1,LSR#7
ORR             R0, R0, R1
STR             R0, [R4,#0xD4]
LDR             R0, [R5,#0x5E4]
STR             R0, [R4,#0xD8]
LDR             R0, [R8,#0x1E8]
STR             R0, [R4,#0xDC]
LDR             R0, [R8,#0x1EC]
STR             R0, [R4,#0xE0]
LDR             R0, [R8,#0x1F0]
STR             R0, [R4,#0xE4]
LDR             R0, [R8,#0x1F4]
STR             R0, [R4,#0xE8]
LDR             R0, [R8,#0x1F8]
STR             R0, [R4,#0xEC]
LDR             R0, [R8,#0x1FC]
STR             R0, [R4,#0xF0]
LDR             R2, [R5,#0x608]
LDR             R0, [R5,#0x610]
CMP             R2, #0
CMPNE           R0, #0
MOVNE           R1, #0
BEQ             loc_233C1C
CMP             R0, R2
BNE             loc_233C08
SXTH            R0, R1
B               loc_233C20
LDR             R6, [R0]
TST             R6, #1
ADDEQ           R1, R1, #1
ADDEQ           R0, R0, #0x88
BEQ             loc_233BF8
MOV             R0, #0xFFFFFFFF
STRH            R0, [R4,#0xF4]
LDR             R2, [R5,#0x60C]
LDR             R0, [R5,#0x610]
CMP             R2, #0
CMPNE           R0, #0
MOVNE           R1, #0
BEQ             loc_233C60
CMP             R0, R2
BNE             loc_233C4C
SXTH            R0, R1
B               loc_233C64
LDR             R6, [R0]
TST             R6, #1
ADDEQ           R1, R1, #1
ADDEQ           R0, R0, #0x88
BEQ             loc_233C3C
MOV             R0, #0xFFFFFFFF
STRH            R0, [R4,#0xF6]
LDR             R0, [R5,#0x658]
LDR             R2, [R4,#0xF8]
AND             R0, R3, R0,LSL#2
BIC             R2, R2, #0xFC
ORR             R0, R0, R2
STR             R0, [R4,#0xF8]
LDR             R1, [R5,#0x658]
BIC             R0, R0, #0x3F00
AND             R1, R12, R1,LSL#2
ORR             R1, R1, R0
ADD             R0, R5, #0x600
STR             R1, [R4,#0xF8]
LDRH            R1, [R4,#0xFA]
LDRH            R2, [R0,#0x5C]
BIC             R1, R1, #0x3F ; '?'
AND             R2, R2, #0x3F ; '?'
ORR             R1, R1, R2
STRH            R1, [R4,#0xFA]
LDRH            R2, [R0,#0x5C]
BIC             R1, R1, #0xFC0
AND             R2, R2, #0xFC0
ORR             R1, R1, R2
STRH            R1, [R4,#0xFA]
LDRB            R1, [R5,#0x65E]
STRB            R1, [R4,#0xFC]
LDRB            R0, [R5,#0x65F]
STRB            R0, [R4,#0xFD]
LDR             R0, [R8,#0x260]
STR             R0, [R4,#0x100]
LDR             R0, [R8,#0x264]
STR             R0, [R4,#0x104]
LDR             R0, [R5,#0x740]
CMP             R0, #0
LDRSBNE         R0, [R0,#0xDC]
MOVEQ           R0, #0xFFFFFFFF
STRB            R0, [R4,#0x108]
LDR             R0, [R5,#0x744]
CMP             R0, #0
LDRSBNE         R0, [R0,#0xDC]
MOVEQ           R0, #0xFFFFFFFF
STRB            R0, [R4,#0x109]
LDR             R0, [R5,#0x748]
CMP             R0, #0
LDRSBNE         R0, [R0,#0xDC]
MOVEQ           R0, #0xFFFFFFFF
STRB            R0, [R4,#0x10A]
LDR             R0, [R5,#0x74C]
CMP             R0, #0
LDRSBNE         R0, [R0,#0xDC]
MOVEQ           R0, #0xFFFFFFFF
STRB            R0, [R4,#0x10B]
LDR             R0, [R5,#0x750]
CMP             R0, #0
LDRSBNE         R0, [R0,#0xDC]
MOVEQ           R0, #0xFFFFFFFF
STRB            R0, [R4,#0x10C]
LDR             R0, [R5,#0x754]
CMP             R0, #0
LDRSBNE         R0, [R0,#0xDC]
MOVEQ           R0, #0xFFFFFFFF
STRB            R0, [R4,#0x10D]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
POP             {R4-R8,LR}
BX              R1
POP             {R4-R8,PC}
