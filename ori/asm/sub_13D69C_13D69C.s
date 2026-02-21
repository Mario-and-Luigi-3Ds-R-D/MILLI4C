BIC             R7, R0, #0xFF000000
EOR             R0, R0, R3
BIC             R12, R3, #0xFF000000
ADD             R3, R7, R12
SUB             R3, R3, #0x3F00
AND             R0, R0, #0x80000000
SUB             R3, R3, #0xFE
TEQ             R2, #0
BEQ             loc_13D838
TEQ             R5, #0
BEQ             loc_13D7C0
PUSH            {R0,R8,R11,LR}
MOV             R0, R1,LSR#16
MOV             R6, R4,LSR#16
BIC             R8, R1, R0,LSL#16
MUL             R12, R0, R6
BIC             R7, R4, R6,LSL#16
MUL             R6, R8, R6
MUL             R8, R7, R8
MUL             R7, R0, R7
ADDS            R8, R8, R6,LSL#16
ADC             R12, R12, R6,LSR#16
MOV             R11, R2,LSR#16
ADDS            R8, R8, R7,LSL#16
MOV             R6, R5,LSR#16
ADC             R0, R12, R7,LSR#16
BIC             LR, R2, R11,LSL#16
MUL             R12, R11, R6
BIC             R7, R5, R6,LSL#16
MUL             R6, LR, R6
MUL             LR, R7, LR
MUL             R7, R11, R7
ADDS            LR, LR, R6,LSL#16
ADC             R12, R12, R6,LSR#16
MOV             R6, #0
ADDS            LR, LR, R7,LSL#16
ADC             R11, R12, R7,LSR#16
ADDS            R8, R8, R11
ADC             R0, R0, #0
ADDS            R11, R8, LR
ADCS            R8, R8, R0
ADC             R0, R0, #0
SUBS            R7, R1, R2
MOV             R1, #0
MVNCC           R1, R1
SUBCC           R6, R4, R5
SUBSNE          R12, R5, R4
MOV             R4, R7,LSR#16
MOVEQ           R1, #0
SUBCC           R6, R6, R7
BIC             R5, R7, R4,LSL#16
MOV             R7, R12,LSR#16
MVNCC           R1, R1
MLA             R2, R4, R7, R6
BIC             R12, R12, R7,LSL#16
MUL             R7, R5, R7
MUL             R6, R12, R5
MUL             R12, R4, R12
ADDS            R6, R6, R7,LSL#16
ADC             R2, R2, R7,LSR#16
ADDS            R6, R6, R12,LSL#16
ADC             R2, R2, R12,LSR#16
ADDS            R6, R11, R6
ORR             LR, LR, LR,LSL#2
ADCS            R2, R8, R2
ADCS            R1, R0, R1
ORR             R6, R6, LR,LSR#2
POPMI           {R0,R8,R11,PC}
ADDS            R6, R6, R6
ADCS            R2, R2, R2
ADC             R1, R1, R1
SUB             R3, R3, #1
POP             {R0,R8,R11,PC}
MOV             R5, R4,LSR#16
MOV             R7, R1,LSR#16
BIC             R6, R4, R5,LSL#16
BIC             R12, R1, R7,LSL#16
MUL             R4, R5, R7
MUL             R7, R6, R7
MUL             R1, R12, R6
MUL             R12, R5, R12
ADDS            R1, R1, R7,LSL#16
ADC             R4, R4, R7,LSR#16
MOV             R7, R2,LSR#16
ADDS            R1, R1, R12,LSL#16
ADC             R4, R4, R12,LSR#16
BIC             R12, R2, R7,LSL#16
MUL             R2, R5, R7
MUL             R7, R6, R7
MUL             R6, R12, R6
MUL             R12, R5, R12
ADDS            R6, R6, R7,LSL#16
ADC             R2, R2, R7,LSR#16
ADDS            R6, R6, R12,LSL#16
ADC             R5, R2, R12,LSR#16
ADDS            R2, R5, R1
ADCS            R1, R4, #0
BXMI            LR
ADDS            R6, R6, R6
ADCS            R2, R2, R2
ADC             R1, R1, R1
SUB             R3, R3, #1
BX              LR
TEQ             R5, #0
BEQ             loc_13D8B8
MOV             R2, R1,LSR#16
MOV             R7, R4,LSR#16
BIC             R6, R1, R2,LSL#16
BIC             R12, R4, R7,LSL#16
MUL             R1, R2, R7
MUL             R7, R6, R7
MUL             R4, R12, R6
MUL             R12, R2, R12
ADDS            R4, R4, R7,LSL#16
ADC             R1, R1, R7,LSR#16
MOV             R7, R5,LSR#16
ADDS            R4, R4, R12,LSL#16
ADC             R1, R1, R12,LSR#16
BIC             R12, R5, R7,LSL#16
MUL             R5, R2, R7
MUL             R7, R6, R7
MUL             R6, R12, R6
MUL             R12, R2, R12
ADDS            R6, R6, R7,LSL#16
ADC             R5, R5, R7,LSR#16
ADDS            R6, R6, R12,LSL#16
ADC             R2, R5, R12,LSR#16
ADDS            R2, R2, R4
ADCS            R1, R1, #0
BXMI            LR
ADDS            R6, R6, R6
ADCS            R2, R2, R2
ADC             R1, R1, R1
SUB             R3, R3, #1
BX              LR
MOV             R5, R4,LSR#16
MOV             R7, R1,LSR#16
BIC             R6, R4, R5,LSL#16
BIC             R12, R1, R7,LSL#16
MUL             R1, R5, R7
MUL             R7, R6, R7
MUL             R2, R12, R6
MOV             R6, #0
MUL             R12, R5, R12
ADDS            R2, R2, R7,LSL#16
ADC             R1, R1, R7,LSR#16
ADDS            R2, R2, R12,LSL#16
ADCS            R1, R1, R12,LSR#16
BXMI            LR
ADDS            R2, R2, R2
ADC             R1, R1, R1
SUB             R3, R3, #1
BX              LR
