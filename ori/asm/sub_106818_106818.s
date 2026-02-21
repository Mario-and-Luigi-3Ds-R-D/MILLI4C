PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             locret_106988
LDRB            R0, [R4]
CMP             R0, #0
BNE             locret_106988
BL              sub_112D3C
LDR             R1, [R4,#4]
MOV             R5, R0
BL              sub_113630
CMP             R0, #0
BEQ             locret_106988
LDR             R0, [R4,#8]
VLDR            S0, =0.0
CMP             R0, #0x64 ; 'd'
BEQ             loc_1068B0
CMP             R0, #0xC8
BEQ             loc_106918
SUB             R0, R0, #0x12C
CMP             R0, #2
BHI             loc_106980
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             loc_10696C
VLDR            S2, [R4,#0x18]
VMOV.F32        S1, S0
LDR             R1, [R4,#4]
VMOV.F32        S0, S2
MOV             R0, R5
BL              sub_11349C
LDR             R2, [R4,#0x14]
LDR             R1, [R4,#4]
VLDR            S0, [R4,#0x10]
MOV             R0, R5
BL              sub_1136A4
B               loc_106980
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             loc_1068F8
VLDR            S2, [R4,#0x18]
VMOV.F32        S1, S0
LDR             R1, [R4,#0xC]
VMOV.F32        S0, S2
MOV             R0, R5
BL              sub_1135F0
STR             R0, [R4,#4]
MOV             R1, R0
LDR             R2, [R4,#0x14]
VLDR            S0, [R4,#0x10]
MOV             R0, R5
BL              sub_1136A4
NOP
NOP
B               loc_106980
LDR             R1, [R4,#0xC]
VLDR            S1, [R4,#0x10]
VLDR            S0, [R4,#0x18]
MOV             R0, R5
BL              sub_1135F0
NOP
NOP
B               loc_106964
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             loc_106954
LDR             R1, [R4,#0xC]
MOV             R0, R5
BL              sub_113668
STR             R0, [R4,#4]
MOV             R1, R0
LDR             R2, [R4,#0x14]
VLDR            S0, [R4,#0x10]
MOV             R0, R5
BL              sub_1136A4
NOP
NOP
B               loc_106980
LDR             R1, [R4,#0xC]
VLDR            S0, [R4,#0x10]
MOV             R0, R5
BL              sub_113668
STR             R0, [R4,#4]
B               loc_106980
LDR             R1, [R4,#4]
VLDR            S1, [R4,#0x10]
VLDR            S0, [R4,#0x18]
MOV             R0, R5
BL              sub_11349C
MOV             R0, #1
STRB            R0, [R4]
POP             {R4-R6,PC}
