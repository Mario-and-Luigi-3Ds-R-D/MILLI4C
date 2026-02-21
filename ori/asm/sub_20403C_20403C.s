PUSH            {R4,LR}
LDR             R0, =off_6CE970
ADD             R1, R2, #0x10
LDR             R12, [R2,#8]
LDM             R1, {R1,R4}
LDR             R3, [R0]
AND             R12, R12, #0xFF
VLDR            S0, [R2,#0x6C]
ADD             R0, R3, #0x10C000
UXTH            R1, R1
CMP             R12, #5; switch 5 cases
AND             R2, R4, #0xFF
ADD             R0, R0, #0x214
ADD             R3, R3, #0x10C000
LDRCC           PC, [PC,R12,LSL#2]; switch jump
B               def_204074; jumptable 00204074 default case
DCD loc_204090; jump table for switch statement
NOP; jumptable 00204074 case 0
BL              sub_58F468
NOP
NOP
B               def_204074; jumptable 00204074 default case
NOP; jumptable 00204074 case 1
BL              sub_58E700
NOP
NOP
B               def_204074; jumptable 00204074 default case
NOP; jumptable 00204074 case 2
BL              sub_58E57C
NOP
NOP
B               def_204074; jumptable 00204074 default case
LDR             R0, [R3,#0x314]; jumptable 00204074 case 3
BL              sub_4C66B4
NOP
NOP
B               def_204074; jumptable 00204074 default case
LDR             R0, [R3,#0x314]; jumptable 00204074 case 4
BL              loc_4C668C
MOV             R0, #0; jumptable 00204074 default case
POP             {R4,PC}
