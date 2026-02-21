PUSH            {R4,LR}
LDR             R0, =off_6CE970
LDR             R1, [R2,#8]
LDR             R0, [R0]
UXTH            R1, R1
AND             R2, R1, #0xF000
CMP             R2, #0x2000
BEQ             loc_205A14
CMP             R2, #0x3000
CMPNE           R2, #0x4000
BEQ             loc_205A34
CMP             R2, #0x6000
BEQ             loc_205A4C
B               loc_205A74
NOP
BL              sub_52F508
NOP
NOP
BL              sub_500A78
NOP
NOP
B               loc_205A74
NOP
BL              sub_52F538
CMP             R0, #0
NOP
BEQ             loc_205A74
B               loc_205A68
SUB             R2, R1, #0x6100
CMP             R2, #4
BCS             loc_205A74
BL              sub_528EB0
CMP             R0, #0
NOP
BEQ             loc_205A74
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
POP             {R4,PC}
