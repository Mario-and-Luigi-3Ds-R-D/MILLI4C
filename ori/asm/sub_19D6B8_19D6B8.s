LDR             R4, [R0,#0x10]
B               loc_19D974
CMP             R6, #0xC; switch 12 cases
LDRCC           PC, [PC,R6,LSL#2]; switch jump
B               def_19D6C4; jumptable 0019D6C4 default case
DCD loc_19D788; jump table for switch statement
LDR             R1, =dword_6ED9B8; jumptable 0019D6C4 case 1
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x340
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19D938
BL              sub_3251C4
NOP
NOP
B               loc_19D750
LDR             R1, =dword_6ED9B8; jumptable 0019D6C4 case 2
LDR             R0, =0x42C
MOV             R3, #0x800000
MOV             R2, #0
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19D938
BL              sub_2BE778
MOV             R4, R0
B               loc_19D93C
LDR             R1, =dword_6ED9B8; jumptable 0019D6C4 case 4
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x108
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19D938
BL              sub_3226CC
NOP
NOP
B               loc_19D750
LDR             R1, =dword_6ED9B8; jumptable 0019D6C4 case 0
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x3E0
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19D938
BL              sub_308244
NOP
NOP
B               loc_19D750
LDR             R1, =dword_6ED9B8; jumptable 0019D6C4 case 3
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x230
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19D938
BL              sub_2B9D3C
NOP
NOP
B               loc_19D750
LDR             R1, =dword_6ED9B8; jumptable 0019D6C4 case 5
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x21C
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19D938
BL              sub_2DC23C
NOP
NOP
B               loc_19D750
LDR             R1, =dword_6ED9B8; jumptable 0019D6C4 case 6
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x4D0
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19D938
BL              sub_2D8CBC
NOP
NOP
B               loc_19D750
LDR             R1, =dword_6ED9B8; jumptable 0019D6C4 case 7
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x1C0
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19D938
BL              sub_302F30
NOP
NOP
B               loc_19D750
LDR             R1, =dword_6ED9B8; jumptable 0019D6C4 case 8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0xAB0
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19D938
BL              sub_35E498
NOP
NOP
B               loc_19D750
LDR             R1, =dword_6ED9B8; jumptable 0019D6C4 case 9
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x3D4
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19D938
BL              sub_199F68
NOP
NOP
B               loc_19D750
LDR             R1, =dword_6ED9B8; jumptable 0019D6C4 case 10
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x1B8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19D938
BL              sub_37F330
NOP
NOP
B               loc_19D750
LDR             R1, =dword_6ED9B8; jumptable 0019D6C4 case 11
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x33C
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19D938
BL              sub_3813E4
NOP
NOP
B               loc_19D750
MOV             R4, #0
MOV             R1, R7
STRB            R6, [R4,#0xB4]
LDR             R0, [R4]
LDR             R2, [R0,#0x10]
MOV             R0, R4
BLX             R2
MOV             R0, #0
ADD             R1, R5, R0,LSL#2
LDR             R1, [R1,#0x10]
CMP             R1, #0
BEQ             loc_19D990
ADD             R0, R0, #1
CMP             R0, #0x20 ; ' '
BLT             loc_19D958
LDRB            R0, [R5,#0x9E]
ADD             R0, R0, #1
STRB            R0, [R5,#0x9E]
MOV             R0, R4
POP             {R4-R8,PC}
MOV             R0, #0; jumptable 0019D6C4 default case
POP             {R4-R8,PC}
ADD             R2, R5, R0,LSL#2
STR             R4, [R2,#0x10]
STRB            R0, [R4,#0xB5]
LDRH            R0, [R5,#0x9C]
ADD             R0, R0, #1
STRH            R0, [R5,#0x9C]
B               loc_19D974
