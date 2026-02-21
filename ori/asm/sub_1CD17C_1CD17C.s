PUSH            {R4-R8,LR}
ADD             R4, R0, #4
ADD             R5, R0, #0xF4
LDR             R8, =off_6CE970
MOV             R7, #0
LDRB            R0, [R4,#0x28]
CMP             R0, #0
BEQ             loc_1CD248
LDRB            R0, [R4,#0x26]
CMP             R0, #0
STRBNE          R7, [R4,#0x26]
BNE             loc_1CD248
LDR             R0, [R4,#0x18]
LDR             R6, [R0]
LDR             R0, [R8]
BL              sub_5EEC3C
CMP             R0, #0
NOP
BNE             loc_1CD248
LDRH            R0, [R6,#0x10]
BL              sub_47FF54
CMP             R0, #0
NOP
BEQ             loc_1CD1F0
MOV             R0, R6
BL              sub_5ED140
CMP             R0, #0
NOP
BNE             loc_1CD248
LDRH            R0, [R4,#0x22]
LDR             R2, =dword_6D1F40
MOV             R1, #0x64 ; 'd'
BL              sub_480134
CMP             R0, #0
NOP
BEQ             loc_1CD224
MOV             R1, #0
MOV             R0, R4
BL              sub_1CD544
NOP
NOP
B               loc_1CD248
LDRH            R1, [R4,#0x22]
LDRSB           R0, [R4,#0x2C]
ADD             R0, R0, R1
CMP             R0, #0x64 ; 'd'
MOVGE           R0, #0x64 ; 'd'
BGE             loc_1CD244
CMP             R0, #0
MOVLE           R0, #0
STRH            R0, [R4,#0x22]
ADD             R4, R4, #0x3C ; '<'
CMP             R4, R5
BNE             loc_1CD190
POP             {R4-R8,PC}
