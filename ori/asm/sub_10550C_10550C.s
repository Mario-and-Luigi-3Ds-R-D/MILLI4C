PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R0, =dword_6D1F68
LDR             R0, [R0,#(dword_6D1F6C - 0x6D1F68)]
TST             R0, #1
BNE             loc_105568
LDR             R0, =dword_6D1F6C
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_105568
LDR             R5, =unk_6EDA10
BL              sub_107B3C
MOV             R2, #0xFFFFFFFF
STR             R2, [R5,#(dword_6EDA18 - 0x6EDA10)]
MOV             R3, R2
STR             R2, [R5,#(dword_6EDA1C - 0x6EDA10)]
STM             R5, {R0,R3}
MOV             R0, R5
LDR             R2, =sub_100000
LDR             R1, =nullsub_365
NOP
LDR             R0, =dword_6D1F6C
NOP
LDR             R0, =unk_6EDA10
ADD             R1, R4, #0xC
BL              sub_107B54
LDRB            R3, [R4,#8]
LDRB            R0, [R4,#0x10]
MOV             R2, #1
AND             R1, R3, #1
CMP             R0, #0
BEQ             loc_1055C0
CMP             R1, #0
LDRBEQ          R12, [R4,#0xA]
BEQ             loc_1055B8
LDRB            R12, [R4,#9]
SUB             R12, R12, #1
SXTB            R12, R12
CMP             R12, #0
STRB            R12, [R4,#9]
LDRBLE          R12, [R4,#0xB]
MOVGT           R2, #0
BGT             loc_1055CC
STRB            R12, [R4,#9]
B               loc_1055CC
MOV             R12, #0
MOV             R2, R12
STRB            R12, [R4,#9]
AND             R6, R0, #1
BIC             R3, R3, #1
ORR             R3, R3, R6
BIC             R12, R0, R1
MOV             R7, #2
MOV             R5, #4
AND             R7, R7, R1,LSL#1
BIC             R3, R3, #2
AND             R12, R5, R12,LSL#2
ORR             R3, R3, R7
BIC             R3, R3, #4
ORR             R3, R3, R12
BIC             R6, R1, R0
MOV             R5, #8
AND             R5, R5, R6,LSL#3
BIC             R3, R3, #8
MOV             R12, #0x10
ORR             R3, R3, R5
AND             R2, R12, R2,LSL#4
BIC             R3, R3, #0x10
EOR             R12, R1, R0
ORR             R2, R2, R3
MOV             R5, #0x20 ; ' '
AND             R3, R5, R12,LSL#5
BIC             R2, R2, #0x20 ; ' '
ORR             R2, R2, R3
CMP             R0, #0
STRB            R2, [R4,#8]
BEQ             locret_105668
CMP             R1, #0
BEQ             loc_10566C
LDRH            R0, [R4]
LDRH            R1, [R4,#2]
LDRH            R2, [R4,#0xC]
LDRH            R3, [R4,#0xE]
STRH            R0, [R4,#4]
STRH            R1, [R4,#6]
STRH            R2, [R4]
STRH            R3, [R4,#2]
POP             {R4-R8,PC}
LDRH            R1, [R4,#0xC]
LDRH            R0, [R4,#0xE]
STRH            R1, [R4]
STRH            R1, [R4,#4]
STRH            R0, [R4,#2]
STRH            R0, [R4,#6]
POP             {R4-R8,PC}
