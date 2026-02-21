PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xDE]
SUB             SP, SP, #0x10
BIC             R0, R0, #1
STRB            R0, [R4,#0xDE]
LDR             R0, [R4]
LDR             R1, [R0,#0x80]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_1759F4
LDR             R0, =dword_673950
ADD             R3, SP, #0x18+var_10
ADD             R1, R0, #8
LDM             R1, {R1,R2}
STM             R3, {R1,R2}
MOV             R3, #0x58 ; 'X'
LDRD            R0, R1, [R0]
LDR             R2, =unk_673980
STRD            R0, R1, [SP,#0x18+var_18]
LDR             R0, [R4]
MOV             R1, #2
LDR             R12, [R0,#0x1A8]
MOV             R0, R4
BLX             R12
LDRB            R1, [R4,#0x4B5]
BIC             R1, R1, #0xF0
ORR             R1, R1, #0x10
STRB            R1, [R4,#0x4B5]
LDR             R0, [R4]
LDR             R1, [R0,#0x28]
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4,LR}
BX              R1
LDR             R0, [R4]
LDR             R1, [R0,#0x24]
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4,LR}
BX              R1
