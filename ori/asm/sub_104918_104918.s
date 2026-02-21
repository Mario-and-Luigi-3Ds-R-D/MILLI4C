PUSH            {R4,LR}
BL              sub_1078E8
ADD             R0, R0, R0,LSL#2
LDR             R4, =byte_6D2578
MOV             R0, R0,LSL#1
MOV             R1, R0,ASR#31
STRD            R0, R1, [R4,#(dword_6D2590 - 0x6D2578)]
BL              sub_107870
CMP             R0, #0
MOV             R0, #1
STRBNE          R0, [R4,#(byte_6D2579 - 0x6D2578)]
LDRB            R1, [R4,#(byte_6D2579 - 0x6D2578)]
CMP             R1, #0
BNE             loc_104960
LDR             R1, [R4,#(dword_6D2594 - 0x6D2578)]
LDR             R2, [R4,#(dword_6D2590 - 0x6D2578)]
ORRS            R1, R1, R2
BEQ             locret_104964
STRB            R0, [R4]
POP             {R4,PC}
