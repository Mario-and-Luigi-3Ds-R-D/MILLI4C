LDRSH           R1, [R0]
CMP             R1, #0x28 ; '('
MOVLT           R1, #0x28 ; '('
STRHLT          R1, [R0]
LDRSH           R1, [R0,#2]
CMP             R1, #0x24 ; '$'
MOVLT           R1, #0x24 ; '$'
STRHLT          R1, [R0,#2]
LDRSH           R2, [R0,#6]
MOV             R1, #0x91
CMP             R2, #0x91
STRHGT          R1, [R0,#6]
LDRSH           R2, [R0,#8]
CMP             R2, #0x91
STRHGT          R1, [R0,#8]
LDRSH           R2, [R0,#0xA]
CMP             R2, #0x91
STRHGT          R1, [R0,#0xA]
BX              LR
