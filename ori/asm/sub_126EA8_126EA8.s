LDR             R1, =off_6D48F8
PUSH            {R4-R6,LR}
LDR             R4, [R1]
LDR             R1, [R4,#8]
BIC             R5, R0, R1
TST             R5, #1
BEQ             loc_126ED0
LDR             R0, [R4]
ORR             R0, R0, #0x100000
STR             R0, [R4]
TST             R5, #2
BEQ             loc_126EE4
LDR             R0, [R4]
ORR             R0, R0, #0x10000
STR             R0, [R4]
TST             R5, #4
BEQ             loc_126EF8
LDR             R0, [R4]
ORR             R0, R0, #0x1800000
STR             R0, [R4]
TST             R5, #8
BEQ             loc_126F0C
LDR             R0, [R4]
ORR             R0, R0, #0x600000
STR             R0, [R4]
TST             R5, #0x10
BEQ             loc_126F20
LDR             R0, [R4]
ORR             R0, R0, #0x10000
STR             R0, [R4]
TST             R5, #0x20
BEQ             loc_126F34
LDR             R0, [R4]
ORR             R0, R0, #0x80000
STR             R0, [R4]
TST             R5, #0x40
BEQ             loc_126F64
LDR             R0, [R4]
LDR             R1, =0x2004038
ORR             R0, R0, R1
STR             R0, [R4]
MOV             R1, #0x84
ADD             R0, R4, #0x10C
BL              sub_2FFE8C
MOV             R1, #0x84
ADD             R0, R4, #0x190
BL              sub_2FFE8C
TST             R5, #0x80
BEQ             loc_126F78
LDR             R0, [R4]
ORR             R0, R0, #0x1C00
STR             R0, [R4]
TST             R5, #0x100
BEQ             loc_126F8C
LDR             R0, [R4]
ORR             R0, R0, #1
STR             R0, [R4]
TST             R5, #0x200
BEQ             loc_126FA4
LDR             R0, [R4]
ORR             R0, R0, #0x8000
ORR             R0, R0, #0xC2
STR             R0, [R4]
TST             R5, #0x400
BEQ             loc_126FB8
LDR             R0, [R4]
ORR             R0, R0, #4
STR             R0, [R4]
TST             R5, #0x800
BEQ             loc_126FCC
LDR             R0, [R4]
ORR             R0, R0, #0x100
STR             R0, [R4]
TST             R5, #0x1000
BEQ             loc_126FE0
LDR             R0, [R4]
ORR             R0, R0, #0x200
STR             R0, [R4]
LDR             R0, [R4,#4]
ORR             R0, R0, R5
STR             R0, [R4,#4]
POP             {R4-R6,PC}
