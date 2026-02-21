MOV             R0, R0,LSL#20
LDR             R1, =unk_64BBD8
MOV             R0, R0,LSR#20
RSB             R0, R0, R0,LSL#4
ADD             R0, R1, R0,LSL#2
BX              LR
