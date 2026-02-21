PUSH            {R4-R10,LR}
MOV             R6, R0
LDR             R0, =dword_6E1314
LDR             R7, =0x1FFB
VPUSH           {D8-D9}
LDR             R0, [R0]
LDR             R5, [R6,#0xC0]
TST             R0, #1
BNE             loc_1F0F48
LDR             R0, =dword_6E1314
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1F0F48
LDR             R0, =flt_6E1318
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E131C - 0x6E1318)]
LDR             R0, =dword_6E1314
NOP
LDR             R0, =flt_6E1318
VLDM            R0, {S17-S18}
LDR             R0, [R5]
LDR             R1, [R0,#0x3C]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_1F1058
ADD             R5, R5, #0x14400
ADD             R5, R5, #0x18
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1F1058
BL              sub_5DA46C
LDR             R8, =dword_6E1320
LDR             R9, =flt_6E1324
VLDR            S16, =0.0
CMP             R0, #2
BEQ             loc_1F0FD4
LDR             R0, [R5]
BL              sub_5DA46C
CMP             R0, #3
MOVNE           R4, #0
BEQ             loc_1F0FD4
LDR             R0, [R5]
AND             R1, R4, #0xFF
BL              sub_5DA350
CMP             R0, #0
NOP
BEQ             loc_1F104C
LDR             R0, [R8]
MOV             R7, #0
TST             R0, #1
BNE             loc_1F1044
B               loc_1F1030
LDR             R0, [R6,#0xC4]
LDR             R0, [R0,#4]
BL              sub_5EF424
CMP             R0, #0
NOP
BEQ             loc_1F1058
LDR             R0, [R8]
MOV             R7, #0
TST             R0, #1
BNE             loc_1F1044
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1F1044
LDR             R0, =flt_6E1324
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
NOP
NOP
B               loc_1F1044
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BNE             loc_1F1010
VLDM            R9, {S17-S18}
B               loc_1F1058
ADD             R4, R4, #1
CMP             R4, #5
BLT             loc_1F0FA8
LDR             R0, [R6,#0xBC]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x3C ; '<'
STR             R7, [R0]
LDR             R0, [R6,#0xBC]
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xC50
VSTM            R0, {S17-S18}
LDR             R0, [R6,#0xC0]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x3C ; '<'
STR             R7, [R0]
LDR             R0, [R6,#0xC0]
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xC50
VSTM            R0, {S17-S18}
VPOP            {D8-D9}
POP             {R4-R10,PC}
