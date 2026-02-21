PUSH            {R4-R7,LR}
SUB             SP, SP, #0xC
LDR             R6, =byte_6D4A28
LDRB            R0, [R6]
CMP             R0, #0
BEQ             loc_121548
MOV             R7, #0
STRB            R7, [R6]
LDRB            R0, [R6,#(byte_6D4A2A - 0x6D4A28)]
CMP             R0, #0
BEQ             loc_121548
ADD             R1, R6, #0x18
LDR             R0, [R6,#(dword_6D4A30 - 0x6D4A28)]
LDM             R1, {R1,R2}
LDRH            R3, [R6,#(word_6D4A2C - 0x6D4A28)]
LDRH            R12, [R6,#(word_6D4A2E - 0x6D4A28)]
CMP             R0, #0
BEQ             loc_121514
LDRB            R4, [R6,#(byte_6D4A29 - 0x6D4A28)]
CMP             R4, #0
BEQ             loc_121550
LDR             R0, =0xC8A0A7FC
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
LDR             R5, =unk_70E378
MOV             R4, #0
LDR             R0, [R5,R4,LSL#2]
CMP             R0, #0
BLXNE           R0
ADD             R4, R4, #1
CMP             R4, #8
BLT             loc_12152C
STRB            R7, [R6,#(byte_6D4A2A - 0x6D4A28)]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
LDR             R4, =byte_6D4A29
STR             R12, [SP,#0x20+var_20]
STR             R4, [SP,#0x20+var_1C]
BL              sub_1285C8
NOP
NOP
B               loc_121518
