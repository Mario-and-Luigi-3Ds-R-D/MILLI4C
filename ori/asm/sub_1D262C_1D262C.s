PUSH            {R4,LR}
MOV             R4, R0
BL              sub_52C5FC
CMP             R0, #0
BEQ             locret_1D26A0
MOV             R0, R4
BL              sub_5EE448
CMP             R0, #1
CMPNE           R0, #2
BEQ             loc_1D2660
CMP             R0, #3
BEQ             loc_1D26A4
B               loc_1D26B0
MOV             R1, #3
MOV             R0, R4
BL              sub_529254
MOV             R0, R4
NOP
BL              sub_1D0704
MOV             R0, R4
NOP
BL              sub_5295A8
CMP             R0, #0
NOP
BEQ             loc_1D26A4
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDRD            R0, R1, [R1,#(off_653FD4 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R4,PC}
MOV             R1, #4
MOV             R0, R4
BL              sub_529254
MOV             R0, R4
BL              sub_5EE468
CMP             R0, #0
NOP
BEQ             loc_1D2718
MOV             R0, R4
BL              sub_528E64
LDR             R2, [R4]
MOV             R1, R0
MOV             R0, R4
LDR             R2, [R2,#0x10]
BLX             R2
CMP             R0, #1
BEQ             loc_1D270C
LDR             R0, =loc_19CF44
ADD             R0, R0, R4
LDR             R1, [R0]
ORR             R1, R1, #0x80
STR             R1, [R0]
MOV             R0, R4
POP             {R4,LR}
MOV             R1, #0
B               sub_529274
MOV             R1, #0
MOV             R0, R4
BL              sub_529274
MOV             R0, R4
BL              sub_1D2084
CMP             R0, #0
NOP
BNE             loc_1D2718
POP             {R4,PC}
