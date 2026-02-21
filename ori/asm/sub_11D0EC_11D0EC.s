LDR             R0, =dword_6D4170
LDR             R1, [R0]
CMP             R1, #0
BXNE            LR
PUSH            {R4-R10,LR}
SUB             SP, SP, #8
MOV             R1, #1
STR             R1, [R0]
MOV             R0, SP
BL              sub_1196D0
LDRD            R0, R1, [SP,#0x28+var_28]
LDR             R3, =0xF4240
MOV             R12, #0
SUBS            R2, R0, #0
SBC             R1, R1, #0
UMULL           R0, LR, R2, R3
ADD             SP, SP, #8
MLA             R1, R1, R3, LR
MOV             R3, #0
MLA             R1, R2, R12, R1
LDR             R12, =0x26D694B3
MOV             R4, R3
LDR             LR, =0x112E0BE8
MOV             R2, R1,ASR#31
UMULL           R8, R7, R0, R12
UMULL           R8, R10, R1, R12
MLA             R7, R3, R12, R7
MLA             R12, R2, R12, R10
MLA             R7, R0, R4, R7
MLA             R4, R1, R3, R12
ADDS            R12, R8, R7
UMULL           R6, R7, R0, LR
ADC             R4, R4, R3
MOV             R9, R3
MOV             R5, R3
MLA             R3, R3, LR, R7
ADDS            R12, R12, R6
MLA             R0, R0, R9, R3
UMULL           R3, R7, R1, LR
ADC             R0, R0, R5
MLA             R2, R2, LR, R7
MOV             R12, R0,ASR#31
MLA             LR, R1, R9, R2
ADDS            R0, R0, R4
ADC             R12, R12, R4,ASR#31
ADDS            R2, R3, R0
ADC             R0, LR, R12
POP             {R4-R10,LR}
MOV             R2, R2,LSR#26
MOV             R1, R1,LSR#31
ORR             R0, R2, R0,LSL#6
ADDS            R1, R1, R0
LDR             R0, =dword_7097EC
B               loc_122850
