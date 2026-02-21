PUSH            {R4-R8,LR}
MOV             R5, R0
LDRB            R0, [R0,#0x19]
CMP             R0, #1
MOVEQ           R0, #0
BEQ             loc_152250
CMP             R0, #2
BNE             locret_1522FC
MOV             R0, R5
BL              sub_1525C8
LDR             R0, [R5,#0x48]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_1522FC
LDR             R7, =unk_6E1DF4
LDR             R8, =unk_63FC24
MOV             R4, #0
B               loc_1522E4
LDRB            R1, [R1,#0x3FC]
CMP             R1, #0
BEQ             locret_1522FC
ADD             R0, R0, #1
CMP             R0, #0x20 ; ' '
BCS             loc_152260
ADD             R1, R5, R0,LSL#2
LDR             R1, [R1,#0x160]
CMP             R1, #0
BNE             loc_152238
LDRSB           R0, [R5,#0x14]
MOV             R1, #0x6F ; 'o'
ADD             R0, R0, #1
CMP             R0, #4; switch 4 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_152270; jumptable 00152270 default case
DCD loc_152290; jump table for switch statement
MOV             R1, #0x70 ; 'p'; jumptable 00152270 cases 1-3
B               def_152270; jumptable 00152270 default case
MOV             R1, #0x71 ; 'q'; jumptable 00152270 case 0
LDR             R0, =off_6CE970; jumptable 00152270 default case
MOV             R2, #0
LDR             R0, [R0]
BL              sub_52F9B4
MOV             R0, R5
NOP
BL              sub_152010
MOV             R0, #2
NOP
B               loc_1522F8
VLDR            S0, [R7,#(flt_6E1E9C - 0x6E1DF4)]
MOV             R1, #0
ADD             R0, R6, #0x1DC
BL              sub_5A2708
LDRD            R0, R1, [R8,#(off_63FC70 - 0x63FC24)]
ADD             R6, R6, #0x3F4
ADD             R4, R4, #1
STM             R6, {R0,R1}
CMP             R4, #0x20 ; ' '
BCS             loc_1522F4
ADD             R0, R5, R4,LSL#2
LDR             R6, [R0,#0x160]
CMP             R6, #0
BNE             loc_1522BC
MOV             R0, #0x64 ; 'd'
STRB            R0, [R5,#0x19]
POP             {R4-R8,PC}
