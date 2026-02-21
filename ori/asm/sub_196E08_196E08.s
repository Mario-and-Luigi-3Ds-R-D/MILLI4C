PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_2004B8
LDR             R0, [R4,#0x218]
LDR             R1, [R0]
LDR             R1, [R1,#0x140]
BLX             R1
LDR             R0, [R4,#0x21C]
LDR             R1, [R0]
LDR             R1, [R1,#0x140]
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0xD0]
MOV             R0, R4
BLX             R1
CMP             R0, #0
LDR             R6, =off_6D1648
LDR             R0, [R4,#0x120]
BEQ             loc_196E80
TST             R0, #8
BNE             loc_196E88
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              sub_19AD54
LDR             R0, [R4,#0x120]
ORR             R0, R0, #8
STR             R0, [R4,#0x120]
TST             R0, #8
BEQ             loc_196EF0
LDR             R0, [R4]
LDR             R1, [R0,#0xB4]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             loc_196EF0
LDR             R0, [R4,#0x3D0]
LDR             R5, =off_68BBB8
TST             R0, #1
BEQ             loc_196EC4
BIC             R0, R0, #0x3E ; '>'
ORR             R0, R0, #0x48 ; 'H'
STR             R0, [R4,#0x3D0]
LDRD            R0, R1, [R5,#(off_68BBE8 - 0x68BBB8)]
B               loc_196EEC
MOV             R1, #0
MOV             R0, R4
BL              sub_1FF828
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
MOV             R1, #0
STR             R1, [R0,#0x1CC]
LDRD            R0, R1, [R5,#(off_68BBC8 - 0x68BBB8)]
STRD            R0, R1, [R4,#4]
MOV             R0, R4
POP             {R4-R6,LR}
MOV             R1, #1
B               sub_21D12C
