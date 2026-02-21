PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
LDR             R3, =off_6B3E34
LDR             R1, =sub_10D4F0
MOV             R2, #1
STR             R3, [R4]
LDR             R0, [R0]
LDR             R1, [R0,R1]!
STRB            R2, [R1,#0xF2]
LDR             R1, [R4,#0x10]
CMP             R1, #0
BEQ             loc_2A230C
LDR             R0, [R0]
ADD             R1, R1, #0x24 ; '$'
LDR             R2, [R0]
LDR             R2, [R2,#0x20]
BLX             R2
LDR             R0, [R4,#0x10]
CMP             R0, #0
BEQ             loc_2A230C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#0x10]
LDR             R1, =off_6B7990
ADD             R0, R4, #0xE0
STR             R1, [R4,#0xD8]
NOP
LDR             R1, =off_6B7ADC
STR             R1, [R0,#-0x30]
SUB             R0, R0, #0x28 ; '('
NOP
LDR             R1, =off_6B7A50
STR             R1, [R0,#-0x24]
SUB             R0, R0, #0x1C
NOP
LDR             R1, =off_6B7A6C
STR             R1, [R0,#-0x24]
SUB             R0, R0, #0x1C
NOP
LDR             R2, =off_6B7A08
SUB             R0, R0, #0x80
STR             R2, [R0,#0x24]
POP             {R4,PC}
