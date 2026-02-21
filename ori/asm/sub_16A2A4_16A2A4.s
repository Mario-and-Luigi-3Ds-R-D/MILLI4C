PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x2600
LDR             R6, =off_6D1648
ADD             R0, R0, #0x86
ADD             R5, R4, #0x400
LDRB            R1, [R0]
LDR             R0, [R6]
ADD             R5, R5, #0x64 ; 'd'
CMP             R1, #2
CMPNE           R1, #3
BEQ             loc_16A2E0
CMP             R1, #4
BEQ             loc_16A318
B               loc_16A374
NOP
LDR             R0, [R0,#0xBC]
LDR             R1, =0x2101D
NOP
BL              sub_164868
MOV             R1, R0
LDR             R0, [R4]
LDR             R2, [R0,#0x348]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#0x464]
BIC             R0, R0, #0x700
STR             R0, [R5]
POP             {R4-R6,PC}
LDR             R1, =0x276F
LDRB            R1, [R1,R4]
CMP             R1, #0
BEQ             loc_16A374
LDR             R0, [R0,#0xBC]
LDR             R1, =0x2101F
NOP
BL              sub_164868
MOV             R1, R0
LDR             R0, [R4]
LDR             R2, [R0,#0x348]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#0x464]
LDR             R1, =0x468
LDR             R2, =0x2684
BIC             R0, R0, #0x700
STR             R0, [R5]
MOV             R3, #0x10
MOV             R0, #0xC8
STRH            R3, [R1,R4]
STRH            R0, [R2,R4]
POP             {R4-R6,PC}
LDR             R0, [R4]
LDR             R1, [R0,#0x370]
MOV             R0, R4
BLX             R1
LDR             R0, [R6]
BL              sub_5C8540
CMP             R0, #0
NOP
BEQ             locret_16A314
LDR             R0, [R4]
LDR             R1, [R0,#0x468]
MOV             R0, R4
BLX             R1
CMP             R0, #1
BNE             locret_16A314
LDR             R0, =0x2698
LDRB            R1, [R0,R4]
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_171CC8
