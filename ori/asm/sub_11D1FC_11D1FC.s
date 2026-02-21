PUSH            {R4-R9}
ADD             R5, SP, #0x18+arg_0
MOV             R6, #0
LDR             R12, =0x7020
LDM             R5, {R4,R8}
STR             R6, [R2]
STR             R6, [R3]
LDRH            R12, [R12,R0]
CMP             R12, #0
BEQ             loc_11D378
LDR             R7, =0x92492493
MOV             R12, R1,ASR#24
MOV             R5, R12
MOV             R9, R6
SMLAL           R9, R5, R7, R12
MOV             R7, R5,ASR#2
SUB             R5, R7, R5,ASR#31
SUB             R5, R5, R5,LSL#3
ADD             R7, R5, R12
BIC             R5, R1, #0xFF000000
LDR             R1, =0x7220
ADD             R12, R0, R7,LSL#2
LDR             R12, [R1,R12]
CMP             R12, #0
BEQ             loc_11D378
CMP             R8, #0
STRNE           R5, [R8]
CMP             R4, #0
BEQ             loc_11D2D0
CMP             R7, #7; switch 7 cases
LDRCC           PC, [PC,R7,LSL#2]; switch jump
B               def_11D274; jumptable 0011D274 default case, case 0
DCD def_11D274; jump table for switch statement
MOV             R1, #0x64 ; 'd'; jumptable 0011D274 case 1
B               loc_11D2A4
MOV             R1, #0x65 ; 'e'; jumptable 0011D274 case 2
STR             R1, [R4]
B               loc_11D2D0
MOV             R1, #0xC8; jumptable 0011D274 case 3
B               loc_11D2A4
MOV             R1, #0x12C; jumptable 0011D274 case 4
B               loc_11D2A4
LDR             R1, =0x12D; jumptable 0011D274 case 5
B               loc_11D2A4
LDR             R1, =0x12E; jumptable 0011D274 case 6
B               loc_11D2A4
STR             R6, [R4]; jumptable 0011D274 default case, case 0
CMP             R7, #0
ADD             R0, R0, #0x7000
CMPNE           R7, #1
ADD             R1, R12, #0x20 ; ' '
ADD             R0, R0, #0x20 ; ' '
BEQ             loc_11D308
CMP             R7, #2
CMPNE           R7, #3
BEQ             loc_11D308
LDR             R4, [R12,#4]
CMP             R4, R5
ADDGT           R1, R1, R5,LSL#4
BLE             loc_11D378
B               loc_11D348
LDR             R4, [R12,#4]
LDR             R6, [R1]
CMP             R6, R5
ADD             R4, R1, R4,LSL#4
BEQ             loc_11D348
ADD             R1, R1, #0x10
MOV             R6, #1
SUB             R7, R4, R1
MOV             R4, R6
ADD             R8, R6, R7,ASR#4
CMP             R8, #1
ADDGT           R7, R6, R7,ASR#4
BLE             loc_11D378
LDR             R6, [R1]
CMP             R6, R5
BNE             loc_11D368
LDR             R12, [R12,#0x10]
LDR             R4, [R1,#8]
ADD             R12, R12, R4
STR             R12, [R2]
LDR             R1, [R1,#4]
STR             R1, [R3]
POP             {R4-R9}
BX              LR
ADD             R4, R4, #1
CMP             R7, R4
ADD             R1, R1, #0x10
BGT             loc_11D33C
POP             {R4-R9}
MOV             R0, #0
BX              LR
