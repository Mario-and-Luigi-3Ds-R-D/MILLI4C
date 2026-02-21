LDR             R0, =off_6D2420
PUSH            {R4}
LDR             R4, [R0]
LDR             R0, =off_6D48F8
LDR             R12, [R0]
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_10A86C
LDR             R2, [R0,#0x40]
CMP             R2, R3
BCS             loc_10A860
LDR             R0, [R0,#0x44]
CMP             R0, #0
BNE             loc_10A844
B               loc_10A86C
CMP             R0, #0
CMPNE           R2, R3
MOVNE           R0, #0
LDR             R2, [R4,#8]
SUB             R1, R1, #0x8200
SUBS            R1, R1, #0x1A
BEQ             loc_10A890
SUB             R1, R1, #0xA00
SUBS            R1, R1, #0xC6
BEQ             loc_10A894
CMP             R1, #0x20 ; ' '
BNE             loc_10A8C4
MOV             R1, #1
CMP             R3, #0
BEQ             loc_10A8CC
ADD             R3, R2, R1,LSL#4
STR             R0, [R3,#0xC]
LDR             R4, [R0,#0x40]
ADD             R0, R2, R1,LSL#4
MOV             R3, #0
STM             R0, {R3,R4}
STR             R3, [R0,#8]
LDR             R0, [R12]
ORR             R0, R0, #1
STR             R0, [R12]
POP             {R4}
BX              LR
MOV             R0, #0
ADD             R3, R2, R1,LSL#4
MOV             R4, R0
STR             R0, [R3,#0xC]
B               loc_10A8A8
