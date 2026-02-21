PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R0, #0xFF
STRB            R0, [R4,#0x461]
LDRB            R1, [R4,#0x462]
MOV             R5, #0
BIC             R1, R1, #3
STRB            R1, [R4,#0x462]
LDRB            R0, [R4,#0x460]
CMP             R0, #0
MOVGT           R7, #0
BLE             loc_181A38
LDR             R0, [R4,#0x45C]
ADD             R1, R5, R5,LSL#1
ADD             R6, R0, R1,LSL#2
LDR             R0, [R6,#4]
CMP             R0, #0
BEQ             loc_181A28
MOV             R1, #0
STR             R1, [R0,#0x180]
STR             R7, [R6,#4]
LDRB            R0, [R4,#0x460]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_181A04
MOV             R1, R0,LSL#24
LDR             R0, [R4,#0x458]
MOV             R2, R1,LSR#22
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x138
NOP
BL              sub_2FC500
ADD             R0, R4, #0x200
NOP
BL              sub_2FC500
ADD             R0, R4, #0x2C8
NOP
BL              sub_2FC500
ADD             R0, R4, #0x390
NOP
BL              sub_2FC500
LDR             R1, [R4,#0x1A8]
ORR             R1, R1, #1
STR             R1, [R4,#0x1A8]
LDR             R1, [R4,#0x270]
ORR             R1, R1, #1
STR             R1, [R4,#0x270]
LDR             R1, [R4,#0x338]
BIC             R1, R1, #1
STR             R1, [R4,#0x338]
LDR             R1, [R4,#0x400]
ORR             R1, R1, #1
STR             R1, [R4,#0x400]
LDR             R0, [R4,#4]
LDR             R2, [R4]
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xC70
LDR             R2, [R2,#0x2C]
LDR             R0, [R0]
LDR             R1, [R0,#0x14]
ADD             R1, R1, R0
LDR             R0, [R0]
LDR             R3, [R1]
ADD             R3, R1, R3,LSL#2
ADD             R0, R3, R0,LSL#2
LDR             R0, [R0,#4]
ADD             R1, R1, R0
MOV             R0, R4
POP             {R4-R8,LR}
BX              R2
