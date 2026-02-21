LDR             R12, =byte_6D4A28
LDR             R1, =unk_6D4F2C
LDR             R2, =0xC234
ADD             R0, R12, #0x18
PUSH            {R4,LR}
SUB             SP, SP, #8
STM             R0, {R1,R2}
MOV             R3, #0xFF
STRH            R3, [R12,#(word_6D4A2C - 0x6D4A28)]
STRH            R3, [R12,#(word_6D4A2E - 0x6D4A28)]
LDR             R0, [R12,#(dword_6D4A30 - 0x6D4A28)]
MOV             R4, R3
CMP             R0, #0
BEQ             loc_1193C4
LDRB            R12, [R12,#(byte_6D4A29 - 0x6D4A28)]
CMP             R12, #0
BEQ             loc_1193D0
ADD             SP, SP, #8
LDR             R0, =0xC8A0A7FC
POP             {R4,PC}
LDR             R12, =byte_6D4A29
STMEA           SP, {R4,R12}
BL              sub_1285C8
ADD             SP, SP, #8
POP             {R4,PC}
