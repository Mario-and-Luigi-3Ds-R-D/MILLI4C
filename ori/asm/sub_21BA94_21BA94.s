PUSH            {R4-R9,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
MOV             R7, #0
LDRSB           R1, [R0,#0xC]
LDR             R0, [R0,#8]
LDR             R8, =off_6CE970
CMP             R1, #0
LDR             R6, [R0,#0x18]
BEQ             loc_21BAD0
CMP             R1, #1
BEQ             loc_21BB98
CMP             R1, #0xA
BNE             loc_21BBF4
B               loc_21BBD0
MOV             R0, R6
BL              sub_5C5590
LDR             R1, [R4,#8]
MOV             R9, R0
MOV             R5, #5
MOV             R0, #4
LDRB            R1, [R1,#0x495]
CMP             R1, #0
MOVNE           R5, R0
MOV             R0, R6
BL              sub_5C5724
SUB             R0, R0, #1
UXTH            R0, R0
CMP             R5, R0
MOVLS           R0, R5
CMP             R9, R0
BCC             loc_21BBF4
LDR             R0, =0xFFE683CC
LDR             R12, [R8]
LDR             R2, =0x3001E
MOV             R3, #0
MOV             R1, R6
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, =dword_6E1330
LDR             R5, [R8]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_21BB74
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_21BB74
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R0, #7
STMEA           SP, {R0,R7}
LDR             R3, =flt_711FE4
MOV             R2, R6
MOV             R1, #0
MOV             R0, R5
BL              sub_52AE1C
MOV             R0, #1
STRB            R0, [R4,#0xC]
MOV             R0, R6
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_21BBF4
MOV             R2, #0
STR             R7, [SP,#0x28+var_28]
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_4E3CA0
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R9,PC}
LDR             R0, [R8]
BL              sub_5EE958
CMP             R0, #0
NOP
BEQ             loc_21BBF4
MOV             R1, #0
MOV             R0, R6
BL              sub_14D728
STRB            R7, [R4,#0xC]
ADD             SP, SP, #0xC
MOV             R0, #1
POP             {R4-R9,PC}
