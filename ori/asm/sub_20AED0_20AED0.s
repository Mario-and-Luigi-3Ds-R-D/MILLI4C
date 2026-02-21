PUSH            {R4-R9,LR}
MOV             R4, R2
MOV             R6, R1
MOV             R9, R0
ADD             R0, R4, #0x10
ADD             R1, R2, #8
LDM             R0, {R0,R3}
SUB             SP, SP, #0xC
LDM             R1, {R1,R2}
AND             R5, R0, #0xFF
LDR             R0, =off_6CE970
AND             R8, R3, #0xFF
UXTH            R1, R1
AND             R7, R2, #0xFF
LDR             R0, [R0]
BL              sub_52A63C
MOV             R1, R0
LDR             R0, [R0,#0x110]
RSB             R2, R7, R7,LSL#3
VLDR            S0, =0.0
CMP             R5, #0xC; switch 12 cases
ADD             R0, R0, R2,LSL#3
LDRCC           PC, [PC,R5,LSL#2]; switch jump
B               def_20AF28; jumptable 0020AF28 default case
DCD loc_20AF60; jump table for switch statement
LDRB            R3, [R1,#0xF0]; jumptable 0020AF28 cases 0-2
MOV             R1, R0
MOV             R2, R8
MOV             R0, SP
BL              sub_14C73C
MOV             R0, SP
ADD             R0, R0, R5,LSL#2
VLDR            S0, [R0]
B               def_20AF28; jumptable 0020AF28 default case
ADD             R0, R0, R5,LSL#2; jumptable 0020AF28 cases 3-5
VLDR            S0, [R0,#0xC]
B               def_20AF28; jumptable 0020AF28 default case
ADD             R0, R0, R5,LSL#2; jumptable 0020AF28 cases 6-8
VLDR            S0, [R0,#0x14]
B               def_20AF28; jumptable 0020AF28 default case
LDRB            R0, [R0,#0x24]; jumptable 0020AF28 case 9
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_20AF28; jumptable 0020AF28 default case
LDRH            R0, [R0,#0x26]; jumptable 0020AF28 case 10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_20AF28; jumptable 0020AF28 default case
NOP; jumptable 0020AF28 case 11
BL              sub_5C8D38
VMOV            S0, R0
VCVT.F32.U32    S0, S0
CMP             R6, #0; jumptable 0020AF28 default case
LDRH            R0, [R4,#2]
ADDNE           R2, R6, #4
MOVEQ           R2, #0
MOV             R1, R9
BL              sub_145730
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R9,PC}
