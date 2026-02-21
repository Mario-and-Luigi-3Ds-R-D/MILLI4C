PUSH            {R4-R10,LR}
MOV             R4, R0
BL              sub_528E64
ADD             R7, R4, #0x1A0000
MOV             R8, R0
LDRB            R0, [R7,#0x74]
CMP             R0, #0
BNE             locret_1D0BE4
ADD             R5, R4, #0x190000
ADD             R5, R5, #0xD600
LDR             R3, =0xFFFF
LDRH            R0, [R5,#0xAC]
MOV             R2, #0
MOV             R1, #1
BL              sub_47FEF8
STRH            R0, [R5,#0xAC]
MOV             R0, R4
BL              sub_5EE468
MOV             R1, R0
LDR             R0, =0x19DFE8
CMP             R1, #4
ADD             R6, R4, R0
BEQ             loc_1D0B40
MOV             R1, #0
MOV             R0, R4
BL              sub_529274
MOV             R0, R4
BL              sub_52B040
LDR             R0, [R6]
BL              sub_1CC8A8
LDR             R1, =off_6540EC
LDM             R1, {R0,R1}
B               loc_1D0BE0
MOV             R3, #0
MOV             R2, R3
ADD             R1, R4, #0x68 ; 'h'
MOV             R0, #0x368
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_1D0BA4
MOV             R5, R0
MOV             R0, R4
BL              sub_5EEA28
MOV             R2, #1
STRB            R2, [R5,#4]
LDR             R2, =off_6544D0
MOV             R1, #0
STRB            R1, [R5,#5]
STRH            R1, [R5,#6]
MOV             R9, R0
STR             R2, [R5]
ADD             R0, R5, #0xC
STRB            R1, [R5,#8]
BL              sub_2C8438
SUB             R5, R0, #0xC
MOV             R1, R9
BL              sub_2C7444
MOV             R0, R4
STR             R5, [R8,#0x140]
BL              sub_5EEA28
LDRH            R0, [R0]
NOP
BL              sub_50F080
LDRB            R0, [R0,#2]
CMP             R0, #0x1D
MOV             R0, R4
BEQ             loc_1D0BE8
BL              sub_1D0704
LDR             R0, [R6]
BL              sub_1CC5C4
LDR             R1, =unk_653FC0
LDRD            R0, R1, [R1,#(off_654054 - 0x653FC0)]
STRD            R0, R1, [R7,#0x5C]
POP             {R4-R10,PC}
NOP
BL              sub_1D4424
LDR             R0, =loc_19CF44
ADD             R0, R0, R4
LDR             R1, [R0]
ORR             R1, R1, #0x40 ; '@'
STR             R1, [R0]
B               loc_1D0BD0
