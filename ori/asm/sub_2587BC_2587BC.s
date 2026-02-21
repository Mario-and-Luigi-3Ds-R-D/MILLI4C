PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R0, [R0,#0xA70]
LDR             R6, =0x11F
MOV             R7, #0
CMP             R0, #0
BEQ             loc_2587E4
BL              sub_533330
STR             R7, [R4,#0xA70]
LDR             R0, =off_6CE970
LDR             R5, [R0]
BL              sub_4635D8
MOV             R1, #7
MOV             R3, R0
STMEA           SP, {R1,R7}
ADD             R2, R4, #0x84
MOV             R1, R6
MOV             R0, R5
BL              sub_52C764
STR             R0, [R4,#0xA70]
STRH            R7, [R0,#0xA]
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4-R7,LR}
B               sub_258B1C
