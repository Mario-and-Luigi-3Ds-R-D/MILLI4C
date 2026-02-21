PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x120]
TST             R0, #0x600
BEQ             locret_1FFBA8
MOV             R0, R0,LSL#21
MOV             R0, R0,LSR#30
CMP             R0, #1
BEQ             loc_1FFBAC
CMP             R0, #2
BEQ             loc_1FFBE0
CMP             R0, #3
BNE             locret_1FFBA8
LDR             R0, [R4]
LDR             R1, [R0,#0x60]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             locret_1FFBA8
LDR             R0, [R4,#0x120]
BIC             R0, R0, #0x600
STR             R0, [R4,#0x120]
POP             {R4,PC}
LDRSH           R0, [R4,#0xB8]
CMP             R0, #0
SUBGT           R0, R0, #1
STRHGT          R0, [R4,#0xB8]
BGT             locret_1FFBA8
LDR             R0, [R4]
LDR             R1, [R0,#0x80]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x120]
BIC             R0, R0, #0x600
ORR             R0, R0, #0x400
B               loc_1FFC0C
LDRSH           R0, [R4,#0xBA]
CMP             R0, #0
SUBGT           R0, R0, #1
STRHGT          R0, [R4,#0xBA]
BGT             locret_1FFBA8
LDR             R0, [R4]
LDR             R1, [R0,#0x84]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x120]
ORR             R0, R0, #0x600
STR             R0, [R4,#0x120]
POP             {R4,PC}
