PUSH            {R4-R10,LR}
MOV             R6, R1
MOV             R4, #0
SUBS            R9, R0, #0
BLE             locret_10B934
LDR             R5, =dword_700750
LDR             R7, =off_6D2428
MOV             R8, #0
LDR             R12, [R7]
CMP             R12, #0
BEQ             loc_10B854
MOV             R3, #0x1C
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOV             R12, R0
STR             R8, [R12]
STR             R8, [R12,#4]
STR             R8, [R12,#8]
STR             R8, [R12,#0xC]
STR             R8, [R12,#0x10]
STR             R8, [R12,#0x14]
STR             R8, [R12,#0x18]
LDR             R2, [R7,#(dword_6D2434 - 0x6D2428)]
AND             R0, R2, #0x1F
ADD             R0, R5, R0,LSL#2
LDR             R1, [R0,#0xA4]
CMP             R1, #0
BEQ             loc_10B8B8
LDR             R3, [R1]
CMP             R3, R2
BEQ             loc_10B938
BLS             loc_10B8D0
AND             R1, R2, #0x1F
STR             R2, [R6,R4,LSL#2]
ADD             R1, R5, R1,LSL#2
STR             R2, [R12]
LDR             R1, [R1,#0xA4]
STR             R1, [R12,#0x18]
STR             R12, [R0,#0xA4]
B               loc_10B920
AND             R0, R2, #0x1F
STR             R2, [R6,R4,LSL#2]
STR             R2, [R12]
ADD             R0, R5, R0,LSL#2
STR             R8, [R12,#0x18]
B               loc_10B8B0
LDR             R3, [R1,#0x18]
CMP             R3, #0
BEQ             loc_10B910
LDR             R0, [R3]
CMP             R0, R2
BEQ             loc_10B938
BLS             loc_10B900
STR             R2, [R6,R4,LSL#2]
STR             R2, [R12]
STR             R12, [R1,#0x18]
STR             R3, [R12,#0x18]
B               loc_10B920
MOV             R1, R3
LDR             R3, [R3,#0x18]
CMP             R3, #0
BNE             loc_10B8DC
STR             R12, [R1,#0x18]
STR             R2, [R12],#0x18
STR             R8, [R12]
STR             R2, [R6,R4,LSL#2]
ADD             R0, R2, #1
ADD             R4, R4, #1
CMP             R4, R9
STR             R0, [R7,#(dword_6D2434 - 0x6D2428)]
BLT             loc_10B830
POP             {R4-R10,PC}
ADD             R2, R2, #1
B               loc_10B874
