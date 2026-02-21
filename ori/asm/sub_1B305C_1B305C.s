PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x3800
ADD             R0, R0, #0x1A8
MOV             R6, #0
LDR             R5, [R0]
CMP             R5, #0
BEQ             loc_1B30A0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BNE             loc_1B30A0
LDRB            R0, [R5,#0xAAC]
CMP             R0, #3
BEQ             loc_1B3144
MOV             R0, R4
BL              sub_1BADA8
ADD             R5, R4, #0x3800
ADD             R5, R5, #0x28C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1B30C8
MOV             R1, #0
BL              sub_234A48
STR             R6, [R5]
ADD             R5, R4, #0x3000
ADD             R5, R5, #0xA90
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1B30E8
MOV             R1, #0
BL              sub_234A48
STR             R6, [R5]
ADD             R5, R4, #0x3800
ADD             R5, R5, #0x178
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1B3108
MOV             R1, #0
BL              sub_234A48
STR             R6, [R5]
ADD             R5, R4, #0x3800
ADD             R5, R5, #0x288
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1B3124
BL              sub_533330
STR             R6, [R5]
ADD             R4, R4, #0x3800
ADD             R4, R4, #0x294
LDR             R0, [R4]
CMP             R0, #0
BEQ             locret_1B3140
BL              sub_533330
STR             R6, [R4]
POP             {R4-R6,PC}
LDR             R0, [R5,#0xAA8]
CMP             R0, #0
STRBNE          R6, [R0,#0x238]
B               loc_1B30A0
