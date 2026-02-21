PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0xC
LDR             R0, [R1,#0x70]
MOV             R4, R1
TST             R0, #2
BEQ             loc_17E3CC
TST             R0, #4
BNE             loc_17E3CC
AND             R0, R0, #0x70 ; 'p'
CMP             R0, #0x40 ; '@'
BNE             loc_17E280
LDR             R0, [R4,#0x80]
MOV             R1, R4
LDRB            R0, [R0,#0xDE]
MOV             R0, R0,LSL#30
MOV             R0, R0,LSR#31
ADD             R2, R0, R0,LSL#1
ADD             R0, R2, R0,LSL#4
ADD             R0, R5, R0,LSL#3
ADD             R0, R0, #8
BL              sub_1F4544
MOV             R6, R0
B               loc_17E290
MOV             R1, R4
ADD             R0, R5, #8
BL              sub_1F4544
MOV             R6, R0
CMP             R6, #1
MOV             R7, #0
MOV             R2, #2
MOV             R0, #1
BEQ             loc_17E2B0
CMP             R6, #2
BNE             loc_17E3B4
B               loc_17E308
LDR             R1, [R4,#0x70]
MOV             R3, R1,LSL#25
CMP             R0, R3,LSR#29
BEQ             loc_17E2C8
CMP             R2, R3,LSR#29
BNE             loc_17E2F4
MOV             R1, R1,LSL#22
CMP             R0, R1,LSR#29
BNE             loc_17E2F4
LDR             R0, [R5]
MOV             R1, R4
LDR             R2, [R0,#0x7C]
MOV             R0, R5
BLX             R2
LDR             R0, [R4,#0x70]
BIC             R0, R0, #8
STR             R0, [R4,#0x70]
LDR             R0, [R4,#0x70]
BIC             R0, R0, #2
STR             R0, [R4,#0x70]
STR             R7, [R4,#0x7C]
B               loc_17E3B4
LDR             R1, [R4,#0x70]
MOV             R3, R1,LSL#25
CMP             R0, R3,LSR#29
BEQ             loc_17E320
CMP             R2, R3,LSR#29
BNE             loc_17E34C
MOV             R1, R1,LSL#22
CMP             R0, R1,LSR#29
BNE             loc_17E34C
LDR             R0, [R5]
MOV             R1, R4
LDR             R2, [R0,#0x7C]
MOV             R0, R5
BLX             R2
LDR             R0, [R4,#0x70]
BIC             R0, R0, #8
STR             R0, [R4,#0x70]
LDR             R0, [R4,#0x70]
LDR             R1, [R4,#0x7C]
BIC             R0, R0, #2
CMP             R1, #0
STR             R0, [R4,#0x70]
BEQ             loc_17E3B4
MOV             R2, R0,LSL#25
MOV             R12, R0,LSL#3
STR             R7, [SP,#0x20+var_20]
STR             R4, [SP,#0x20+var_18]
STR             R7, [SP,#0x20+var_1C]
LDR             R0, [R5]
MOV             R3, R2,LSR#29
MOV             R2, R12,LSR#31
LDR             R12, [R0,#0x58]
MOV             R0, R5
BLX             R12
LDR             R0, [R4,#0x70]
MOV             R1, #0x1C00
BIC             R2, R0, #0x1C00
AND             R0, R1, R0,LSR#3
ORR             R0, R0, R2
STR             R0, [R4,#0x70]
LDRB            R0, [R4,#0x7A]
STRB            R0, [R4,#0x79]
STR             R7, [R4,#0x7C]
LDR             R0, [R4,#0x70]
MOV             R1, #0x30000
AND             R1, R1, R6,LSL#16
BIC             R0, R0, #0x30000
ORR             R0, R0, R1
STR             R0, [R4,#0x70]
LDR             R0, [R4,#0x70]
ADD             SP, SP, #0xC
MOV             R0, R0,LSL#14
MOV             R0, R0,LSR#30
POP             {R4-R7,PC}
