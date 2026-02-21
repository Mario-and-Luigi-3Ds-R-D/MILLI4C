MOV             R12, #0
PUSH            {R4-R6}
MOV             R3, R12
RSB             R4, R3, R3,LSL#3
ADD             R4, R0, R4,LSL#4
LDR             R4, [R4,#0x160]
CMP             R4, #0
BEQ             loc_10DC1C
ADD             R3, R3, #1
CMP             R3, #0xC
BLT             loc_10DB64
MOV             R3, #0
MOV             R5, #0xFFFFFFFF
ADD             R4, R1, R3,LSL#2
LDR             R4, [R4,#0x10]
CMP             R4, #0
ADDEQ           R4, R12, R3,LSL#2
STREQ           R5, [R4,#0x40]
BEQ             loc_10DBB4
LDRB            R6, [R4,#2]
ADD             R4, R12, R3,LSL#2
STR             R6, [R4,#0x40]
STR             R2, [R12]
ADD             R4, R1, R3
ADD             R6, R12, R3
LDRB            R4, [R4,#4]
STRB            R4, [R6,#4]
LDRB            R6, [R1]
CMP             R6, R3
BLE             def_10DBD4; jumptable 0010DBD4 default case
CMP             R4, #0x10; switch 16 cases
LDRCC           PC, [PC,R4,LSL#2]; switch jump
B               def_10DBD4; jumptable 0010DBD4 default case
DCD loc_10DC2C; jump table for switch statement
RSB             R3, R3, R3,LSL#3
ADD             R3, R0, R3,LSL#4
ADD             R12, R3, #0x160
B               loc_10DB84
MOV             R4, #1; jumptable 0010DBD4 cases 0,1
B               loc_10DC70
MOV             R4, #2; jumptable 0010DBD4 cases 2,4,5
B               loc_10DC70
MOV             R4, #4; jumptable 0010DBD4 cases 3,6,12,13
B               loc_10DC70
MOV             R4, #8; jumptable 0010DBD4 cases 7,14
B               loc_10DC70
MOV             R4, #3; jumptable 0010DBD4 cases 8,9
B               loc_10DC70
MOV             R4, #6; jumptable 0010DBD4 case 10
B               loc_10DC70
MOV             R4, #0xC; jumptable 0010DBD4 case 11
B               loc_10DC70
MOV             R4, #0x10; jumptable 0010DBD4 case 15
B               loc_10DC70
MOV             R4, #0; jumptable 0010DBD4 default case
ADD             R6, R12, R3,LSL#2
ADD             R3, R3, #1
CMP             R3, #0xC
STR             R4, [R6,#0x10]
BCC             loc_10DB8C
MOV             R1, #0
STR             R1, [R0]
POP             {R4-R6}
BX              LR
