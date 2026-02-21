PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
LDR             R0, [R6]
BL              sub_5C8540
CMP             R0, #0
BEQ             loc_163B1C
LDR             R0, [R6]
BL              sub_1E4614
LDR             R1, [R0]
LDR             R1, [R1,#0x468]
BLX             R1
CMP             R0, #4
BNE             loc_163B1C
LDR             R0, [R6]
BL              sub_1E4614
ADD             R0, R0, #0x800
VLDR            S0, =5.5
VSTR            S0, [R0,#0x28]
LDR             R0, [R6]
ADD             R5, R4, #0x16000
ADD             R5, R5, #0x338
LDR             R1, [R0,#0xC8]
TST             R1, #7
BEQ             loc_163B74
MOV             R0, R5
BL              sub_21ED74
LDR             R0, [R6]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R0, R0, #0x4000
ADD             R0, R0, #0xF10
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_163BEC
LDR             R0, [R6]
BL              sub_5C8540
CMP             R0, #0
NOP
BEQ             loc_163BC0
B               loc_163BEC
LDR             R1, [R0,#0xA4]
MOV             R2, #1
ADD             R1, R1, #0x4A000
STRB            R2, [R1,#0x2EC]
BL              sub_5C8540
CMP             R0, #0
NOP
BNE             loc_163BA4
ADD             R0, R4, #0x16800
VLDR            S0, =0.0
ADD             R0, R0, #0x2E8
BL              sub_1E3014
MOV             R1, R4
MOV             R0, R5
BL              sub_21E48C
LDR             R0, =0x16CFC
MOV             R1, #0
STRB            R1, [R0,R4]
B               loc_163B3C
LDR             R0, [R6]
LDR             R1, [R0,#0xC8]
TST             R1, #7
BNE             loc_163BEC
BL              sub_1E4614
ADD             R0, R0, #0x4000
ADD             R0, R0, #0xF10
LDR             R0, [R0]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_68E7FC
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
