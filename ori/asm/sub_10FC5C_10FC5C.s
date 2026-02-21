LDR             R0, =off_6D4970; "APT:U" ...
PUSH            {R4-R6,LR}
LDR             R4, =dword_6D49C0
LDR             R1, [R0,#(dword_6D4974 - 0x6D4970)]
CMP             R1, #0
LDR             R1, [R0]; "APT:U" ...
STREQ           R1, [R0,#(dword_6D4974 - 0x6D4970)]
LDR             R1, [R4]
CMP             R1, #0
LDRNE           R0, =0xE0A0CFF9
BNE             loc_10FCA8
LDR             R0, [R0,#(dword_6D4974 - 0x6D4970)]
MOV             R5, R0
BL              sub_300168
MOV             R2, R0
MOV             R3, #0
MOV             R1, R5
MOV             R0, R4
BL              sub_119C04
MOV             R4, R0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
MOV             R0, R4
POP             {R4-R6,PC}
