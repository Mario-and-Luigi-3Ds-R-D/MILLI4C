PUSH            {R4-R6,LR}
MOV             R6, R0
LDRH            R0, [R2]
VLDR            S0, =0.0
MOV             R5, R1
SUB             R0, R0, #0x100
SUBS            R0, R0, #0x76 ; 'v'
MOV             R4, R2
BEQ             loc_211E88
CMP             R0, #1
BEQ             loc_211EA4
CMP             R0, #2
BNE             loc_211ED0
B               loc_211EC0
ADD             R0, R4, #0x68 ; 'h'
VLDR            S0, [R4,#0x70]
VLDM            R0, {S1-S2}
BL              sub_589768
NOP
NOP
B               loc_211ED0
ADD             R0, R4, #0x68 ; 'h'
VLDR            S0, [R4,#0x70]
VLDM            R0, {S1-S2}
BL              sub_589714
NOP
NOP
B               loc_211ED0
ADD             R0, R4, #0x68 ; 'h'
VLDR            S0, [R4,#0x70]
VLDM            R0, {S1-S2}
BL              sub_5896C4
CMP             R5, #0
LDRH            R0, [R4,#2]
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R6
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
