PUSH            {R4-R10,LR}
ADD             R0, SP, #0x20+arg_0
MOV             R8, R1
MOV             R4, R2
LDM             R0, {R1,R5,R6,R12}
LDR             R0, =dword_6EA3BC
ADD             R7, R1, #1
CMP             R12, #0
STM             R0, {R5,R6,R12}
SUB             R6, R3, #1
STR             R2, [R0,#(dword_6EA3C8 - 0x6EA3BC)]!
STR             R1, [R0,#(dword_6EA3CC - 0x6EA3C8)]
BEQ             loc_1CC184
CMN             R6, #1
LDRNE           R9, =dword_6EB550
BEQ             locret_1CC180
ADD             R4, R4, R7,LSL#1
LDRSH           R0, [R4]
MOV             R5, R0,LSL#23
MOV             R5, R5,LSR#23
CMP             R5, #0x19
BCS             loc_1CC128
TST             R0, #0x200
MOV             R0, R0,ASR#10
LDR             R1, [R9,R0,LSL#2]
MOV             R0, R4
BEQ             loc_1CC104
BLX             R1
MOV             R1, R0
MOV             R2, R8
MOV             R0, R5
BL              sub_4E7320
NOP
NOP
B               loc_1CC178
NOP
BLX             R1
MOV             R1, R0
MOV             R2, R8
MOV             R0, R5
BL              sub_4E6E5C
NOP
NOP
B               loc_1CC178
CMP             R5, #0x37 ; '7'
BCS             loc_1CC154
ADD             R1, R5, #0x1B
MOV             R0, R0,ASR#10
AND             R5, R1, #0xFF
LDR             R1, [R9,R0,LSL#2]
MOV             R0, R4
BLX             R1
MOV             R0, R0,ASR#8
STRB            R0, [R8,R5]
B               loc_1CC178
SUB             R1, R5, #0xE
MOV             R0, R0,ASR#10
AND             R5, R1, #0xFF
LDR             R1, [R9,R0,LSL#2]
MOV             R0, R4
BLX             R1
ADD             R1, R8, R5,LSL#1
MOV             R0, R0,ASR#8
STRH            R0, [R1]
SUBS            R6, R6, #1
BCS             loc_1CC0B8
POP             {R4-R10,PC}
CMN             R6, #1
BEQ             locret_1CC180
ADD             R4, R4, R7,LSL#1
LDRH            R0, [R4]
MOV             R5, R0,LSL#23
MOV             R0, R4
MOV             R5, R5,LSR#23
BL              sub_4E78D0
CMP             R5, #0x19
MOV             R1, R0
BCS             loc_1CC1E8
LDRH            R0, [R4]
MOV             R2, R8
TST             R0, #0x200
MOV             R0, R5
BEQ             loc_1CC1D4
BL              sub_4E7320
NOP
NOP
B               loc_1CC218
NOP
BL              sub_4E6E5C
NOP
NOP
B               loc_1CC218
CMP             R5, #0x37 ; '7'
BCS             loc_1CC204
ADD             R0, R5, #0x1B
AND             R0, R0, #0xFF
MOV             R1, R1,ASR#8
STRB            R1, [R8,R0]
B               loc_1CC218
SUB             R0, R5, #0xE
AND             R0, R0, #0xFF
MOV             R1, R1,ASR#8
ADD             R0, R8, R0,LSL#1
STRH            R1, [R0]
SUBS            R6, R6, #1
BCS             loc_1CC18C
POP             {R4-R10,PC}
