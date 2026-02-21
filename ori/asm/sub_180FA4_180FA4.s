PUSH            {R4,R5,LR}
CMP             R2, #1
MOVEQ           R4, #1
MOVNE           R4, #2
SUB             SP, SP, #0xC
ADD             R5, R4, R4,LSL#3
ADD             R4, R5, R4,LSL#4
LDR             R12, [SP,#0x18+arg_0]
ADD             R4, R0, R4,LSL#3
ADD             R4, R4, #0x138
STR             R4, [SP,#0x18+var_14]
STR             R12, [SP,#0x18+var_18]
LDR             R12, [R0]
LDR             R12, [R12,#0x30]
BLX             R12
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
