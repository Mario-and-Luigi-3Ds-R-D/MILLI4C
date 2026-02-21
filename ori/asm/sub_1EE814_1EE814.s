PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x14C]
CMP             R0, #0
SUBNE           R0, R0, #1
STRBNE          R0, [R4,#0x14C]
LDR             R0, [R4,#0x154]
CMP             R0, #0
BLE             loc_1EE854
SUB             R0, R0, #1
STR             R0, [R4,#0x154]
LDR             R1, [R4]
MOV             R0, R4
LDR             R1, [R1,#0xD4]
POP             {R4-R6,LR}
BX              R1
LDR             R0, [R4,#0x160]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_1EE8EC
LDRH            R1, [R0,#0xE]
TST             R1, #1
BEQ             loc_1EE87C
LDRB            R1, [R0,#0x16E]
CMP             R1, #0
BEQ             loc_1EE898
LDRB            R1, [R0,#0x172]
CMP             R1, #0
BEQ             loc_1EE8E8
BL              sub_532B54
CMP             R0, #0
NOP
BEQ             loc_1EE8E8
LDR             R0, =dword_6EDA78
LDR             R1, =word_6EDAC0
STR             R5, [R0]
STR             R5, [R0,#(dword_6EDA7C - 0x6EDA78)]
STR             R5, [R0,#(dword_6EDA80 - 0x6EDA78)]
STR             R5, [R0,#(dword_6EDA84 - 0x6EDA78)]
STR             R5, [R0,#(dword_6EDA88 - 0x6EDA78)]
STR             R5, [R0,#(dword_6EDAB0 - 0x6EDA78)]
STR             R5, [R0,#(dword_6EDAB4 - 0x6EDA78)]
STR             R5, [R0,#(dword_6EDAB8 - 0x6EDA78)]
STRH            R5, [R0,#(word_6EDABC - 0x6EDA78)]
STRH            R5, [R0,#(word_6EDABE - 0x6EDA78)]
LDRB            R0, [R1,#(byte_6EDAC8 - 0x6EDAC0)]
BIC             R0, R0, #0x3F ; '?'
STRB            R0, [R1,#(byte_6EDAC8 - 0x6EDAC0)]
LDR             R1, [R4]
MOV             R0, R4
LDR             R1, [R1,#0xD4]
POP             {R4-R6,LR}
BX              R1
STR             R5, [R4,#0x160]
LDR             R1, [R4,#0xA0]
LDR             R0, =0x1462C
LDR             R0, [R0,R1]
LDRB            R0, [R0,#0x38]
CMP             R0, #3
BEQ             loc_1EE96C
MOV             R0, R1
BL              sub_221A40
LDR             R0, [R4,#0xA0]
NOP
BL              sub_2D4074
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1EE940
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
BLX             R1
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             locret_1EE9B8
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
POP             {R4-R6,LR}
BX              R1
LDR             R0, [R4,#0xBC]
LDR             R1, [R4,#0x158]
MOV             R3, #1
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x38 ; '8'
STR             R1, [R0]
LDR             R0, [R4,#0xC0]
LDR             R1, [R4,#0x15C]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x38 ; '8'
STR             R1, [R0]
STR             R5, [R4,#0x154]
LDR             R0, [R4]
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E38C
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
POP             {R4-R6,PC}
