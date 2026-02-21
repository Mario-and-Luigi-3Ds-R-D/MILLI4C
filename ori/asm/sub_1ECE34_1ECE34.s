PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xA0]
BL              sub_221A40
LDR             R0, [R4,#0xA0]
BL              sub_2D4074
LDR             R0, [R4,#0x9C]
LDR             R1, [R4,#0x148]
BL              sub_5D1F8C
CMP             R0, #0
BEQ             locret_1ECF60
LDR             R0, =0x422C
LDRH            R0, [R0,R4]
BL              sub_2AF718
LDR             R0, [R0]
TST             R0, #1
LDR             R0, [R4,#0x9C]
BEQ             loc_1ECEC4
LDR             R1, =0x200000C
BL              sub_5D1F8C
CMP             R0, #0
BEQ             locret_1ECF60
LDRB            R2, [R4,#0x98]
LDR             R0, [R4,#0x9C]
LDR             R1, [R4,#0x94]
BL              sub_3213F8
LDR             R0, [R4,#0x94]
CMP             R0, #0
BEQ             loc_1ECEB4
BL              sub_2FF5D4
MOV             R0, #0
STR             R0, [R4,#0x94]
LDR             R0, [R4,#0xC8]
TST             R0, #4
BNE             loc_1ECEF4
B               loc_1ECEDC
LDR             R1, =0x200000B
BL              sub_5D1F8C
CMP             R0, #0
NOP
BEQ             locret_1ECF60
B               loc_1ECE8C
TST             R0, #1
BEQ             loc_1ECEF4
LDR             R0, [R4,#0x9C]
LDR             R2, [R4,#0x148]
MOV             R1, #0
BL              sub_3215F0
LDR             R0, [R4,#0xC8]
BIC             R0, R0, #7
STR             R0, [R4,#0xC8]
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x44]
BLX             R1
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x44]
BLX             R1
LDR             R0, [R4]
MOV             R3, #0
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E37C
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4,LR}
BX              R12
POP             {R4,PC}
