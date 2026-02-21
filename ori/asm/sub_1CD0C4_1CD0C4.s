LDR             R1, [R0,#0x1C]
CMP             R1, #0
BLE             loc_1CD0E4
SUB             R1, R1, #2
CMP             R1, #0
STR             R1, [R0,#0x1C]
MOVGT           R0, #0
BXGT            LR
PUSH            {R4,LR}
LDR             R0, [R0,#0x18]
ADD             R4, R0, #4
LDR             R1, [R0,#0x3C]
CMP             R1, #0
BEQ             loc_1CD12C
LDR             R0, [R0]
LDRH            R1, [R0,#0x10]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
BL              sub_5ED140
CMP             R0, #0
BEQ             loc_1CD12C
LDR             R0, [R4,#0x38]
LDRH            R1, [R0,#0xE]
ORR             R1, R1, #2
STRH            R1, [R0,#0xE]
MOV             R0, #1
POP             {R4,PC}
