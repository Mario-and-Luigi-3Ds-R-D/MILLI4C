PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x28 ; '('
BL              sub_13273C
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_116E64
ADD             R0, R4, #0x28 ; '('
BL              sub_1327BC
LDR             R0, [R4,#4]
ADD             R6, R4, #0x34 ; '4'
CMP             R0, R6
BEQ             locret_116E60
ADD             R0, R4, #0x28 ; '('
BL              sub_13273C
LDR             R5, [R4,#4]
ADD             R0, R4, #0x28 ; '('
BL              sub_1327BC
LDR             R0, [R5]
LDR             R1, [R0]
MOV             R0, R5
BLX             R1
ADD             R0, R4, #0x28 ; '('
BL              sub_13273C
MOV             R1, R5
MOV             R0, R4
BL              sub_123D34
ADD             R0, R4, #0x28 ; '('
NOP
BL              sub_1327BC
ADD             R0, R4, #0x28 ; '('
NOP
BL              sub_13273C
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_116E90
ADD             R0, R4, #0x28 ; '('
BL              sub_1327BC
LDR             R0, [R4,#4]
CMP             R0, R6
BNE             loc_116DF0
POP             {R4-R6,PC}
ADD             R0, R4, #0x20 ; ' '
BL              sub_120F58
ADD             R0, R4, #0x28 ; '('
NOP
BL              sub_1327BC
ADD             R0, R4, #0x20 ; ' '
NOP
BL              sub_120E7C
NOP
NOP
B               loc_116DE0
ADD             R0, R4, #0x20 ; ' '
BL              sub_120F58
ADD             R0, R4, #0x28 ; '('
NOP
BL              sub_1327BC
ADD             R0, R4, #0x20 ; ' '
NOP
BL              sub_120E7C
NOP
NOP
B               loc_116E54
