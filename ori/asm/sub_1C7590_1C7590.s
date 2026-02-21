PUSH            {R4-R10,LR}
MOV             R4, R0
ADD             R5, R4, #0x4A000
MOV             R9, #0
LDR             R0, =0x44A58
MOV             R6, R9
ADD             R7, R4, R0
LDRB            R0, [R7]
CMP             R0, #0
BLE             loc_1C7610
LDRB            R0, [R5,#0x2EC]
LDR             R1, [R5,#0x2E8]
CMP             R0, #0
LDR             R0, =0x1D07
MOVNE           R2, #1
MOVEQ           R2, #0
MUL             R0, R6, R0
ADD             R8, R4, R0,LSL#2
ADD             R0, R8, #0x27400
ADD             R0, R0, #0x1D8
BL              sub_544478
LDR             R0, [R5,#0x2E8]
ADD             R6, R6, #1
TST             R0, #3
LDRBEQ          R0, [R5,#0x2EC]
CMPEQ           R0, #0
ADDEQ           R8, R8, #0x2C000
ADDEQ           R8, R8, #0xE40
STRBEQ          R9, [R8]
LDRB            R0, [R7]
CMP             R0, R6
BGT             loc_1C75B8
LDRB            R3, [R7]
MOV             R2, #0
MOV             R10, #0xFF
CMP             R3, #0
MOV             R0, R2
BLE             loc_1C78C8
LDR             R1, =0x1D07
LDR             R12, =0x2CE08
MUL             R1, R0, R1
ADD             R1, R4, R1,LSL#2
LDR             R12, [R12,R1]
TST             R12, #1
BEQ             loc_1C766C
LDR             R2, =0x2E8BC
LDR             R2, [R2,R1]
CMN             R2, #1
BEQ             loc_1C7668
ADD             R1, R1, #0x2E400
ADD             R1, R1, #0x1D8
LDR             R1, [R1,#0x3B8]
TST             R1, #6
BEQ             loc_1C78C8
MOV             R2, #1
ADD             R0, R0, #1
CMP             R3, R0
BGT             loc_1C7628
CMP             R2, #0
BEQ             loc_1C78C8
LDRB            R6, [R5,#0x2E4]
LDRB            R8, [R5,#0x2E5]
MOV             R1, #0
MOV             R0, #0x200
BL              sub_4802F8
LDR             R1, [R5,#0x2E8]
TST             R0, R1
BEQ             loc_1C76C0
LDRB            R1, [R5,#0x2E4]
CMP             R1, #0xFF
BEQ             loc_1C7760
LDRB            R0, [R5,#0x2E5]
CMP             R0, #0
SUBNE           R0, R0, #1
STRBNE          R0, [R5,#0x2E5]
BEQ             loc_1C77B0
MOV             R1, #0
MOV             R0, #0x100
BL              sub_4802F8
LDR             R1, [R5,#0x2E8]
TST             R0, R1
BEQ             loc_1C7874
LDRB            R0, [R5,#0x2E4]
CMP             R0, #0xFF
BEQ             loc_1C7828
LDR             R2, =0x1D07
LDRB            R1, [R5,#0x2E5]
MUL             R2, R0, R2
ADD             R2, R4, R2,LSL#2
ADD             R2, R2, #0x2E000
ADD             R2, R2, #0x620
LDRB            R2, [R2]
SUB             R2, R2, #1
CMP             R1, R2
ADDNE           R0, R1, #1
STRBNE          R0, [R5,#0x2E5]
BNE             loc_1C7880
LDRB            R2, [R7]
ADD             R0, R0, #1
CMP             R2, R0
BLE             loc_1C78C8
LDR             R1, =0x1D07
LDR             R3, =0x2E620
MUL             R1, R0, R1
ADD             R1, R4, R1,LSL#2
LDRB            R3, [R3,R1]
CMP             R3, #0
BEQ             loc_1C78BC
ADD             R1, R1, #0x2CC00
ADD             R1, R1, #0x208
LDR             R1, [R1]
TST             R1, #1
BEQ             loc_1C78BC
STRB            R9, [R5,#0x2E5]
STRB            R0, [R5,#0x2E4]
B               loc_1C7874
LDRB            R0, [R7]
SUB             R0, R0, #1
CMN             R0, #1
BLE             loc_1C76C0
LDR             R1, =0x1D07
LDR             R2, =0x2E620
MUL             R1, R0, R1
ADD             R1, R4, R1,LSL#2
LDRB            R2, [R2,R1]
CMP             R2, #0
BEQ             loc_1C77A0
ADD             R1, R1, #0x2CC00
ADD             R1, R1, #0x208
LDR             R1, [R1]
TST             R1, #1
BNE             loc_1C77EC
SUB             R0, R0, #1
CMN             R0, #1
BGT             loc_1C7770
B               loc_1C76C0
SUB             R0, R1, #1
CMN             R0, #1
BLE             loc_1C7820
LDR             R1, =0x1D07
LDR             R2, =0x2E620
MUL             R1, R0, R1
ADD             R1, R4, R1,LSL#2
LDRB            R2, [R2,R1]
CMP             R2, #0
BEQ             loc_1C7814
ADD             R1, R1, #0x2CC00
ADD             R1, R1, #0x208
LDR             R1, [R1]
TST             R1, #1
BEQ             loc_1C7814
LDR             R1, =0x1D07
STRB            R0, [R5,#0x2E4]
MUL             R1, R0, R1
ADD             R1, R4, R1,LSL#2
ADD             R1, R1, #0x2E000
ADD             R1, R1, #0x620
LDRB            R0, [R1]
SUB             R0, R0, #1
STRB            R0, [R5,#0x2E5]
B               loc_1C76C0
SUB             R0, R0, #1
CMN             R0, #1
BGT             loc_1C77BC
STRB            R10, [R5,#0x2E4]
B               loc_1C76C0
LDRB            R2, [R7]
MOV             R0, #0
CMP             R2, #0
BLE             locret_1C78CC
LDR             R1, =0x1D07
LDR             R3, =0x2E620
MUL             R1, R0, R1
ADD             R1, R4, R1,LSL#2
LDRB            R3, [R3,R1]
CMP             R3, #0
BEQ             loc_1C7868
ADD             R1, R1, #0x2CC00
ADD             R1, R1, #0x208
LDR             R1, [R1]
TST             R1, #1
BNE             loc_1C7754
ADD             R0, R0, #1
CMP             R2, R0
BGT             loc_1C7838
LDRB            R0, [R5,#0x2E4]
CMP             R0, #0xFF
BEQ             locret_1C78CC
LDRB            R0, [R5,#0x2E4]
CMP             R0, R6
LDRBEQ          R1, [R5,#0x2E5]
CMPEQ           R1, R8
BEQ             locret_1C78CC
LDR             R1, =0x1D07
LDR             R2, =0x44A5C
MUL             R0, R0, R1
LDRB            R1, [R5,#0x2E5]
ADD             R2, R2, R4
ADD             R0, R4, R0,LSL#2
POP             {R4-R10,LR}
ADD             R0, R0, #0x27400
ADD             R0, R0, #0x1D8
B               sub_2C1F1C
ADD             R0, R0, #1
CMP             R2, R0
BGT             loc_1C7724
STRB            R10, [R5,#0x2E4]
POP             {R4-R10,PC}
