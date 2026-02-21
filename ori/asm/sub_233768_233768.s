CMP             R0, #0
BLT             loc_233780
CMP             R1, #0
ADDNE           R0, R0, R0,LSL#4
ADDNE           R0, R1, R0,LSL#3
BNE             locret_233784
MOV             R0, #0
BX              LR
