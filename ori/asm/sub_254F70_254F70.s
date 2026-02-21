PUSH            {R4-R8,LR}
MOV             R4, R0
SUB             SP, SP, #0x10
LDR             R8, =off_6CE970
LDR             R1, =0x45C
MOV             R2, #0
LDR             R0, [R8]
BL              sub_52F9B4
LDR             R0, [R8]
MOV             R3, #0
ADD             R5, R4, #0x5C ; '\'
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x21E4C
MOV             R2, R3
BL              sub_10A358
MOVS            R6, R0
BEQ             loc_254FD0
ADD             R0, R4, #0x90
LDR             R0, [R0,#0x24]
MOV             R1, R0
LDR             R2, [R4,#0x8C]
MOV             R0, R6
BL              sub_257664
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_255190
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_254FFC
BL              sub_257C2C
NOP
NOP
BL              sub_300FD4
MOV             R0, R4
STR             R6, [R5]
BL              sub_253A54
MOV             R0, R4
NOP
BL              sub_254C4C
LDR             R0, [R8]
MOV             R3, #0
ADD             R6, R4, #0x74 ; 't'
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x98
BL              sub_10A358
MOVS            R2, R0
MOVEQ           R7, #0
BEQ             loc_25506C
LDR             R0, =off_6CE098
LDR             R1, [R0]
LDR             R0, =0x129EC
LDR             R0, [R0,R1]
LDR             R1, [R1,#0x8C]
LDR             R0, [R0]
VLDR            S0, [R1,#0x184]
VLDR            S1, [R0,#0x90]
MOV             R0, R2
VADD.F32        S0, S1, S0
BL              sub_25B54C
MOV             R7, R0
LDR             R1, [R6,#8]
ADD             R0, R6, #4
CMP             R1, R0
BNE             loc_2551AC
LDR             R5, [R6]
CMP             R5, #0
BEQ             loc_2550E8
LDR             R0, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R0, [R5,#0x5C]!
MOV             R2, #0x1C
ADD             R0, R5, #0x18
BLX             sub_1009D8
MOV             R0, R5
NOP
NOP
SUB             R5, R0, #0x5C ; '\'
LDR             R0, =off_6B7BFC
LDR             R1, =sub_5A2F60
MOV             R3, #1
STR             R0, [R5,#4]!
MOV             R2, #0x28 ; '('
ADD             R0, R5, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R5
NOP
NOP
SUB             R0, R0, #4
NOP
BL              sub_300FD4
STR             R7, [R6]
LDR             R2, [R4,#0x8C]
MOV             R3, #0
ADD             R2, R2, #0x3F4
LDM             R2, {R0-R2}
STMEA           SP, {R0-R2}
VMOV            S0, R2
LDR             R0, =0x129EC
LDR             R1, [R4,#0x8C]
MOV             R2, R3
LDR             R0, [R0,R4]
VLDR            S1, [R1,#0x184]
ADD             R4, R4, #0x80
LDR             R0, [R0]
VLDR            S2, [R0,#0x90]
VADD.F32        S1, S2, S1
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x28+var_20]
LDR             R0, [R8]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x8A4
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_255158
MOV             R1, SP
BL              sub_2572CC
MOV             R5, R0
LDR             R1, [R4,#8]
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_2551C8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_255184
BL              sub_257494
NOP
NOP
BL              sub_300FD4
STR             R5, [R4]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_254FFC
LDR             R2, [R6,#4]
ADD             R0, R6, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
B               loc_2550E8
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_255184
