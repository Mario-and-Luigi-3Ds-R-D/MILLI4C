PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
LDR             R0, [R5]
BL              sub_5C8540
CMP             R0, #0
BNE             loc_163240
LDR             R0, [R5]
LDR             R0, [R0,#0xC8]
TST             R0, #7
BNE             loc_163264
ADD             R12, R4, #0x16000
MOV             R0, #0
ADD             R12, R12, #0xCE0
ADD             R6, R4, #0x16C00
MOV             R1, R0
ADD             R6, R6, #0xE8
STRD            R0, R1, [R12]
STR             R0, [R6]
STR             R0, [R6,#4]
LDR             R0, [R5]
LDR             R0, [R0,#0xC8]
TST             R0, #7
BNE             loc_163264
ADD             R0, R4, #0x16C00
ADD             R0, R0, #0x1B8
MOV             R2, #0x300
MOV             R1, #0
BL              sub_110BE4
MOV             R0, R4
BL              sub_2ACC7C
LDR             R0, [R5]
NOP
BL              sub_5C8540
CMP             R0, #0
NOP
BEQ             locret_163388
ADD             R6, R4, #0x14000
MOV             R5, #0
LDRB            R0, [R6,#0x28E]
CMP             R0, #0
BLE             locret_163388
ADD             R0, R4, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0xA; switch 10 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1632B4; jumptable 001632B4 default case, cases 3,4
DCD loc_163340; jump table for switch statement
ADD             R0, R4, R5,LSL#2; jumptable 001632B4 case 6
ADD             R0, R0, #0x14000
LDR             R7, [R0,#0x184]
LDRB            R0, [R7,#0x75C]
TST             R0, #7
BNE             loc_163340; jumptable 001632B4 cases 0-2,5,7-9
LDR             R0, =0x758
LDRH            R0, [R0,R7]
SUB             R1, R0, #0xFF00
SUBS            R1, R1, #0xFF
BEQ             loc_163340; jumptable 001632B4 cases 0-2,5,7-9
MOV             R2, #0
MOV             R1, R2
BL              sub_116B34
VLDR            S1, =0.0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_163340; jumptable 001632B4 cases 0-2,5,7-9
LDR             R0, [R7]
MOV             R1, #0
LDR             R2, [R0,#0x338]
MOV             R0, R7
BLX             R2
ADD             R0, R4, R5,LSL#2; jumptable 001632B4 cases 0-2,5,7-9
ADD             R0, R0, #0x14000
LDRB            R2, [R6,#0x28E]
LDR             R0, [R0,#0x184]
ADD             R1, R0, #0x600
LDRSB           R3, [R1,#0x5E]
CMP             R3, R2
MOVGE           R2, #0xFF
STRBGE          R2, [R0,#0x65E]
LDRSB           R1, [R1,#0x5F]
LDRB            R2, [R6,#0x28E]
CMP             R1, R2
MOVGE           R1, #0xFF
STRBGE          R1, [R0,#0x65F]
LDRB            R0, [R6,#0x28E]; jumptable 001632B4 default case, cases 3,4
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_163298
POP             {R4-R8,PC}
