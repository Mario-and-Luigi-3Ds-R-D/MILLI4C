PUSH            {R4-R12,LR}
MOV             R8, R0
LDR             R0, [R0,#0x10]
LDR             R0, [R0,#0x40]
BL              sub_1DFF00
CMP             R0, #0
BNE             locret_1EB2C4
LDR             R0, [R8,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x3C ; '<'
BL              sub_1DFF00
CMP             R0, #0
BNE             locret_1EB2C4
LDR             R0, [R8,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x78 ; 'x'
BL              sub_1DFF00
CMP             R0, #0
BNE             locret_1EB2C4
LDR             R0, [R8,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xB4
BL              sub_1DFF00
CMP             R0, #0
BNE             locret_1EB2C4
LDR             R0, [R8,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xF0
BL              sub_1DFF00
CMP             R0, #0
BNE             locret_1EB2C4
LDR             R0, [R8,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x8C]
BLX             R1
CMP             R0, #0
BEQ             loc_1EB250
MOV             R9, #0
MOV             R6, R9
MOV             R0, #0x2B ; '+'
SUBS            R7, R0, #0
BLE             loc_1EB250
UXTH            R0, R6
BL              sub_2B2160
MOV             R5, R0
LDR             R0, [R0,#0x14]
CMN             R0, #1
BEQ             loc_1EB054
CMP             R6, #0
MOV             R4, #0
BLE             loc_1EB050
UXTH            R0, R4
BL              sub_2B2160
LDR             R0, [R0,#0x14]
LDR             R1, [R5,#0x14]
CMP             R1, R0
BEQ             loc_1EB054
ADD             R4, R4, #1
CMP             R6, R4
BGT             loc_1EB02C
ADD             R9, R9, #1
LDR             R0, [R5,#0x18]
CMN             R0, #1
BEQ             loc_1EB094
CMP             R6, #0
MOV             R4, #0
BLE             loc_1EB090
UXTH            R0, R4
BL              sub_2B2160
LDR             R0, [R0,#0x18]
LDR             R1, [R5,#0x18]
CMP             R1, R0
BEQ             loc_1EB094
ADD             R4, R4, #1
CMP             R6, R4
BGT             loc_1EB06C
ADD             R9, R9, #1
ADD             R6, R6, #1
CMP             R7, R6
BGT             loc_1EB008
CMP             R9, #0
BLE             loc_1EB250
UXTH            R4, R9
MOV             R7, #0
ADD             R0, R4, R4,LSL#1
MOV             R1, #8
ADD             R0, R1, R0,LSL#5
LDR             R1, =dword_6ED9B8
MOV             R3, R7
MOV             R2, R7
STRH            R4, [R8,#0x6C]
BL              sub_1143B4
CMP             R0, #0
NOP
BEQ             loc_1EB0FC
ADD             R0, R0, #8
SUB             R2, R0, #8
MOV             R1, #0x60 ; '`'
STM             R2, {R1,R4}
MOV             R2, R1
LDR             R1, =sub_1E4DE4
MOV             R3, R4
BLX             sub_1002F4
LDRH            R4, [R8,#0x6C]
STR             R0, [R8,#0x68]
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
ADD             R0, R4, R4,LSL#1
MOV             R2, #0
MOV             R0, R0,LSL#2
BL              sub_1143B4
CMP             R0, #0
MOVEQ           R11, #0
BEQ             loc_1EB13C
LDR             R1, =sub_3A1188
MOV             R3, R4
MOV             R2, #0xC
BLX             sub_1002F4
MOV             R11, R0
MOV             R6, #0
MOV             R0, #0x2B ; '+'
SUBS            R10, R0, #0
NOP
BLE             loc_1EB21C
UXTH            R0, R6
BL              sub_2B2160
MOV             R5, R0
LDR             R0, [R0,#0x14]
CMN             R0, #1
BEQ             loc_1EB1B8
CMP             R6, #0
MOV             R4, #0
BLE             loc_1EB198
UXTH            R0, R4
BL              sub_2B2160
LDR             R1, [R0,#0x14]
LDR             R0, [R5,#0x14]
CMP             R0, R1
BEQ             loc_1EB1B8
ADD             R4, R4, #1
CMP             R6, R4
BGT             loc_1EB174
ADD             R2, R7, R7,LSL#1
LDR             R0, [R5,#0x14]
ADD             R2, R11, R2,LSL#2
MOV             R1, R7
MOV             R3, #0x10000
STR             R1, [R2,#8]
STM             R2, {R0,R3}
ADD             R7, R7, #1
LDR             R0, [R5,#0x18]
CMN             R0, #1
BEQ             loc_1EB210
CMP             R6, #0
MOV             R4, #0
BLE             loc_1EB1F4
UXTH            R0, R4
BL              sub_2B2160
LDR             R0, [R0,#0x18]
LDR             R1, [R5,#0x18]
CMP             R1, R0
BEQ             loc_1EB210
ADD             R4, R4, #1
CMP             R6, R4
BGT             loc_1EB1D0
ADD             R2, R7, R7,LSL#1
LDR             R0, [R5,#0x18]
ADD             R2, R11, R2,LSL#2
MOV             R3, R7
MOV             R1, #0x10000
STM             R2, {R0,R1,R3}
ADD             R7, R7, #1
ADD             R6, R6, #1
CMP             R6, R10
BLT             loc_1EB150
ADD             R0, R8, #0x15C
STM             R0, {R9,R11}
LDR             R0, =off_67E18C
LDR             R1, [R0,#(off_67E2CC - 0x67E18C)]; sub_1EF848
LDR             R0, [R0,#(dword_67E2D0 - 0x67E18C)]
STR             R0, [R8,#0x50]
TST             R0, #1
ADD             R0, R8, R0,ASR#1
STR             R1, [R8,#0x4C]
BEQ             loc_1EB2BC
LDR             R2, [R0]
LDR             R1, [R2,R1]
B               loc_1EB2BC
LDR             R0, [R8,#0x10]
LDR             R0, [R0,#0x40]
BL              sub_10D33C
LDR             R0, [R8,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x3C ; '<'
BL              sub_10D33C
LDR             R0, [R8,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x78 ; 'x'
BL              sub_10D33C
LDR             R0, [R8,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xB4
BL              sub_10D33C
LDR             R0, [R8,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xF0
BL              sub_10D33C
LDR             R0, =off_67E18C
LDR             R1, [R0,#(off_67E2D4 - 0x67E18C)]; sub_1EB7D8
LDR             R0, [R0,#(dword_67E2D8 - 0x67E18C)]
STR             R0, [R8,#0x50]
TST             R0, #1
ADD             R0, R8, R0,ASR#1
STR             R1, [R8,#0x4C]
BNE             loc_1EB244
POP             {R4-R12,LR}
BX              R1
POP             {R4-R12,PC}
