PUSH            {R4-R12,LR}
MOV             R5, #0
MOV             R7, R1
SUBS            R9, R0, #0
BLE             locret_10B7FC
LDR             R6, =dword_700750
LDR             R8, =off_6D2428
MOV             R11, #0x300
MOV             R10, #0
LDR             R12, [R8]
CMP             R12, #0
MOVEQ           R4, #0
BEQ             loc_10B728
MOV             R3, #0x44 ; 'D'
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOV             R4, R0
MOV             R1, #0x44 ; 'D'
MOV             R0, R4
BL              sub_2FFE8C
STR             R11, [R4,#0x2C]
LDR             R0, [R8,#(dword_6D2430 - 0x6D2428)]
AND             R1, R0, #0x1F
ADD             R1, R6, R1,LSL#2
LDR             R3, [R1,#0x1C]
CMP             R3, #0
BEQ             loc_10B780
LDR             R2, [R3]
CMP             R2, R0
BEQ             loc_10B800
BLS             loc_10B798
AND             R2, R0, #0x1F
STR             R0, [R7,R5,LSL#2]
ADD             R2, R6, R2,LSL#2
STR             R0, [R4]
LDR             R2, [R2,#0x1C]
STR             R2, [R4,#0x40]
STR             R4, [R1,#0x1C]
B               loc_10B7E8
AND             R1, R0, #0x1F
STR             R0, [R7,R5,LSL#2]
STR             R0, [R4]
ADD             R1, R6, R1,LSL#2
STR             R10, [R4,#0x40]
B               loc_10B778
LDR             R2, [R3,#0x40]
CMP             R2, #0
BEQ             loc_10B7D8
LDR             R1, [R2]
CMP             R1, R0
BEQ             loc_10B800
BLS             loc_10B7C8
STR             R0, [R7,R5,LSL#2]
STR             R0, [R4]
STR             R4, [R3,#0x40]
STR             R2, [R4,#0x40]
B               loc_10B7E8
MOV             R3, R2
LDR             R2, [R2,#0x40]
CMP             R2, #0
BNE             loc_10B7A4
STR             R4, [R3,#0x40]
STR             R0, [R4],#0x40
STR             R10, [R4]
STR             R0, [R7,R5,LSL#2]
ADD             R0, R0, #1
ADD             R5, R5, #1
CMP             R5, R9
STR             R0, [R8,#(dword_6D2430 - 0x6D2428)]
BLT             loc_10B700
POP             {R4-R12,PC}
ADD             R0, R0, #1
B               loc_10B73C
