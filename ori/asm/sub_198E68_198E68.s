PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_2004B8
LDRB            R0, [R4,#0x254]
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x218]
LDR             R1, [R0]
LDR             R1, [R1,#0x140]
BLX             R1
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0x90]
CMP             R0, #0
BNE             loc_198F18
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
BL              sub_5C6058
CMP             R0, #0
BEQ             loc_198F18
MOV             R1, #0
MOV             R0, R4
BL              sub_200584
CMP             R0, #0
BEQ             loc_198F18
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R1, [R0,#0x1B4]
ORR             R1, R1, #0x10000
STR             R1, [R0,#0x1B4]
LDR             R0, [R4,#0x120]
TST             R0, #2
BNE             loc_198F3C
ORR             R0, R0, #2
STR             R0, [R4,#0x120]
LDR             R0, [R4]
LDR             R1, [R0,#0xB8]
MOV             R0, R4
BLX             R1
B               loc_198F3C
LDR             R0, [R4,#0x120]
TST             R0, #2
BEQ             loc_198F3C
BIC             R0, R0, #2
STR             R0, [R4,#0x120]
LDR             R0, [R4]
LDR             R1, [R0,#0xBC]
MOV             R0, R4
BLX             R1
MOV             R0, R4
POP             {R4-R6,LR}
MOV             R1, #0
B               sub_21D12C
