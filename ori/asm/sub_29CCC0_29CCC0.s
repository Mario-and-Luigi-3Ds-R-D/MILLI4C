PUSH            {R4,R5}
RSB             R12, R1, R1,LSL#5
ADD             R4, R12, R1,LSL#6
RSB             R5, R1, R1,LSL#5
ADD             R1, R5, R1,LSL#6
ADD             R4, R0, R4,LSL#2
ADD             R0, R0, R1,LSL#2
LDR             R4, [R4,#0xB0]
LDR             R0, [R0,#0xB0]
MOV             R12, #4
LDR             R1, [R4,#0x188]
LDR             R0, [R0,#0x164]
BICS            R1, R12, R1
LDR             R0, [R0]
BEQ             loc_29CD0C
LDR             R0, [R0,#8]
ADD             R0, R0, #0x24 ; '$'
STR             R0, [R2]
B               loc_29CD28
LDR             R1, [R0,#0x24]
CMP             R1, #0
LDRGT           R0, [R0,#0x10]
LDRGT           R0, [R0]
MOVLE           R0, #0
ADD             R0, R0, #0x24 ; '$'
STR             R0, [R2]
ADD             R1, R0, #0x50 ; 'P'
LDR             R0, [R0,#0x5C]
LDM             R1, {R1,R2,R12}
STR             R0, [R3,#0xC]
STM             R3, {R1,R2,R12}
POP             {R4,R5}
BX              LR
