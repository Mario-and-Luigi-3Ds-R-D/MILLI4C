LDR             R1, =unk_6E5F34
AND             R2, R0, #0xF000
CMP             R2, #0x3000
MOVNE           R0, #0
BNE             locret_11CAB8
BIC             R0, R0, #0xF000
ADD             R2, R0, R0,LSL#1
ADD             R0, R2, R0,LSL#3
ADD             R0, R1, R0,LSL#2
BX              LR
