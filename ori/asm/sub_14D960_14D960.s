PUSH            {R4-R10,LR}
MOV             R4, R0
MOVS            R7, R2
MOV             R8, R1
LDR             R0, =off_6CE970
VPUSH           {D8}
LDRHEQ          R7, [R4,#0x10]
LDR             R0, [R0]
MOV             R1, R7
BL              sub_52F368
MOV             R6, R0
MOV             R2, #1
MOV             R1, #3
ADD             R0, R0, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
ADD             R5, R4, #0x300
BNE             loc_14D9F0
MOV             R2, #1
MOV             R1, #2
ADD             R0, R6, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
BNE             loc_14D9F0
MOV             R2, #1
MOV             R1, #4
ADD             R0, R6, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
BNE             loc_14D9F0
MOV             R2, #1
MOV             R1, #6
ADD             R0, R6, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
BEQ             loc_14DAD4
MOV             R7, #0
MOV             R2, #1
MOV             R1, #3
ADD             R0, R6, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
NOP
BNE             loc_14DA2C
MOV             R2, #1
MOV             R1, #2
ADD             R0, R6, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
NOP
BEQ             loc_14DA48
CMP             R8, #0
MOVEQ           R7, #0x27 ; '''
BEQ             loc_14DA98
CMP             R8, #1
CMPNE           R8, #2
MOVEQ           R7, #0x29 ; ')'
B               loc_14DA98
MOV             R2, #1
MOV             R1, #4
ADD             R0, R6, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
NOP
BEQ             loc_14DA80
CMP             R8, #0
MOVEQ           R7, #0x2B ; '+'
BEQ             loc_14DA98
CMP             R8, #1
CMPNE           R8, #2
MOVEQ           R7, #0x2C ; ','
B               loc_14DA98
MOV             R2, #1
MOV             R1, #6
ADD             R0, R6, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
MOVNE           R7, #0x26 ; '&'
LDRB            R2, [R6,#0x495]
MOV             R0, #0xC000
VLDR            S0, =0.0
CMP             R2, #0
ORR             R1, R0, R0,ASR#15
MOVNE           R0, R1
STRH            R0, [R5,#0xBA]
MOV             R2, #0
STRB            R7, [R4,#0x3BC]
MOV             R0, #1
STRB            R2, [R4,#0x3BD]
STRB            R0, [R4,#0x3B8]
VSTR            S0, [R4,#0x3DC]
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R9, =0x1001
VLDR            S16, =0.5
ADD             R0, R4, #0x300
CMP             R8, #2
ADD             R0, R0, #0xBA
BEQ             loc_14DB68
LDR             R1, =unk_656562
MOV             R5, #8
MOV             R2, #0x20 ; ' '
BL              sub_1103A4
CMP             R7, R9
MOVEQ           R2, #1
MOVNE           R2, #0
STRB            R5, [R4,#0x3B8]
CMP             R8, #0
VSTR            S16, [R4,#0x3DC]
MOV             R0, #0
BEQ             loc_14DB24
CMP             R8, #1
MOVEQ           R0, #5
ORRS            R1, R2, R0
MOVNE           R1, #0
MOVNE           R3, #8
BEQ             loc_14DACC
ADD             R12, R4, R1,LSL#2
ADD             R5, R12, #0x300
SUBS            R3, R3, #1
LDRH            R6, [R5,#0xBA]
ADD             R1, R1, #1
ADD             R6, R6, R2
STRH            R6, [R5,#0xBA]
LDRB            R5, [R12,#0x3BC]
ADD             R5, R5, R0
STRB            R5, [R12,#0x3BC]
BNE             loc_14DB34
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R1, =unk_656582
MOV             R6, #4
MOV             R2, #0x10
BL              sub_1103A4
STRB            R6, [R4,#0x3B8]
CMP             R7, R9
VSTR            S16, [R4,#0x3DC]
BNE             loc_14DACC
LDRH            R0, [R5,#0xBA]
LDRH            R1, [R5,#0xBE]
LDRH            R3, [R5,#0xC2]
LDRH            R2, [R5,#0xC6]
ADD             R0, R0, #1
ADD             R1, R1, #1
STRH            R0, [R5,#0xBA]
ADD             R3, R3, #1
STRH            R1, [R5,#0xBE]
ADD             R2, R2, #1
STRH            R3, [R5,#0xC2]
STRH            R2, [R5,#0xC6]
VPOP            {D8}
POP             {R4-R10,PC}
