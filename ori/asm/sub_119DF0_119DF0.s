NOP
PUSH            {R4-R6,LR}
LDR             R0, =dword_70E3CC
BL              sub_13273C
LDR             R4, =byte_6D4A60
LDRB            R0, [R4]
CMP             R0, #0
BEQ             loc_119E1C
POP             {R4-R6,LR}
LDR             R0, =dword_70E3CC
B               sub_1327BC
MOV             R5, #1
STRB            R5, [R4]
LDRB            R0, [R4,#(byte_6D4A63 - 0x6D4A60)]
CMP             R0, #0
BNE             loc_119E38
BL              sub_119B9C
STRB            R5, [R4,#(byte_6D4A63 - 0x6D4A60)]
LDR             R0, [R4,#(off_6D4A64 - 0x6D4A60)]; "gsp::Gpu" ...
MOV             R6, R0
BL              sub_300168
MOV             R2, R0
LDR             R0, =dword_6D4A70
MOV             R3, #0
MOV             R1, R6
BL              sub_119C04
LDR             R0, [R4,#(dword_6D4A70 - 0x6D4A60)]
STR             R0, [R4,#(dword_6D4A74 - 0x6D4A60)]
LDR             R0, =dword_69A374
LDRSB           R2, [R4,#(byte_6D4A62 - 0x6D4A60)]
LDR             R1, [R0]
LDR             R0, =dword_6D4A74
BL              sub_123008
LDR             R0, =dword_6CC580
MOV             R2, #0
STR             R2, [R0]
MOV             R1, #0xFFFFFFFF
STR             R1, [R0,#(dword_6CC588 - 0x6CC580)]
STR             R2, [R0,#(dword_6CC584 - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5AC - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5B0 - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5B4 - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5B8 - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5BC - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5C0 - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5C4 - 0x6CC580)]
STRB            R2, [R0,#(byte_6CC5C8 - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5CC - 0x6CC580)]
STRB            R2, [R0,#(byte_6CC5D0 - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5D8 - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5DC - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5E4 - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5E8 - 0x6CC580)]
STR             R2, [R0,#(dword_6CC5EC - 0x6CC580)]
STRB            R5, [R0,#(byte_6CC5F0 - 0x6CC580)]
STR             R0, [R4,#(dword_6D4A7C - 0x6D4A60)]
BL              sub_122BF4
POP             {R4-R6,LR}
LDR             R0, =dword_70E3CC
B               sub_1327BC
