PUSH            {R4-R8,LR}
MOV             R8, R0
BL              sub_528E64
ADD             R5, R0, #0x400
MOV             R6, R0
LDRH            R0, [R5,#0x98]
MOV             R7, #0
AND             R0, R0, #0x7F
CMP             R0, #5
CMPNE           R0, #6
BNE             loc_1CFC7C
CMP             R0, #5
BEQ             loc_1CFC50
BL              sub_146A88
MOV             R4, R0
MOV             R0, #7
ADD             R0, R4, R0,LSL#3
CMP             R4, R0
LDRHNE          R1, [R5,#0x9C]
BEQ             loc_1CFC7C
LDRH            R2, [R4]
CMP             R2, R1
BNE             loc_1CFC70
LDR             R1, [R4,#4]
MOV             R0, R6
BLX             R1
MOV             R7, R0
B               loc_1CFC7C
NOP
BL              sub_1465D4
MOV             R4, R0
NOP
MOV             R0, #0xD
NOP
NOP
B               loc_1CFC20
ADD             R4, R4, #8
CMP             R4, R0
BNE             loc_1CFC30
MOV             R2, R7
MOV             R1, R6
MOV             R0, R8
POP             {R4-R8,LR}
MOV             R3, #1
NOP
PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R4, R0
LDR             R1, =byte_19CF24
MOV             R0, #0
MOV             R5, R2
MOV             R2, R0
STRB            R0, [R4,R1]
MOV             R1, R0
MOV             R7, R3
MOV             R0, R4
BL              sub_52C6FC
CMP             R5, #0
BEQ             loc_1CFD84
MOV             R0, #1
ADD             R8, R6, #0x400
STRB            R0, [R5,#5]
STR             R5, [R6,#0x140]
LDRH            R0, [R8,#0x98]
AND             R0, R0, #0x7F
CMP             R0, #4
BNE             loc_1CFD1C
MOV             R0, R4
BL              sub_5EE458
SUB             R1, R0, #0x1000
SUBS            R1, R1, #0x1C
BNE             loc_1CFD1C
MOV             R0, R4
BL              sub_5EEA28
LDRH            R0, [R0]
BL              sub_50F080
LDRB            R0, [R0,#2]
CMP             R0, #0x1D
BEQ             loc_1CFD64
MOV             R0, R4
BL              sub_1D0704
LDRH            R0, [R8,#0x98]
AND             R0, R0, #0x7F
CMP             R0, #4
BEQ             loc_1CFD48
MOV             R3, #0
MOV             R2, #4
MOV             R1, #1
MOV             R0, R4
BL              sub_52A660
CMP             R7, #0
BEQ             locret_1CFD60
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDRD            R0, R1, [R1,#(off_654054 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R4-R8,PC}
MOV             R0, R4
BL              sub_1D4424
LDR             R0, =loc_19CF44
ADD             R0, R0, R4
LDR             R1, [R0]
ORR             R1, R1, #0x40 ; '@'
STR             R1, [R0]
B               loc_1CFD24
CMP             R7, #0
BEQ             locret_1CFD60
MOV             R0, R4
BL              sub_1D2084
CMP             R0, #0
NOP
BNE             loc_1CFD8C
POP             {R4-R8,PC}
