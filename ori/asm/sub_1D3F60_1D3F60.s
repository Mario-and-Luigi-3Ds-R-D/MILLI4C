PUSH            {R4-R8,LR}
MOV             R7, R0
BL              sub_528E64
ADD             R6, R0, #0x400
MOV             R8, R0
LDRH            R0, [R6,#0x98]
MOV             R5, #0
AND             R0, R0, #0x7F
CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1D3F84; jumptable 001D3F84 default case, case 0
DCD def_1D3F84; jump table for switch statement
MOV             R0, R8; jumptable 001D3F84 case 1
BL              sub_144B40
NOP
NOP
B               loc_1D3FEC
MOV             R0, R8; jumptable 001D3F84 case 2
BL              sub_144AFC
NOP
NOP
B               loc_1D3FEC
LDR             R1, =off_6540F4; jumptable 001D3F84 case 3
ADD             R2, R7, #0x1A0000
LDM             R1, {R0,R1}
STRD            R0, R1, [R2,#0x5C]
POP             {R4-R8,PC}
MOV             R0, R8; jumptable 001D3F84 case 4
BL              sub_1451FC
MOV             R5, R0
CMP             R5, #0; jumptable 001D3F84 default case, case 0
BEQ             loc_1D4114
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E238B - 0x6E2378)]
CMP             R0, #0
CMPNE           R0, #4
BEQ             loc_1D40A0
B               loc_1D4114
NOP; jumptable 001D3F84 case 5
BL              sub_1465D4
MOV             R4, R0
NOP
MOV             R0, #0xD
ADD             R0, R4, R0,LSL#3
CMP             R4, R0
LDRHNE          R1, [R6,#0x9C]
BEQ             loc_1D4114
LDRH            R2, [R4]
CMP             R2, R1
BEQ             loc_1D4080
ADD             R4, R4, #8
CMP             R4, R0
BNE             loc_1D4034
B               loc_1D4114
NOP; jumptable 001D3F84 case 6
BL              sub_146A88
MOV             R4, R0
NOP
MOV             R0, #7
ADD             R1, R4, R0,LSL#3
CMP             R4, R1
LDRHNE          R0, [R6,#0x9C]
BEQ             loc_1D4114
LDRH            R2, [R4]
CMP             R2, R0
BNE             loc_1D4090
LDR             R1, [R4,#4]
MOV             R0, R8
BLX             R1
B               loc_1D3FEC
ADD             R4, R4, #8
CMP             R4, R1
BNE             loc_1D4074
B               loc_1D4114
MOV             R0, R7
BL              sub_5EE520
AND             R0, R0, #0x7F
CMP             R0, #1
BEQ             loc_1D40CC
CMP             R0, #2
BEQ             loc_1D40E4
CMP             R0, #5
CMPNE           R0, #6
BEQ             loc_1D40FC
B               loc_1D4114
NOP
BL              sub_47FFCC
CMP             R0, #0
LDREQ           R0, =0xD002
MOVNE           R0, #0xD000
B               loc_1D4110
NOP
BL              sub_47FFCC
CMP             R0, #0
LDRNE           R0, =0xD001
LDREQ           R0, =0xD003
B               loc_1D4110
MOV             R0, R7
BL              sub_5EE458
CMP             R0, #0
NOP
BEQ             loc_1D4114
STRH            R0, [R5,#6]
MOV             R2, R5
MOV             R1, R8
MOV             R0, R7
POP             {R4-R8,LR}
MOV             R3, #1
B               loc_1CFC94
