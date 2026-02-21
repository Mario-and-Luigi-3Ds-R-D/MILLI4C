PUSH            {R4-R6,LR}
MOV             R6, #0
STR             R6, [R0]
STR             R6, [R0,#4]
STR             R6, [R0,#8]
STR             R6, [R0,#0xC]
STR             R6, [R0,#0x10]
STR             R6, [R0,#0x14]
STR             R6, [R0,#0x18]
STR             R6, [R0,#0x1C]
STR             R6, [R0,#0x20]
LDR             R4, =off_6ACF94
STR             R6, [R0,#0x24]
STR             R6, [R0,#0x28]
STR             R6, [R0,#0x2C]
STR             R6, [R0,#0x30]
ADD             R5, R4, #4
ADD             R1, R4, #8
STR             R6, [R0,#0x34]
BL              sub_1203D4
LDR             R1, [R5]; off_63D180
STR             R1, [R0]
LDR             R1, [R1,#(dword_63D150 - 0x63D180)]
LDR             R2, [R5,#(off_6ACFB4 - 0x6ACF98)]; off_63D180
STR             R2, [R0,R1]
LDR             R1, [R4]; off_6ACFEC
STR             R1, [R0]
LDR             R1, [R1,#(dword_6ACFBC - 0x6ACFEC)]
LDR             R2, [R4,#(off_6ACFB8 - 0x6ACF94)]; off_6ACFEC
STR             R2, [R0,R1]
STR             R6, [R0,#0x38]
POP             {R4-R6,PC}
