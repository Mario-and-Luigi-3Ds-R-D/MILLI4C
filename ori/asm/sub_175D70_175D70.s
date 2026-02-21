PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =dword_673950
SUB             SP, SP, #0x10
ADD             R3, SP, #0x18+var_10
ADD             R1, R0, #8
LDM             R1, {R1,R2}
STM             R3, {R1,R2}
MOV             R3, #0x20 ; ' '
LDRD            R0, R1, [R0]
LDR             R2, =unk_673960
STRD            R0, R1, [SP,#0x18+var_18]
LDR             R0, [R4]
MOV             R1, #2
LDR             R12, [R0,#0x1A8]
MOV             R0, R4
BLX             R12
LDRB            R0, [R4,#0xDE]
BIC             R0, R0, #1
STRB            R0, [R4,#0xDE]
LDR             R0, [R4]
LDR             R1, [R0,#0x28]
MOV             R0, R4
BLX             R1
MOV             R0, #0x5A ; 'Z'
ADD             R1, R0, #0x700
STRH            R0, [R1,R4]
ADD             SP, SP, #0x10
POP             {R4,PC}
