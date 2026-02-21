PUSH            {R4-R12,LR}
MOV             R7, R0
LDR             R4, =off_6D1648
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2AC9F0
LDR             R0, [R0,#0xB0]
CMP             R0, #0
BEQ             loc_2AC9E0
BL              sub_196450
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2AC9F0
LDR             R0, [R4]
LDR             R0, [R0,#0xB4]
CMP             R0, #0
BLNE            sub_2D2FD8
MOV             R8, #0
MOV             R9, R8
ADD             R0, R7, R8
ADD             R5, R0, #0x14000
LDRB            R0, [R5,#0x287]
CMP             R0, #0
ADDGT           R0, R7, R8,LSL#2
ADDGT           R6, R0, #0x13C00
MOVNE           R4, #0
ADDGT           R6, R6, #0x94
BEQ             loc_2ACA60
BLT             loc_2ACA40
LDR             R0, [R6]
ADD             R1, R4, R4,LSL#1
ADD             R0, R0, R1,LSL#5
BL              sub_1E4D0C
LDRB            R0, [R5,#0x287]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_2ACA20
ADD             R4, R7, R8,LSL#2
ADD             R4, R4, #0x13C00
ADD             R4, R4, #0x94
LDR             R1, =sub_1E4E50
LDR             R0, [R4]
BLX             sub_3016C8
STR             R9, [R4]
STRB            R9, [R5,#0x287]
ADD             R8, R8, #1
CMP             R8, #2
BLT             loc_2AC9F8
ADD             R10, R7, #0x13C00
MOV             R8, #0
MOV             R11, #0x3C ; '<'
ADD             R10, R10, #0x88
ADD             R9, R7, #0x14000
ADD             R0, R7, R8
ADD             R6, R0, #0x14000
LDRB            R0, [R6,#0x289]
CMP             R0, #0
ADDGT           R0, R7, R8,LSL#2
ADDGT           R5, R0, #0x13C00
MOVNE           R4, #0
ADDGT           R5, R5, #0x9C
BEQ             loc_2ACB38
BLE             loc_2ACB18
LDR             R0, [R5]
ADD             R1, R11, R4,LSL#6
LDR             R1, [R0,R1]
CMP             R1, #0
BEQ             loc_2ACAFC
LDRB            R3, [R9,#0x286]
MOV             R0, #0
CMP             R3, #0
LDRGT           R2, [R10]
BLE             loc_2ACAFC
ADD             R12, R2, R0,LSL#6
CMP             R1, R12
BNE             loc_2ACAF0
ADD             R0, R1, #0x38 ; '8'
BL              sub_4BE0F8
NOP
NOP
B               loc_2ACAFC
ADD             R0, R0, #1
CMP             R3, R0
BGT             loc_2ACAD0
LDR             R0, [R5]
ADD             R0, R0, R4,LSL#6
BL              sub_232DB8
LDRB            R0, [R6,#0x289]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_2ACAA8
ADD             R4, R7, R8,LSL#2
ADD             R4, R4, #0x13C00
ADD             R4, R4, #0x9C
LDR             R0, [R4]
BL              sub_2FF5D4
MOV             R0, #0
STR             R0, [R4]
STRB            R0, [R6,#0x289]
ADD             R8, R8, #1
CMP             R8, #2
BLT             loc_2ACA80
MOV             R4, #0
MOV             R6, R4
ADD             R5, R7, R4,LSL#2
ADD             R5, R5, #0x13C00
ADD             R5, R5, #0x8C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2ACB6C
BL              sub_2FF5D4
STR             R6, [R5]
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_2ACB4C
ADD             R0, R7, #0x13C00
ADD             R0, R0, #0x108
BL              sub_584E58
ADD             R4, R7, #0x13C00
ADD             R4, R4, #0xFC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2ACBC8
ADD             R0, R7, #0x13C00
ADD             R0, R0, #0x12C
LDR             R1, [R0]
CMP             R1, #0
BEQ             loc_2ACBBC
BL              sub_4BE0F8
LDR             R1, =0x13D2C
MOV             R0, #0
STR             R0, [R1,R7]
LDR             R0, [R4]
BL              sub_2FF5D4
STR             R6, [R4]
ADD             R4, R7, #0x13C00
ADD             R4, R4, #0x164
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2ACBE4
BL              sub_2FF5D4
STR             R6, [R4]
ADD             R4, R7, #0x13C00
ADD             R4, R4, #0x15C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2ACC00
BL              sub_2FF5D4
STR             R6, [R4]
ADD             R4, R7, #0x13C00
ADD             R4, R4, #0x78 ; 'x'
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2ACC1C
BL              sub_2FF5D4
STR             R6, [R4]
MOV             R4, #0
ADD             R5, R7, R4,LSL#2
ADD             R5, R5, #0x13000
ADD             R5, R5, #0xC70
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2ACC40
BL              sub_2FF5D4
STR             R6, [R5]
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_2ACC20
ADD             R7, R7, #0x13C00
ADD             R7, R7, #0xF8
LDR             R0, [R7]
CMP             R0, #0
BEQ             loc_2ACC68
BL              sub_2FF5D4
STR             R6, [R7]
STRB            R6, [R9,#0x3FC]
POP             {R4-R12,PC}
