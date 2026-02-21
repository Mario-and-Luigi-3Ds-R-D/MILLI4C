VLDM            R1, {D0-D4}
VSTM            R0, {D0-D4}
STR             R2, [R0,#0x10]
STR             R3, [R0,#0x18]
ADD             R0, R0, #0x28 ; '('
BX              LR
