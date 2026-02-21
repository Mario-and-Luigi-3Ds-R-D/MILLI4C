LDRB            R0, [R1]
TST             R0, #1
BICNE           R0, R0, #2
STRBNE          R0, [R1]
BX              LR
