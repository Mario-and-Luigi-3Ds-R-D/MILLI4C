LDR             R12, =word_6EDAC0
PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R5, R4, #0xCC
LDM             R12, {R0-R3,R12}
STM             R5, {R0-R3,R12}
LDR             R0, [R4,#0xC8]
TST             R0, #0x10
TSTNE           R0, #0x20
BNE             loc_1F2F88
LDRB            R0, [R4,#0xD4]
BIC             R0, R0, #0x3D ; '='
STRB            R0, [R4,#0xD4]
LDR             R0, [R4]
LDR             R1, [R0,#0xC0]
MOV             R0, R4
BLX             R1
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xA0]
BL              sub_2D40A8
LDR             R0, [R4,#0xB0]
NOP
BL              sub_195984
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1F2FDC
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1F3004
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R0, [R4,#0xB4]
BL              sub_2D2AA0
LDR             R0, [R4,#0xC8]
TST             R0, #0x10
BEQ             loc_1F3060
LDR             R0, [R4,#0xE0]
TST             R0, #3
BEQ             loc_1F3060
LDRB            R6, [R4,#0xD4]
LDRH            R12, [R4,#0xE8]
LDRH            R1, [R4,#0xEA]
LDRH            R2, [R4,#0xE4]
LDRH            R3, [R4,#0xE6]
MOV             R7, #4
STRH            R12, [R4,#0xD0]
AND             R8, R0, #1
AND             R7, R7, R0,LSL#1
STRH            R1, [R4,#0xD2]
ORR             R0, R6, R8
STRH            R2, [R4,#0xCC]
ORR             R0, R0, R7
STRH            R3, [R4,#0xCE]
STRB            R0, [R4,#0xD4]
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1F3088
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BLX             R1
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1F30B0
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BLX             R1
ADD             R0, R4, #0x4000
ADD             R0, R0, #0x180
BL              sub_1E86E8
LDR             R0, [R5]
ADD             R0, R0, #0x4000
LDRB            R0, [R0,#0x228]
CMP             R0, #3
BNE             loc_1F30EC
ADR             R0, aIsvalid; "isValid"
BL              sub_45F46C
NOP
NOP
BLX             R0
CMP             R0, #0
BNE             loc_1F30FC
LDR             R0, [R4,#0xC4]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
MOV             R5, #0
BEQ             loc_1F3128
LDR             R0, [R4,#0xBC]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x2C ; ','
STR             R5, [R0]
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1F3150
LDR             R0, [R4,#0xC0]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x2C ; ','
STR             R5, [R0]
LDR             R0, [R4,#0xE0]
BIC             R0, R0, #2
STR             R0, [R4,#0xE0]
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1F3184
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x28]
BLX             R1
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1F31AC
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x28]
BLX             R1
LDR             R0, [R4,#0x144]
BL              sub_3A19B8
LDR             R0, [R4,#0xC4]
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BLX             R1
LDR             R0, [R4,#0xA4]
BL              sub_37D474
LDR             R0, [R4,#0x9C]
NOP
BL              sub_32156C
LDR             R1, [R4,#0x4C]
CMP             R1, #0
BNE             loc_1F31F8
LDR             R0, [R4,#0x50]
TST             R0, #1
BEQ             loc_1F3218
CMP             R0, #0
BEQ             loc_1F3218
LDR             R0, [R4,#0x50]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_1F3210
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BLX             R1
LDR             R0, [R4,#0xB0]
BL              sub_1956F4
LDR             R0, [R4,#0xB4]
NOP
BL              sub_2D2A5C
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1F3288
LDR             R0, [R4,#0xA0]
BL              sub_50E9BC
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x30]
BLX             R1
LDR             R0, [R4,#0xA0]
MOV             R1, #0
BL              sub_3315F4
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BLX             R1
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x34]
BLX             R1
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1F32E4
LDR             R0, [R4,#0xA0]
BL              sub_50E9BC
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x30]
BLX             R1
LDR             R0, [R4,#0xA0]
MOV             R1, #1
BL              sub_3315F4
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BLX             R1
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x34]
BLX             R1
LDR             R0, [R4]
ADD             R1, R4, #0xEC
LDR             R2, [R0,#0xA0]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0xEC
LDR             R2, [R0,#0xA4]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#0xA0]
BL              sub_2D30C8
LDR             R0, [R4,#0xA0]
NOP
BL              sub_221A40
LDR             R0, [R4,#0xA0]
NOP
BL              sub_2D4074
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1F3354
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
BLX             R1
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1F337C
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
BLX             R1
LDR             R0, [R4,#0xC4]
LDR             R1, [R0]
LDR             R1, [R1,#0x1C]
POP             {R4-R8,LR}
BX              R1
