PUSH            {R4-R8,LR}
SUB             SP, SP, #8
LDR             R5, =dword_700AE8
MOV             R0, R5
BL              sub_13273C
LDR             R6, =byte_6D2578
LDR             R0, [R6,#(dword_6D2584 - 0x6D2578)]
TST             R0, #1
BNE             loc_120A50
ADD             R0, R6, #0xC
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_120A50
SUB             R4, R5, #0xF0
MOV             R12, #0
STR             R12, [R4,#(dword_7009FC - 0x7009F8)]
STR             R12, [R4,#(dword_700A00 - 0x7009F8)]
STR             R12, [R4,#(dword_700A04 - 0x7009F8)]
STR             R12, [R4,#(dword_700A08 - 0x7009F8)]
LDR             R2, =unk_6CB280
STR             R12, [R4,#(dword_700A0C - 0x7009F8)]
STR             R12, [R4,#(dword_700A1C - 0x7009F8)]
MOV             R1, #0x130
MOV             R3, #0x1300
MOV             R7, #4
STR             R12, [R4,#(dword_700A28 - 0x7009F8)]
LDR             R0, =off_6C00C0
MOV             R8, #0xFFFFFFFF
STR             R0, [R4]
STR             R8, [R4,#(dword_700A30 - 0x7009F8)]
STR             R12, [R4,#(dword_700A2C - 0x7009F8)]
MOV             R0, R4
STMEA           SP, {R7,R12}
BL              sub_128840
ADD             R0, R4, #0x30 ; '0'
BL              sub_118AE8
LDR             R2, =sub_100000
LDR             R1, =sub_131A70
MOV             R0, R4
NOP
ADD             R0, R6, #0xC
NOP
LDR             R0, =dword_7009F8
STR             R0, [R6,#(dword_6D257C - 0x6D2578)]
BL              sub_1272E4
MOV             R4, R0
MOV             R0, R5
BL              sub_1327BC
ADD             SP, SP, #8
MOV             R0, R4
POP             {R4-R8,PC}
