PUSH            {R4-R11,LR}
MOV             R5, R0
MOV             R8, #0
SUB             SP, SP, #0x4C; float
MOV             R0, R8
ADD             R1, R5, R0,LSL#2
LDR             R1, [R1,#0x40]
CMP             R1, #0
BEQ             loc_156948
LDRB            R1, [R1,#0x3F5]
ADD             R0, R0, #1
CMP             R1, #0
ADDEQ           R1, R8, #1
ANDEQ           R8, R1, #0xFF
CMP             R0, #0x20 ; ' '
BCC             loc_15691C
LDR             R11, =off_6CE970
MOV             R9, #0
LDR             R0, [R11]
BL              sub_52FC34
LDR             R6, =unk_6E1FD0
LDR             R1, [R5,#0x20]
LDR             R2, [R5,#0x28]
MOV             R4, R0
VLDR            S0, [R6,#(flt_6E2320 - 0x6E1FD0)]
VLDR            S1, =0.0
VSTR            S0, [SP,#0x70+var_70]
STR             R1, [SP,#0x70+var_6C]; float
VSTR            S1, [SP,#0x70+var_68]
BIC             R12, R7, #0xFF
ADD             R0, R5, #0x800
ADD             R0, R0, #0x16C; int
STR             R2, [SP,#0x70+var_64]; float
MOV             R3, R4; int
ADD             R2, R5, #0x20 ; ' '; int
MOV             R1, R4; int
MOV             R7, R0
STR             R12, [SP,#0x70+var_60]
BL              sub_622D4C
MOV             R10, #0
STRH            R10, [SP,#0x70+var_30]
STRB            R10, [SP,#0x70+var_2E]
STRB            R10, [SP,#0x70+var_2C]
STRB            R10, [SP,#0x70+var_2D]
STRH            R10, [SP,#0x70+var_2A]
LDRB            R0, [R7,#0x80]
CMP             R0, #0
BEQ             loc_1569E0
LDRH            R1, [R7]
LDR             R0, [R11]
BL              sub_52F508
ADD             R0, R0, #0x100
LDRH            R0, [R0,#0x48]
STRH            R0, [SP,#0x70+var_30]
LDRB            R0, [R4,#0x1E6]
CMP             R0, #1
LDREQ           R0, [R6,#(dword_6E232C - 0x6E1FD0)]
BEQ             loc_156A2C
CMP             R0, #3
LDRNE           R0, [R6,#(dword_6E2324 - 0x6E1FD0)]
ANDNE           R7, R0, #0xFF
LDREQ           R0, [R6,#(dword_6E2328 - 0x6E1FD0)]
BEQ             loc_156A2C
MOV             R4, #0
ADD             R11, SP, #0x70+var_30
ADD             R6, R5, R4,LSL#2
LDR             R0, [R6,#0x40]
CMP             R0, #0
BEQ             loc_156AA4
LDRB            R0, [R0,#0x3F5]
CMP             R0, #0
BEQ             loc_156A34
B               loc_156A98
AND             R7, R0, #0xFF
B               loc_156A04
STR             R10, [SP,#0x70+var_54]
BL              sub_4635D8
LDR             R1, [R0,#4]
LDR             R2, [R0]
LDR             R0, [R0,#8]
STR             R1, [SP,#0x70+var_4C]
STR             R2, [SP,#0x70+var_50]
STR             R0, [SP,#0x70+var_48]
STRB            R10, [SP,#0x70+var_34]
STRH            R10, [SP,#0x70+var_44]
STR             R10, [SP,#0x70+var_40]
STRH            R10, [SP,#0x70+var_3C]
STRB            R10, [SP,#0x70+var_36]
STRB            R10, [SP,#0x70+var_33]
MOV             R3, R8
MOV             R2, R9
ADD             R1, SP, #0x70+var_54
MOV             R0, R5
STMEA           SP, {R7,R11}
BL              sub_1575B0
LDR             R0, [R6,#0x40]
ADD             R1, SP, #0x70+var_54
BL              sub_3123CC
ADD             R0, R9, #1
AND             R9, R0, #0xFF
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BCC             loc_156A0C
ADD             SP, SP, #0x4C ; 'L'
POP             {R4-R11,PC}
