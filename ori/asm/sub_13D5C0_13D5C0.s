CMP             R3, #0
BMI             loc_13D624
MOVS            R7, R6,LSL#1
BEQ             loc_13D618
PUSH            {R2-R4,LR}
MOV             R7, R7,RRX
PUSH            {R0,R1}
MOV             R0, #0x10
MOV             R1, #0x10
MOV             R0, #0
POP             {R0-R3}
ADD             R11, R11, #1
CMP             R11, #1
MOVSEQ          R7, R7,LSR#32
POP             {R4,LR}
ADDSCS          R2, R2, #1
ADDSCS          R1, R1, #1
MOVCS           R1, #0x80000000
ADC             R3, R3, #0
AND             R0, R0, #0x80000000
ORR             R0, R3, R0
BX              LR
BCC             loc_13D60C
MOVS            R7, R2,LSR#1
B               loc_13D5D0
ORR             R6, R6, R6,LSL#16
CMN             R3, #0x40 ; '@'
MOV             R6, R6,LSR#16
BLE             loc_13D674
CMN             R3, #0x20 ; ' '
ORRLE           R6, R6, R2
MOVLE           R2, R1
MOVLE           R1, #0
ADDLE           R3, R3, #0x20 ; ' '
RSBS            R3, R3, #0
BEQ             loc_13D5C8
ORR             R6, R6, R6,LSL#16
RSB             R7, R3, #0x20 ; ' '
MOV             R6, R6,LSR#16
ORR             R6, R6, R2,LSL R7
MOV             R2, R2,LSR R3
ORR             R2, R2, R1,LSL R7
MOV             R1, R1,LSR R3
MOV             R3, #0
B               loc_13D5C8
ORR             R6, R6, R2
MOV             R3, #0
MOV             R2, #0
ORR             R6, R6, R6,LSL#16
MOV             R6, R6,LSR#16
ORR             R6, R6, R1
MOV             R1, #0
ORRLT           R6, R6, R6,LSL#16
MOVLT           R6, R6,LSR#16
B               loc_13D5C8
