RSB             R0, R0, R0,LSL#4
LDR             R2, =unk_656EAC
ADD             R0, R0, R0,LSL#2
ADD             R1, R1, R1,LSL#1
ADD             R0, R2, R0,LSL#4
ADD             R0, R0, R1,LSL#2
SUB             R0, R0, #0xC
BX              LR
