BIC             R12, R0, #0xFF000000
EOR             R0, R0, R3
BIC             R7, R3, #0xFF000000
SUB             R3, R12, R7
ADD             R3, R3, #0x3F00
AND             R0, R0, #0x80000000
ADD             R3, R3, #0xFF
PUSH            {R7,R8,R11,LR}
ADR             R6, loc_13D4C0
PUSH            {R0,R3}
MOV             R3, R4,LSR#16
MOV             R11, R5,LSR#16
LDRB            R6, [R6,R3,LSR#8]
BIC             LR, R5, R11,LSL#16
BIC             R8, R4, R3,LSL#16
MOVS            R1, R1,LSR#1
MLA             R7, R3, R6, R6
MOVS            R2, R2,RRX
MOVCS           R0, #0x80000000
MOVCC           R0, #0
RSB             R7, R7, #0x800000
MUL             R6, R7, R6
MOV             R7, R4,LSR#13
MOV             R6, R6,LSR#19
ADD             R6, R6, #2
MLA             R12, R7, R6, R6
RSB             R12, R12, #0x20000000
MOV             R7, R12,LSR#16
BIC             R12, R12, R7,LSL#16
MUL             R4, R7, R6
MUL             R5, R12, R6
MOV             R7, R1,LSR#15
ADD             R6, R4, R5,LSR#16
MOV             R6, R6,LSR#6
MUL             R12, R6, R7
MOV             R12, R12,LSR#16
MUL             R7, R12, R11
MOV             R4, R12,LSL#16
SUBS            R2, R2, R7
MUL             R7, R3, R12
SBC             R1, R1, R7
MUL             R7, R12, LR
SUBS            R0, R0, R7,LSL#16
SBCS            R2, R2, R7,LSR#16
MUL             R7, R12, R8
SUBCC           R2, R2, R7,LSL#16
SUBSCS          R2, R2, R7,LSL#16
SBC             R1, R1, R7,LSR#16
MOV             R7, R1,LSR#2
MUL             R12, R6, R7
MOV             R12, R12,LSR#16
MUL             R7, R12, R11
SUBS            R0, R0, R7,LSL#19
SBCS            R2, R2, R7,LSR#13
MUL             R7, R3, R12
SUBCC           R2, R2, R7,LSL#19
SUBSCS          R2, R2, R7,LSL#19
SBC             R1, R1, R7,LSR#13
MUL             R7, R12, LR
ADD             R4, R4, R12,LSL#3
SUBS            R0, R0, R7,LSL#3
SBCS            R2, R2, R7,LSR#29
MUL             R7, R12, R8
SUBCC           R2, R2, R7,LSL#3
SUBSCS          R2, R2, R7,LSL#3
SBC             R1, R1, R7,LSR#29
LDR             R7, [SP,#0x18+var_C]
MOV             R1, R1,LSL#26
ORR             R1, R1, R2,LSR#6
MOV             R2, R2,LSL#26
MOV             R7, R1,LSR#15
ORR             R2, R2, R0,LSR#6
MUL             R12, R6, R7
MOV             R0, R0,LSL#26
MOV             R12, R12,LSR#16
MUL             R7, R12, R11
MOV             R5, R12,LSL#22
ADD             R4, R4, R12,LSR#10
SUBS            R2, R2, R7
MUL             R7, R3, R12
SBC             R1, R1, R7
MUL             R7, R12, LR
SUBS            R0, R0, R7,LSL#16
SBCS            R2, R2, R7,LSR#16
MUL             R7, R12, R8
SUBCC           R2, R2, R7,LSL#16
SUBSCS          R2, R2, R7,LSL#16
SBC             R1, R1, R7,LSR#16
MOV             R7, R1,LSR#2
MUL             R12, R6, R7
MOV             R12, R12,LSR#16
MUL             R7, R12, R11
SUBS            R0, R0, R7,LSL#19
SBCS            R2, R2, R7,LSR#13
MUL             R7, R3, R12
SUBCC           R2, R2, R7,LSL#19
SUBSCS          R2, R2, R7,LSL#19
SBC             R1, R1, R7,LSR#13
MUL             R7, R12, LR
SUBS            R0, R0, R7,LSL#3
SBCS            R2, R2, R7,LSR#29
MUL             R7, R12, R8
SUBCC           R2, R2, R7,LSL#3
SUBSCS          R2, R2, R7,LSL#3
SBC             R1, R1, R7,LSR#29
MOV             R1, R1,LSL#26
ORR             R1, R1, R2,LSR#6
ADDS            R5, R5, R12,LSL#9
MOV             R7, R1,LSR#15
MOV             R2, R2,LSL#26
MUL             R12, R6, R7
ORR             R2, R2, R0,LSR#6
ADC             R4, R4, #0
MOV             R0, R0,LSL#26
MOV             R12, R12,LSR#16
MUL             R7, R12, R11
MOV             R6, R12,LSL#28
SUBS            R2, R2, R7
MUL             R7, R3, R12
SBC             R1, R1, R7
MUL             R7, R12, LR
SUBS            R0, R0, R7,LSL#16
SBCS            R2, R2, R7,LSR#16
MUL             R7, R12, R8
SUBCC           R2, R2, R7,LSL#16
SUBSCS          R2, R2, R7,LSL#16
SBC             R1, R1, R7,LSR#16
ADDS            R5, R5, R12,LSR#4
MOV             R1, R1,LSL#14
ORR             R1, R1, R2,LSR#18
MOV             R2, R2,LSL#14
ORR             R2, R2, R0,LSR#18
MOV             R0, R0,LSL#14
ADC             R4, R4, #0
ORR             R3, R8, R3,LSL#16
ORR             R8, LR, R11,LSL#16
MOV             LR, #0
MOV             R11, #0
SUBS            R12, R2, R8
SBCS            R7, R1, R3
ADC             LR, LR, LR
MOVCS           R2, R12
MOVCS           R1, R7
ADDS            R0, R0, R0
ADCS            R2, R2, R2
ADCS            R1, R1, R1
ADC             R11, R11, R11
SUBS            R12, R2, R8
SBCS            R7, R1, R3
SBCS            R11, R11, #0
MOV             R11, #0
ADC             LR, LR, LR
MOVCS           R2, R12
MOVCS           R1, R7
ADDS            R0, R0, R0
ADCS            R2, R2, R2
ADCS            R1, R1, R1
ADC             R11, R11, R11
SUBS            R12, R2, R8
SBCS            R7, R1, R3
SBCS            R11, R11, #0
MOVCS           R2, R12
MOVCS           R1, R7
ADC             LR, LR, LR
ORRS            R7, R1, R2
ORRNE           R6, R6, #1
ADDS            R6, R6, LR,LSL#28
ADCS            R2, R5, #0
ADCS            R1, R4, #0
POPMI           {R0,R3,R7,R8}
POPMI           {R11,PC}
ADDS            R6, R6, R6
POP             {R0,R3,R7,R8}
ADCS            R2, R2, R2
POP             {R11,LR}
ADC             R1, R1, R1
SUB             R3, R3, #1
BX              LR
