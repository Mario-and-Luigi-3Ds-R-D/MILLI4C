LDR             R1, =off_6CECB0
PUSH            {R4,LR}
SUB             SP, SP, #8
MOV             R4, R0
LDR             R2, [R1]
ADR             R1, aDataMl4000Sav; "data:/ML4_000.sav"
STR             R2, [R0,#0x1C]
BL              sub_116F48
CMP             R0, #0
BEQ             loc_1120EC
LDR             R1, =unk_6E8CD0
LDR             R0, =dword_6CECC4
MOV             R2, #0xC0
LDRB            R3, [R1,#(byte_6E8E74 - 0x6E8CD0)]
LDR             R1, [R0]
BIC             R1, R1, #0xFF
AND             R2, R2, R3,LSL#3
ORR             R1, R1, #0xC
ORR             R1, R1, R2
STR             R1, [R0]
LDR             R1, =dword_6E7CD0
LDR             R2, [R0,#(dword_6CECC8 - 0x6CECC4)]
LDR             R3, =dword_6E7CD0
LDR             R1, [R1,#(dword_6E80AC - 0x6E7CD0)]
MOV             R1, R1,LSL#18
MOVS            R1, R1,LSR#31
MOVNE           R1, #1
ORR             R1, R2, R1,LSL#1
LDR             R2, =dword_6E7CD0
STR             R1, [R0,#(dword_6CECC8 - 0x6CECC4)]
LDR             R2, [R2,#(dword_6E80A8 - 0x6E7CD0)]
MOV             R2, R2,LSL#15
MOVS            R2, R2,LSR#31
MOVNE           R2, #1
ORR             R2, R1, R2,LSL#2
STR             R2, [R0,#(dword_6CECC8 - 0x6CECC4)]
LDR             R3, [R3]
MOV             R1, #0
MOV             R3, R3,LSL#22
MOVS            R3, R3,LSR#31
MOVNE           R3, #1
ORR             R2, R2, R3
STR             R2, [R0,#(dword_6CECC8 - 0x6CECC4)]
STR             R1, [SP,#0x10+var_10]; float
STR             R1, [SP,#0x10+var_C]; int
LDR             R2, =dword_6CECC4; int
MOV             R3, #8; int
ADD             R1, R4, #0x60 ; '`'; int
MOV             R0, R4; int
BL              sub_10D458
MOV             R0, #1
ADD             SP, SP, #8
POP             {R4,PC}
