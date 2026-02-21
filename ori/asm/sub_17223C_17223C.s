PUSH            {R3-R9,LR}
MOV             R4, R1
BL              sub_58130C
MOV             R8, R0
ADD             R6, R0, #0x400
LDR             R0, =off_6B38AC
ADD             R6, R6, #0x358
ADD             R5, R4, #0x400
STR             R0, [R6]
LDR             R0, [R4,#0x75C]
ADD             R1, R4, #0x400
ADD             R5, R5, #0x358
STR             R0, [R6,#4]
LDR             R0, [R4,#0x760]
MOV             R2, #0x4C ; 'L'
ADD             R1, R1, #0x364
STR             R0, [R6,#8]
ADD             R0, R6, #0xC
BL              sub_127EB8
MOV             R2, #0x4C ; 'L'
ADD             R1, R5, #0x58 ; 'X'
ADD             R0, R6, #0x58 ; 'X'
BL              sub_127EB8
LDR             R0, =off_6B0504
ADD             R2, R5, #0xB8
ADD             R7, R6, #0xB8
STR             R0, [R6]
LDR             R0, [R5,#0xA4]
STR             R0, [R6,#0xA4]
LDR             R0, [R5,#0xA8]
STR             R0, [R6,#0xA8]
LDR             R0, [R5,#0xAC]
STR             R0, [R6,#0xAC]
LDRH            R0, [R5,#0xB0]
STRH            R0, [R6,#0xB0]
LDRH            R0, [R5,#0xB2]
STRH            R0, [R6,#0xB2]
LDRH            R0, [R5,#0xB4]
STRH            R0, [R6,#0xB4]
LDRH            R0, [R5,#0xB6]
STRH            R0, [R6,#0xB6]
LDR             R0, =off_6B57BC
STR             R0, [R6]
LDM             R2, {R0-R3,R12}
STM             R7, {R0-R3,R12}
ADD             R7, R8, #0x800
LDRB            R0, [R5,#0xCC]
LDR             R2, =off_6B8580
STRB            R0, [R6,#0xCC]
LDRB            R0, [R5,#0xCD]
ADD             R1, R2, #0x3F8
ADD             R5, R4, #0x800
STRB            R0, [R6,#0xCD]
ADD             R0, R2, #0x410
STR             R0, [R8,#0x758]
STR             R1, [R8,#0xE0]
STR             R2, [R8]
LDR             R1, [R4,#0x828]
ADD             R2, R5, #0x3C ; '<'
MOV             R6, R8
STR             R1, [R8,#0x828]
LDR             R1, [R4,#0x82C]
ADD             R0, R4, #0x800
ADD             R0, R0, #0x6C ; 'l'
STR             R1, [R8,#0x82C]
LDR             R1, [R4,#0x830]
STR             R1, [R8,#0x830]
LDR             R1, [R4,#0x834]
STR             R1, [R8,#0x834]
LDR             R1, [R4,#0x838]
STR             R1, [R8,#0x838]
LDR             R1, [R4,#0x83C]
STR             R1, [R8,#0x83C]
LDR             R1, [R4,#0x840]
STR             R1, [R8,#0x840]
LDR             R1, [R5,#0x44]
ADD             R8, R6, #0x800
ADD             R8, R8, #0x3C ; '<'
STR             R1, [R7,#0x44]
LDR             R1, [R5,#0x48]
STR             R1, [R7,#0x48]
LDM             R2, {R1-R3,R12}
STM             R8, {R1-R3,R12}
ADD             R2, R5, #0x4C ; 'L'
ADD             R8, R6, #0x800
LDR             R1, [R5,#0x4C]
ADD             R8, R8, #0x4C ; 'L'
STR             R1, [R7,#0x4C]
LDR             R1, [R5,#0x50]
STR             R1, [R7,#0x50]
LDR             R1, [R5,#0x54]
STR             R1, [R7,#0x54]
LDR             R1, [R5,#0x58]
STR             R1, [R7,#0x58]
LDM             R2, {R1-R3,R12}
STM             R8, {R1-R3,R12}
LDR             R1, [R5,#0x5C]
STR             R1, [R7,#0x5C]
LDR             R1, [R5,#0x60]
ADD             R2, R5, #0x5C ; '\'
ADD             R8, R6, #0x800
STR             R1, [R7,#0x60]
LDR             R1, [R5,#0x64]
ADD             R8, R8, #0x5C ; '\'
STR             R1, [R7,#0x64]
LDR             R1, [R5,#0x68]
STR             R1, [R7,#0x68]
LDM             R2, {R1-R3,R12}
STM             R8, {R1-R3,R12}
LDR             R1, [R4,#0x86C]
LDR             R2, [R6,#0x86C]
AND             R1, R1, #0xF
BIC             R2, R2, #0xF
ORR             R1, R1, R2
STR             R1, [R6,#0x86C]
LDR             R2, [R0]
BIC             R1, R1, #0x10
AND             R2, R2, #0x10
ORR             R1, R1, R2
STR             R1, [R6,#0x86C]
LDR             R2, [R0]
BIC             R1, R1, #0x20 ; ' '
AND             R2, R2, #0x20 ; ' '
ORR             R1, R1, R2
STR             R1, [R6,#0x86C]
LDR             R0, [R0]
BIC             R1, R1, #0x40 ; '@'
MOV             R2, #0x48 ; 'H'
AND             R0, R0, #0x40 ; '@'
ORR             R0, R0, R1
STR             R0, [R6,#0x86C]
ADD             R1, R4, #0x870
ADD             R0, R6, #0x870
BL              sub_127EB8
LDRH            R0, [R5,#0xB8]
ADD             R1, R4, #0x8C0
STRH            R0, [R7,#0xB8]
LDRB            R0, [R5,#0xBA]
STRB            R0, [R6,#0x8BA]
LDRB            R0, [R5,#0xBB]
STRB            R0, [R6,#0x8BB]
LDRB            R0, [R5,#0xBC]
STRB            R0, [R6,#0x8BC]
LDRB            R0, [R5,#0xBD]
STRB            R0, [R6,#0x8BD]
ADD             R0, R6, #0x8C0
BL              sub_1169CC
LDR             R0, [R4,#0x8F0]
LDR             R1, =sub_53E5C4
LDR             R2, =0x758
STR             R0, [R6,#0x8F0]
STR             R1, [SP,#0x20+var_20]
ADD             R1, R4, #0x800
ADD             R0, R6, #0x800
MOV             R3, #4
ADD             R1, R1, #0xF8
ADD             R0, R0, #0xF8
BLX             sub_1036B4
ADD             R1, R4, #0x2400
SUB             R0, R0, #0x800
LDR             R6, [R1,#0x258]
SUB             R0, R0, #0xF8
ADD             R2, R0, #0x2400
ADD             R3, R4, #0x2600
STR             R6, [R2,#0x258]
LDR             R6, [R1,#0x25C]
LDR             LR, =0x2668
ADD             R12, R4, #0x2400
STR             R6, [R2,#0x25C]
LDR             R6, [R1,#0x260]
ADD             R12, R12, #0x26C
ORR             R5, LR, LR,ASR#7
STR             R6, [R2,#0x260]
LDR             R6, [R1,#0x264]
ADD             R9, R2, #0x270
STR             R6, [R2,#0x264]
LDRB            R6, [R3,#0x68]
STRB            R6, [LR,R0]
LDR             R12, [R12]
LDR             R6, =off_6B0070
STR             R12, [R5,R0]
ADD             LR, R6, #0x400
ADD             R5, LR, #0x18
STR             LR, [R0,#0xE0]
STR             R5, [R0,#0x758]
ADD             R5, R1, #0x270
STR             R6, [R0]
LDM             R5, {R5-R8}
MOV             R12, #0x2680
MOV             LR, R12
STM             R9, {R5-R8}
LDR             R12, [R12,R4]
LDR             R5, =off_6AE0A4
AND             R12, R12, #1
STR             R12, [LR,R0]
LDR             LR, =off_6AE51C
STR             R5, [R0]
ADD             R12, LR, #0x18
STR             R12, [R0,#0x758]
STR             LR, [R0,#0xE0]
LDRH            LR, [R3,#0x84]
ADD             R12, R0, #0x2600
STRH            LR, [R12,#0x84]
LDR             LR, =0x2686
MOV             R5, LR
LDRB            LR, [LR,R4]
STRB            LR, [R5,R0]
LDRH            LR, [R3,#0x88]
LDR             R5, =0x268C
STRH            LR, [R12,#0x88]
MOV             LR, R5
LDR             R6, [R5,R4]
ADD             R5, R5, #4
STR             R6, [LR,R0]
LDR             R6, [R5,R4]
MOV             LR, R5
ORR             R5, R5, R5,ASR#11
STR             R6, [LR,R0]
LDRB            R6, [R5,R4]
MOV             LR, R5
ADD             R5, R4, #0x2400
ADD             R5, R5, #0x298
STRB            R6, [LR,R0]
LDRB            R7, [R5]
ADD             LR, R0, #0x2400
ADD             LR, LR, #0x298
MOV             R6, LR
STRB            R7, [LR]
LDR             LR, [R1,#0x29C]
STR             LR, [R2,#0x29C]
LDR             LR, [R1,#0x2A0]
STR             LR, [R2,#0x2A0]
LDR             LR, [R1,#0x2A4]
ADD             R7, R1, #0x2A4
STR             LR, [R2,#0x2A4]
LDR             LR, [R1,#0x2A8]
STR             LR, [R2,#0x2A8]
LDR             LR, [R1,#0x2AC]
STR             LR, [R2,#0x2AC]
LDR             LR, [R1,#0x2B0]
STR             LR, [R2,#0x2B0]
LDM             R7, {R7-R9,LR}
STR             R7, [R2,#0x2A4]
ADD             R7, R2, #0x2A8
STM             R7, {R8,R9,LR}
ADD             R7, R1, #0x2B4
LDR             LR, [R1,#0x2B4]
STR             LR, [R2,#0x2B4]
LDR             LR, [R1,#0x2B8]
STR             LR, [R2,#0x2B8]
LDR             LR, [R1,#0x2BC]
STR             LR, [R2,#0x2BC]
LDR             LR, [R1,#0x2C0]
STR             LR, [R2,#0x2C0]
LDM             R7, {R7-R9,LR}
STR             R7, [R2,#0x2B4]
ADD             R7, R2, #0x2B8
STM             R7, {R8,R9,LR}
LDR             LR, [R1,#0x2C4]
STR             LR, [R2,#0x2C4]
LDR             LR, [R1,#0x2C8]
STR             LR, [R2,#0x2C8]
LDR             LR, [R1,#0x2CC]
STR             LR, [R2,#0x2CC]
LDR             LR, [R1,#0x2D0]
STR             LR, [R2,#0x2D0]
LDR             LR, [R1,#0x298]
STR             LR, [R2,#0x298]
LDR             R8, [R1,#0x29C]
LDR             LR, =0x26A0
STR             R8, [R2,#0x29C]
MOV             R7, LR
ORR             R8, LR, LR,ASR#13
LDRB            LR, [LR,R4]
STRB            LR, [R7,R0]
LDRB            R7, [R8,R4]
STRB            R7, [R8,R0]
LDR             LR, [R1,#0x2A4]
ADD             R8, R8, #7
STR             LR, [R2,#0x2A4]
ADD             LR, R0, R8
ORR             R9, R8, R8,ASR#10
LDRB            R8, [R8,R4]
MOV             R7, LR
STRB            R8, [LR]
MOV             R8, R9
ADD             LR, R9, #1
LDRB            R9, [R9,R4]
STRB            R9, [R8,R0]
MOV             R9, LR
ORR             R8, LR, LR,ASR#10
LDRB            LR, [LR,R4]
STRB            LR, [R9,R0]
MOV             LR, R8
ADD             R9, R8, #1
LDRB            R8, [R8,R4]
STRB            R8, [LR,R0]
LDRB            R8, [R9,R4]
ADD             LR, R9, #8
STRB            R8, [R9,R0]
LDR             R8, [R1,#0x2B0]
STR             R8, [R2,#0x2B0]
MOV             R8, LR
LDRB            LR, [LR,R4]
STRB            LR, [R8,R0]
LDRH            LR, [R3,#0xB6]
ADD             R8, R9, #0xC
STRH            LR, [R12,#0xB6]
MOV             R9, R8
ORR             LR, R8, R8,ASR#11
LDRB            R8, [R8,R4]
STRB            R8, [R9,R0]
MOV             R9, LR
LDR             LR, [LR,R4]
MOV             R8, #0x26C0
STR             LR, [R9,R0]
MOV             R9, R8
ORR             LR, R8, R8,ASR#13
LDRB            R8, [R8,R4]
STRB            R8, [R9,R0]
MOV             R8, LR
LDRB            LR, [LR,R4]
STRB            LR, [R8,R0]
LDRB            LR, [R5]
STRB            LR, [R6]
LDR             LR, =0x2699
LDRB            R5, [R3,#0x99]
STRB            R5, [LR,R0]
LDRB            R6, [R3,#0x9A]
ADD             LR, LR, #1
ADD             R5, LR, #2
STRB            R6, [LR,R0]
MOV             LR, R5
LDR             R5, [R5,R4]
STR             R5, [LR,R0]
LDRH            R5, [R3,#0xA0]
LDR             LR, =0x26A4
STRH            R5, [R12,#0xA0]
MOV             R12, LR
LDR             LR, [LR,R4]
STR             LR, [R12,R0]
LDRB            R3, [R3,#0xA8]
ADD             R0, R0, #0x2400
ADD             R0, R0, #0x2DC
STRB            R3, [R7]
LDR             R3, [R1,#0x2D4]
STR             R3, [R2,#0x2D4]
LDR             R1, [R1,#0x2D8]
MOV             R3, #1
STR             R1, [R2,#0x2D8]
LDR             R2, =off_6B9EBC
ADD             R1, R4, #0x2400
ADD             R1, R1, #0x2DC
STR             R2, [R0]
LDR             R2, [R1,#4]
STR             R2, [R0,#4]
LDR             R2, [R1,#8]
STR             R2, [R0,#8]
LDR             R2, [R1,#0xC]
STR             R2, [R0,#0xC]
LDR             R2, [R1,#0x10]
STR             R2, [R0,#0x10]
LDRB            R2, [R1,#0x14]
ADD             R1, R1, #0x18
STRB            R2, [R0,#0x14]
LDR             R2, =off_6B7BEC
STR             R2, [R0],#0x18
LDR             R2, =sub_5A2EE8
STR             R2, [SP,#0x20+var_20]
MOV             R2, #0x1C
BLX             sub_1036B4
LDR             R2, =off_6B9ECC
ADD             R1, R4, #0x2000
ADD             R1, R1, #0x710
STR             R2, [R0,#0x1C]!
LDR             R12, [R1,#0xC]
LDRD            R2, R3, [R1,#4]
ADD             R5, R0, #4
STM             R5, {R2,R3,R12}
ADD             R5, R0, #0x10
LDR             R12, [R1,#0x18]
LDRD            R2, R3, [R1,#0x10]
STM             R5, {R2,R3,R12}
ADD             R5, R0, #0x1C
LDR             R12, [R1,#0x24]
LDRD            R2, R3, [R1,#0x1C]
STM             R5, {R2,R3,R12}
MOV             R3, #1
LDR             R2, [R1,#0x28]
STR             R2, [R0,#0x28]
LDRB            R2, [R1,#0x2C]
ADD             R1, R1, #0x30 ; '0'
STRB            R2, [R0,#0x2C]
LDR             R2, =off_6B7BFC
STR             R2, [R0],#0x30
LDR             R2, =sub_5A3974
STR             R2, [SP,#0x20+var_20]
MOV             R2, #0x28 ; '('
BLX             sub_1036B4
LDR             R1, =0x2768
SUB             R0, R0, #0x2740
MOV             R2, R1
LDR             R1, [R1,R4]
STR             R1, [R2,R0]
LDR             R1, =0x276C
MOV             R2, R1
LDRB            R1, [R1,R4]
STRB            R1, [R2,R0]
LDR             R1, =0x276D
MOV             R2, R1
LDRB            R1, [R1,R4]
STRB            R1, [R2,R0]
LDR             R1, =0x276E
MOV             R2, R1
LDRB            R1, [R1,R4]
ADD             R4, R4, #0x2700
ADD             R4, R4, #0x6F ; 'o'
STRB            R1, [R2,R0]
LDR             R1, =0x276F
LDRB            R2, [R4]
STRB            R2, [R1,R0]
POP             {R3-R9,PC}
