PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =dword_700900
MOV             R0, R5
BL              sub_13273C
LDR             R0, [R4]
CMP             R0, #0
LDREQ           R0, [R4,#4]
CMPEQ           R0, #0
BNE             loc_11A730
LDR             R3, =byte_6D2498
LDR             R0, [R3,#(dword_6D249C - 0x6D2498)]
CMP             R0, R4
BNE             loc_11A73C
MOV             R0, R5
POP             {R4-R6,LR}
B               sub_1327BC
CMP             R0, #0
LDRNE           R1, [R4,#0x10]
MOV             R12, #0
BEQ             loc_11A784
LDR             R2, [R0,#0x10]
CMP             R2, R1
BLE             loc_11A79C
LDR             R1, [R0]
STR             R0, [R4,#4]
STR             R1, [R4]
LDR             R1, [R0]
CMP             R1, #0
STREQ           R4, [R3,#(dword_6D249C - 0x6D2498)]
STRNE           R4, [R1,#4]
STR             R4, [R0]
MOV             R0, R5
POP             {R4-R6,LR}
B               sub_1327BC
STR             R4, [R3,#(dword_6D249C - 0x6D2498)]
STR             R4, [R3,#(dword_6D24A0 - 0x6D2498)]
MOV             R0, R5
STR             R12, [R4]
POP             {R4-R6,LR}
B               sub_1327BC
LDR             R0, [R0,#4]
CMP             R0, #0
BNE             loc_11A74C
LDR             R0, [R3,#(dword_6D24A0 - 0x6D2498)]
STR             R4, [R0,#4]
STM             R4, {R0,R12}
MOV             R0, R5
STR             R4, [R3,#(dword_6D24A0 - 0x6D2498)]
POP             {R4-R6,LR}
B               sub_1327BC
