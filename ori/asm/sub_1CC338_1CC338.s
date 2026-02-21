PUSH            {R4-R10,LR}
ADD             R0, SP, #0x20+arg_0
MOV             R8, R1
MOV             R4, R2
LDM             R0, {R1,R5,R6,R12}
LDR             R0, =dword_6EA3BC
ADD             R7, R1, #1
CMP             R12, #0
STM             R0, {R5,R6,R12}
STR             R2, [R0,#(dword_6EA3C8 - 0x6EA3BC)]!
STR             R1, [R0,#(dword_6EA3CC - 0x6EA3C8)]
BEQ             loc_1CC3E4
SUB             R5, R3, #1
CMN             R5, #1
LDRNE           R9, =dword_6EB550
BEQ             locret_1CC3E0
ADD             R4, R4, R7,LSL#1
LDRSH           R1, [R4]
MOV             R0, R1,LSL#23
MOV             R0, R0,LSR#23
CMP             R0, #0x37 ; '7'
BCS             loc_1CC3B4
ADD             R0, R0, #0x1B
AND             R6, R0, #0xFF
MOV             R0, R1,ASR#10
LDR             R1, [R9,R0,LSL#2]
MOV             R0, R4
BLX             R1
MOV             R0, R0,ASR#8
STRB            R0, [R8,R6]
B               loc_1CC3D8
SUB             R0, R0, #0xE
AND             R6, R0, #0xFF
MOV             R0, R1,ASR#10
LDR             R1, [R9,R0,LSL#2]
MOV             R0, R4
BLX             R1
ADD             R1, R8, R6,LSL#1
MOV             R0, R0,ASR#8
STRH            R0, [R1]
SUBS            R5, R5, #1
BCS             loc_1CC378
POP             {R4-R10,PC}
SUBS            R6, R3, #1
BCC             locret_1CC3E0
ADD             R4, R4, R7,LSL#1
LDRH            R0, [R4]
MOV             R5, R0,LSL#23
MOV             R0, R4
MOV             R5, R5,LSR#23
BL              sub_4E78D0
CMP             R5, #0x37 ; '7'
NOP
BCS             loc_1CC424
ADD             R2, R5, #0x1B
MOV             R1, R0,ASR#8
AND             R0, R2, #0xFF
STRB            R1, [R8,R0]
B               loc_1CC438
SUB             R2, R5, #0xE
MOV             R1, R0,ASR#8
AND             R0, R2, #0xFF
ADD             R0, R8, R0,LSL#1
STRH            R1, [R0]
SUBS            R6, R6, #1
BCS             loc_1CC3EC
POP             {R4-R10,PC}
