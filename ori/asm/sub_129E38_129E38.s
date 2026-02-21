PUSH            {R4-R11,LR}
SUB             SP, SP, #0xC
MOV             R6, R2
MOV             R9, R0
MOV             R7, R3
LDR             R0, =dword_6D2460
LDR             R1, [R0]
LDR             R0, [R0,#(dword_6D2464 - 0x6D2460)]
EOR             R1, R1, R2
EOR             R0, R0, R3
ORRS            R0, R0, R1
BEQ             loc_129E94
LDR             R0, =dword_6D2458
LDR             R1, [R0]
LDR             R0, [R0,#(dword_6D245C - 0x6D2458)]
EOR             R1, R1, R6
EOR             R0, R0, R7
ORRS            R0, R0, R1
BEQ             loc_129E94
SVC             0x28 ; '('
MOV             R4, R0
MOV             R5, R1
B               loc_129E9C
MOV             R4, #0
MOV             R5, R4
LDR             R8, =0xBAD34AEE
NOP
BL              sub_1233A8
MOV             R1, SP
MOV             R0, R9
BL              sub_123868
MOV             R2, PC
MOVS            R1, R0,LSR#31
MOVNE           R1, R2
BLNE            sub_1215E4
NOP
NOP
BL              sub_123520
LDRB            R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_129EE8
ADD             SP, SP, #0xC
MOV             R0, #1
POP             {R4-R11,PC}
LDR             R0, =dword_6D2460
LDR             R1, [R0,#(dword_6D2464 - 0x6D2460)]
LDR             R2, [R0]
EOR             R1, R1, R7
EOR             R0, R6, R2
ORRS            R0, R0, R1
BEQ             loc_129F84
LDR             R0, =dword_6D2458
LDRD            R2, R3, [R0]
EOR             R0, R6, R2
EOR             R1, R7, R3
ORRS            R0, R0, R1
BEQ             loc_129F90
SVC             0x28 ; '('
MOV             R2, R0
MOV             R0, R1
SUBS            R1, R2, R4
MOV             R11, #0
SBC             R0, R0, R5
MOV             LR, R11
UMULL           R10, R3, R1, R8
MOV             R2, #3
STMEA           SP, {R11,LR}
UMULL           R10, LR, R0, R2
LDR             LR, [SP,#0x30+var_2C]
MOV             R12, R11
ADDS            R3, R3, R12
ADC             R10, R10, LR
UMULL           R12, LR, R0, R8
MOV             R11, R0,ASR#31
MLA             LR, R11, R8, LR
LDR             R11, [SP,#0x30+var_30]
MLA             R11, R0, R11, LR
UMLAL           R12, R11, R2, R1
ADDS            R0, R12, R3
ADC             R1, R11, R10
SUBS            R0, R6, R0
SBCS            R0, R7, R1
BGE             loc_129F90
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R11,PC}
LDR             R0, =0x989680
MOV             R1, #0
BL              sub_121140
NOP
NOP
B               loc_129EA0
