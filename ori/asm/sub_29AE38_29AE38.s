LDRB            R1, [R0,#2]
AND             R2, R1, #2
MOVS            R2, R2,LSR#1
BNE             loc_29AE58
TST             R1, #1
LDRNE           R0, [R0,#4]
VSTRNE          S0, [R0,#0x10]
BNE             locret_29AE5C
VSTR            S0, [R0,#8]
BX              LR
