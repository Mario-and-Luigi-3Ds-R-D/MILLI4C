PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E4614
MOV             R6, R0
MOV             R0, R4
BL              sub_15B3D4
ADD             R5, R4, #0x400
CMP             R0, #0
ADD             R5, R5, #0x258
BEQ             loc_15B31C
LDR             R0, [R6]
LDR             R1, [R0,#0x468]
MOV             R0, R6
BLX             R1
CMP             R0, #1
BEQ             loc_15B31C
LDR             R0, [R6]
LDR             R1, [R0,#0x468]
MOV             R0, R6
BLX             R1
CMP             R0, #2
BEQ             loc_15B31C
LDR             R0, [R6]
LDR             R1, [R0,#0x468]
MOV             R0, R6
BLX             R1
CMP             R0, #4
BNE             loc_15B390
LDR             R0, [R6,#0x4EC]
TST             R0, #1
BEQ             loc_15B390
ADD             R6, R6, #0x2700
ADD             R6, R6, #0x6F ; 'o'
LDRB            R0, [R6]
CMP             R0, #0
BEQ             loc_15B390
MOV             R0, R4
BL              sub_15B3D4
CMP             R0, #0
NOP
BEQ             loc_15B34C
CMP             R0, #1
BEQ             loc_15B35C
CMP             R0, #2
BEQ             loc_15B370
CMP             R0, #3
BNE             loc_15B39C
B               loc_15B380
LDR             R0, [R4,#0x658]
BIC             R0, R0, #0x3F000000
ORR             R0, R0, #0x10000000
B               loc_15B368
LDR             R0, [R4,#0x658]
BIC             R0, R0, #0x3F000000
ORR             R0, R0, #0x2000000
STR             R0, [R5]
B               loc_15B39C
LDR             R0, [R4,#0x658]
BIC             R0, R0, #0x3F000000
ORR             R0, R0, #0x20000000
B               loc_15B368
LDR             R0, [R4,#0x658]
BIC             R0, R0, #0x3F000000
ORR             R0, R0, #0x8000000
B               loc_15B368
LDR             R0, [R4,#0x658]
BIC             R0, R0, #0x3F000000
STR             R0, [R5]
MOV             R0, R4
BL              sub_17358C
LDR             R0, =0xAA8
LDRH            R0, [R0,R4]
TST             R0, #0x10
BEQ             locret_15B3C8
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2CC
ADD             R4, R4, #0x108
LDM             R0, {R0-R2}
STM             R4, {R0-R2}
POP             {R4-R6,PC}
