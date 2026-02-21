PUSH            {R4-R8,LR}
LDR             R7, =off_6CECB0
LDR             R0, [R7,#(dword_6CECB8 - 0x6CECB0)]
CMP             R0, #0
BEQ             def_1056C8; jumptable 001056C8 default case
MOV             R0, R7
MOV             R6, #0
LDR             R4, [R0]
LDR             R0, [R7,#(dword_6CECB4 - 0x6CECB0)]
SUB             R0, R0, #2
CMP             R0, #8; switch 8 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
POP             {R4-R8,PC}; jumptable 001056C8 default case
DCD loc_1056F0; jump table for switch statement
LDR             R0, [R4,#8]; jumptable 001056C8 case 0
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
CMP             R0, #0
BEQ             loc_105724
LDR             R0, [R4,#8]
ADD             R1, R4, #0xC
LDR             R2, [R0]
LDR             R2, [R2]
BLX             R2
ADD             R0, R4, #0x14
BL              sub_120E7C
LDR             R0, [R7]
BL              sub_1088DC
CMP             R0, #0
MOVNE           R0, #1
STRNE           R0, [R7,#(dword_6CECB4 - 0x6CECB0)]
LDR             R0, [R7,#(dword_6CECB8 - 0x6CECB0)]
BL              sub_108AC8
CMP             R0, #0
NOP
BEQ             loc_1057AC; jumptable 001056C8 cases 4,5,7
LDR             R4, [R7]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
CMP             R0, #0
BEQ             loc_105784
LDR             R0, [R4,#8]
ADD             R1, R4, #0xC
LDR             R2, [R0]
LDR             R2, [R2]
BLX             R2
ADD             R0, R4, #0x14
BL              sub_120E7C
LDR             R5, [R7,#(dword_6CECB8 - 0x6CECB0)]
MOV             R0, R5
BL              sub_10D420
MOV             R4, #0
ADD             R0, R5, R4,LSL#5
ADD             R0, R0, #0x20 ; ' '
BL              sub_10D420
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_105794
LDR             R0, [R7]; jumptable 001056C8 cases 4,5,7
BL              sub_108914
STR             R6, [R7]
STR             R6, [R7,#(dword_6CECB4 - 0x6CECB0)]
POP             {R4-R8,PC}
LDR             R0, [R4,#8]; jumptable 001056C8 case 2
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
CMP             R0, #0
BEQ             loc_1057F4
LDR             R0, [R4,#8]
ADD             R1, R4, #0xC
LDR             R2, [R0]
LDR             R2, [R2]
BLX             R2
ADD             R0, R4, #0x14
BL              sub_120E7C
LDR             R0, [R7,#(dword_6CECB8 - 0x6CECB0)]
BL              sub_108988
CMP             R0, #0
NOP
BEQ             loc_1057AC; jumptable 001056C8 cases 4,5,7
LDR             R4, [R7]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
CMP             R0, #0
BEQ             loc_105840
LDR             R0, [R4,#8]
ADD             R1, R4, #0xC
LDR             R2, [R0]
LDR             R2, [R2]
BLX             R2
ADD             R0, R4, #0x14
BL              sub_120E7C
LDR             R0, [R7,#(dword_6CECB8 - 0x6CECB0)]
BL              sub_108988
NOP
NOP
B               loc_1057AC; jumptable 001056C8 cases 4,5,7
LDR             R0, [R4,#8]; jumptable 001056C8 cases 1,3,6
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
CMP             R0, #0
BEQ             loc_105888
LDR             R0, [R4,#8]
ADD             R1, R4, #0xC
LDR             R2, [R0]
LDR             R2, [R2]
BLX             R2
ADD             R0, R4, #0x14
BL              sub_120E7C
LDR             R5, [R7,#(dword_6CECB8 - 0x6CECB0)]
MOV             R0, R5
BL              sub_10D420
MOV             R4, #0
ADD             R0, R5, R4,LSL#5
ADD             R0, R0, #0x20 ; ' '
BL              sub_10D420
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_105898
B               loc_1057AC; jumptable 001056C8 cases 4,5,7
