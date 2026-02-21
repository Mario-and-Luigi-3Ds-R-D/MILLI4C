PUSH            {R4-R8,LR}
LDR             R7, =dword_6EB9D4
LDR             R4, [R7]
LDR             R0, [R7,#(dword_6EB9D8 - 0x6EB9D4)]
CMP             R0, R4
BEQ             locret_108E74
LDR             R5, [R4]
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_108DC4
BL              sub_112D3C
LDR             R1, [R5,#4]
NOP
BL              sub_113630
MOV             R6, R0
NOP
BL              sub_112D3C
LDR             R1, [R5,#4]
MOV             R2, #0xFFFFFFFF
BL              sub_123EE8
LDRB            R1, [R5]
CMP             R1, #0
CMPNE           R6, #0
BEQ             loc_108DC4
CMP             R0, #0
MOVEQ           R0, R5
BLEQ            sub_10D4F0
LDR             R0, [R4]
LDR             R0, [R0,#4]
CMP             R0, #0
ADDNE           R4, R4, #4
BNE             loc_108D64
LDR             R5, =dword_6EB9D4
MOV             R1, R4
LDR             R0, [R5,#(dword_6EB9D8 - 0x6EB9D4)]
LDR             R2, [R5]
CMP             R2, R0
BEQ             loc_108D64
ADD             R2, R1, #4
CMP             R0, R2
BEQ             loc_108E64
SUB             R12, R0, R2
MOV             R3, R12,ASR#2
CMP             R3, #0
BLE             loc_108E64
CMP             R0, R2
MOV             R3, #0
MOVLS           R0, #0
BLS             loc_108E38
MOV             R0, R12,LSL#29
MOV             R0, R0,LSR#31
CMP             R0, #1
BNE             loc_108E38
LDR             R6, [R2]
MOV             R3, #1
STR             R6, [R1]
CMP             R0, R12,ASR#2
BGE             loc_108E64
LDR             R6, [R2,R3,LSL#2]
ADD             R0, R0, #2
CMP             R0, R12,ASR#2
STR             R6, [R1,R3,LSL#2]
ADD             R3, R3, #1
LDR             R6, [R2,R3,LSL#2]
STR             R6, [R1,R3,LSL#2]
ADD             R3, R3, #1
BLT             loc_108E40
LDR             R0, [R5,#(dword_6EB9D8 - 0x6EB9D4)]
SUB             R0, R0, #4
STR             R0, [R5,#(dword_6EB9D8 - 0x6EB9D4)]
B               loc_108D64
POP             {R4-R8,PC}
