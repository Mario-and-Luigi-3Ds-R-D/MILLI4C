PUSH            {R4-R6,LR}
MOV             R4, R3
MOV             R5, R2
MOV             R3, R1
MOV             R2, R0
CMP             R4, #0
MOVNE           R12, R4
MOVEQ           R12, R5
CLZ             LR, R12
ADD             R0, LR, #1
MOV             R12, R12,LSL R0
RSBSNE          LR, LR, #0x3F ; '?'
RSBSEQ          LR, LR, #0x1F
BMI             loc_127D8C
CMP             R3, #0
CLZNE           R1, R3
CLZEQ           R1, R2
RSBSNE          R1, R1, #0x3F ; '?'
RSBSEQ          R1, R1, #0x1F
SUBS            R6, R1, LR
BMI             loc_127DA0
RSBSPL          R0, R6, #4
BPL             loc_127DAC
SUB             R0, LR, #0x20 ; ' '
CMP             R0, #4
ORRLE           R12, R12, R5,LSR R0
MOV             R12, R12,LSR#28
ADR             R1, dword_127DEC
LDR             R12, [R1,R12,LSL#2]
CMP             LR, #0x1F
SUBHI           LR, LR, #0x20 ; ' '
RSB             R6, LR, #0x20 ; ' '
BHI             loc_127CC4
UMULL           R0, R1, R12, R5
MOV             R1, R1,LSL R6
ORR             R1, R1, R0,LSR LR
MOV             R0, R0,LSL R6
RSBS            R0, R0, #0
RSC             R1, R1, #0
UMULL           R0, R1, R12, R1
ADD             R12, R12, R1
UMULL           R0, R1, R12, R5
MOV             R1, R1,LSL R6
ORR             R1, R1, R0,LSR LR
MOV             R0, R0,LSL R6
RSBS            R0, R0, #0
RSC             R1, R1, #0
CMP             R3, #0
UMULL           R0, R1, R12, R1
ADD             R12, R12, R1
BEQ             loc_127C28
UMULL           R0, R1, R12, R5
MOV             R1, R1,LSL R6
ORR             R1, R1, R0,LSR LR
MOV             R0, R0,LSL R6
RSBS            R0, R0, #0
RSC             R1, R1, #0
UMULL           R0, R1, R12, R1
ADD             R12, R12, R1
UMULL           R1, R0, R12, R2
MOV             R1, #0
UMLAL           R0, R1, R12, R3
MOV             R0, R0,LSR LR
ORR             R0, R0, R1,LSL R6
UMULL           R6, R4, R0, R5
MOV             R1, R1,LSR LR
MLA             R4, R1, R5, R4
SUBS            R2, R2, R6
SBC             R3, R3, R4
CMP             R3, #1
CMPCC           R2, R5
POPCC           {R4-R6,PC}
UMULL           R4, R6, R12, R2
MOV             R4, #0
UMLAL           R6, R4, R12, R3
MOV             R3, #0
RSB             R12, LR, #0x20 ; ' '
MOV             R6, R6,LSR LR
ORR             R6, R6, R4,LSL R12
MOV             R4, R4,LSR LR
UMULL           LR, R12, R6, R5
ADDS            R0, R0, R6
ADC             R1, R1, R4
SUB             R2, R2, LR
CMP             R2, R5
POPCC           {R4-R6,PC}
ADDS            R0, R0, #1
ADC             R1, R1, #0
SUB             R2, R2, R5
SUBS            R12, R2, R5
MOVCS           R2, R12
ADCS            R0, R0, #0
ADC             R1, R1, #0
SUBS            R12, R2, R5
MOVCS           R2, R12
ADCS            R0, R0, #0
ADC             R1, R1, #0
POP             {R4-R6,PC}
UMULL           R1, R0, R12, R5
MOV             R1, #0
UMLAL           R0, R1, R12, R4
MOV             R1, R1,LSL R6
ORR             R1, R1, R0,LSR LR
MOV             R0, R0,LSL R6
RSBS            R0, R0, #0
RSC             R1, R1, #0
UMULL           R0, R1, R12, R1
ADD             R12, R12, R1
UMULL           R1, R0, R12, R5
MOV             R1, #0
UMLAL           R0, R1, R12, R4
MOV             R1, R1,LSL R6
ORR             R1, R1, R0,LSR LR
MOV             R0, R0,LSL R6
RSBS            R0, R0, #0
RSC             R1, R1, #0
UMULL           R0, R1, R12, R1
ADD             R12, R12, R1
SUB             R12, R12, #1
UMULL           R1, R0, R12, R2
MOV             R1, #0
UMLAL           R0, R1, R12, R3
MOV             R0, R1,LSR LR
UMULL           R6, R1, R0, R5
SUBS            R2, R2, R6
MLA             R1, R0, R4, R1
SBC             R3, R3, R1
CMP             R3, R4
CMPEQ           R2, R5
MOVCC           R1, #0
POPCC           {R4-R6,PC}
UMULL           R6, R1, R12, R2
MOV             R6, #0
UMLAL           R1, R6, R12, R3
MOV             R1, #0
MOV             R6, R6,LSR LR
UMULL           LR, R12, R6, R5
ADD             R0, R0, R6
SUBS            R2, R2, LR
MLA             LR, R6, R4, R12
SBC             R3, R3, LR
CMP             R3, R4
CMPEQ           R2, R5
POPCC           {R4-R6,PC}
ADD             R0, R0, #1
SUBS            R2, R2, R5
SBC             R3, R3, R4
POP             {R4-R6,PC}
PUSH            {R2,R3}
MOV             R1, #0
MOV             R0, #0
BL              sub_1381D4
POP             {R2-R6,PC}
MOV             R1, #0
MOV             R0, #0
POP             {R4-R6,PC}
RSB             LR, R6, #0x20 ; ' '
MOV             R0, #0
MOV             R1, #0
MOV             R4, R4,LSL R6
ORR             R4, R4, R5,LSR LR
MOV             R5, R5,LSL R6
SUBS            LR, R2, R5
SBCS            R12, R3, R4
ADC             R0, R0, R0
MOVCS           R3, R12
MOVCS           R2, LR
SUBS            R6, R6, #1
POPCC           {R4-R6,PC}
MOVS            R4, R4,LSR#1
MOV             R5, R5,RRX
B               loc_127DC4
