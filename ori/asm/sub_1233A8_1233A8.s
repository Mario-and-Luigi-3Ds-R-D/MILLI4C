LDR             R0, =dword_6D4978
PUSH            {R4,R5,LR}
SUB             SP, SP, #0x14
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_1233EC
MOV             R2, #0xFFFFFFFF
STR             R0, [SP,#0x20+var_18]
STR             R2, [SP,#0x20+var_20]
STR             R2, [SP,#0x20+var_1C]
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x20+var_18
ADD             R0, SP, #0x20+var_14
BL              sub_120250
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
LDR             R0, =off_6D4970; "APT:U" ...
LDR             R5, =dword_6D49C0
LDR             R1, [R0,#(dword_6D4974 - 0x6D4970)]
CMP             R1, #0
LDR             R1, [R0]; "APT:U" ...
STREQ           R1, [R0,#(dword_6D4974 - 0x6D4970)]
LDR             R1, [R5]
CMP             R1, #0
LDRNE           R0, =0xE0A0CFF9
BNE             loc_123434
LDR             R0, [R0,#(dword_6D4974 - 0x6D4970)]
MOV             R4, R0
BL              sub_300168
MOV             R2, R0
MOV             R3, #0
MOV             R1, R4
MOV             R0, R5
BL              sub_119C04
MOV             R1, PC
MOVS            R2, R0,LSR#31
BEQ             loc_12344C
ADD             SP, SP, #0x14
POP             {R4,R5,LR}
B               sub_1215E4
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
