ADD             R0, R0, #1
CMP             R0, #4
MOVCS           R0, #0
ANDCC           R0, R0, #0xFF
BX              LR
