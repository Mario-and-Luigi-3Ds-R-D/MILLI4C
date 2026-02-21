PUSH            {R4-R11,LR}
SUB             SP, SP, #0x14
LDR             R6, =dword_700750
LDRB            R0, [R6,#(byte_700768 - 0x700750)]
CMP             R0, #1
BEQ             loc_11FBDC
LDR             R5, [R6,#(dword_7007F0 - 0x700750)]
LDR             R0, [R5,#0x24]
LDR             R1, [R5,#0x20]
CMP             R1, R0
BLE             loc_11FBDC
MOV             R7, #1
MOV             R11, #2
MOV             R8, #0x7000
MOV             R9, #0x10000
LDR             R2, [R5,#0x28]
LDR             R1, [R6,#(dword_700764 - 0x700750)]
ADD             R1, R1, R2
CMP             R1, R0
BLE             loc_11FBDC
LDR             R1, [R5,#0x18]
RSB             R0, R0, R0,LSL#3
ADD             R4, R1, R0,LSL#2
LDRB            R0, [R4]
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_11F9F4; jumptable 0011F9F4 default case
DCD loc_11FA10; jump table for switch statement
LDR             R0, [R4,#0x10]; jumptable 0011F9F4 case 0
LDR             R1, [R4,#4]
BIC             R3, R7, R0
ADD             R0, R4, #8
LDM             R0, {R0,R2}
BL              sub_11F7F4
NOP
NOP
B               def_11F9F4; jumptable 0011F9F4 default case
LDR             R0, [R4,#0xC]; jumptable 0011F9F4 case 1
AND             R3, R0, #1
BIC             R2, R7, R0,LSR#2
LDRD            R0, R1, [R4,#4]
BL              sub_1229C8
NOP
NOP
B               def_11F9F4; jumptable 0011F9F4 default case
LDR             R1, [R4,#0x18]; jumptable 0011F9F4 case 2
MOV             R3, #0x300
ADD             R0, R4, #0x10
AND             R12, R3, R1,LSR#15
LDM             R0, {R0,R2}
MOV             R1, R1,LSL#9
ORR             R12, R12, #1
MOV             R1, R1,LSR#9
ADD             R1, R1, R0
STMEA           SP, {R0-R2,R12}
ADD             R0, R4, #4
LDR             R1, [R4,#0xC]
LDM             R0, {R0,R2}
MOV             R12, R1,LSL#9
AND             R3, R3, R1,LSR#15
MOV             R12, R12,LSR#9
ADD             R1, R0, R12
ORR             R3, R3, #1
BL              sub_11F828
NOP
NOP
B               def_11F9F4; jumptable 0011F9F4 default case
ADD             R1, R4, #0xC; jumptable 0011F9F4 case 3
LDR             R0, [R4,#0x14]
LDM             R1, {R1,R2}
MOV             R3, #0
MOV             R12, R0,LSL#25
UXTH            R10, R1
UXTH            LR, R2
CMP             LR, R10
ORR             R3, R3, R12,LSR#31
MOVCS           R12, R2,LSR#16
CMPCS           R12, R1,LSR#16
ORRCC           R3, R3, #4
BICCS           R3, R3, #4
BIC             R12, R3, #0x700
MOV             R3, #0x700
AND             R10, R3, R0,LSL#8
ORR             R12, R12, R10
AND             R10, R8, R0,LSL#9
BIC             R12, R12, #0x7000
MOV             R3, #0x3000000
ORR             R12, R12, R10
AND             R3, R3, R0,LSL#17
BIC             R12, R12, #0x3000000
ORR             R3, R3, R12
BIC             R10, R3, #0x10000
AND             R12, R9, R0,LSL#7
ORR             R12, R12, R10
AND             R10, R11, R0,LSR#9
MOV             R3, #0x20 ; ' '
BIC             R12, R12, #2
ORR             R12, R12, R10
AND             R0, R3, R0,LSR#6
MOV             R2, R2,LSR#16
BIC             R3, R12, #0x20 ; ' '
STR             R2, [SP,#0x38+var_34]
ORR             R0, R0, R3
STR             R0, [SP,#0x38+var_30]
STR             LR, [SP,#0x38+var_38]
MOV             R2, R1,LSR#16
LDMIB           R4, {R0,R3}
UXTH            R1, R1
BL              sub_11F808
NOP
NOP
B               def_11F9F4; jumptable 0011F9F4 default case
LDR             R3, [R4,#0x10]; jumptable 0011F9F4 case 4
MOV             R0, R3,LSL#16
MOVS            R0, R0,LSR#16
BNE             loc_11FB80
LDR             R0, [R4,#0x14]
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#16
BEQ             loc_11FB84
MOV             R0, #4
LDR             R1, [R4,#0x14]
UXTH            R2, R3
ORR             R0, R0, #8
ADD             R10, SP, #0x38+var_34
UXTH            R12, R1
MOV             R1, R1,LSR#16
STR             R0, [SP,#0x38+var_2C]
STR             R2, [SP,#0x38+var_38]
STM             R10, {R1,R12}
ADD             R1, R4, #4
MOV             R3, R3,LSR#16
LDM             R1, {R0-R2}
BL              sub_11F848
LDR             R0, [R5,#0x24]; jumptable 0011F9F4 default case
ADD             R0, R0, #1
STR             R0, [R5,#0x24]
LDRB            R1, [R4,#2]
CMP             R1, #1
BEQ             loc_11FBE4
LDR             R1, [R5,#0x20]
CMP             R1, R0
BGT             loc_11F9CC
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
STRB            R7, [R6,#(byte_700768 - 0x700750)]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
