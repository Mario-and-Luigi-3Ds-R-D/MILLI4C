LDR             R1, =off_6D4B5C
PUSH            {LR}
SUB             SP, SP, #0x14
LDR             R1, [R1]; unk_6D4B44
CMP             R1, #0
BEQ             loc_11F1FC
LDR             R2, [R1,#8]
CMP             R2, R0
LDRLS           R2, [R1,#0xC]
CMPLS           R0, R2
BCS             loc_11F1F0
STR             R0, [SP,#0x18+var_10]
LDR             R2, [R1,#0x14]
ADD             R1, R1, #0x10
LDR             R0, =sub_1212D4
STR             R2, [SP,#0x18+var_C]
LDM             R1, {R1,R2}
MOV             R3, #8
STR             R0, [SP,#0x18+var_18]
ADD             R0, SP, #0x18+var_10
SUB             R2, R2, R1
MOV             R2, R2,ASR#3
BLX             sub_100430
ADD             SP, SP, #0x14
POP             {PC}
LDR             R1, [R1,#4]
CMP             R1, #0
BNE             loc_11F1A4
ADD             SP, SP, #0x14
MOV             R0, #0
POP             {PC}
