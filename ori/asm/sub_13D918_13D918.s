LDR             R3, =unk_6587E0
MOV             R2, R0
VLDM            R3!, {D0-D7}
VSTM            R0!, {D0-D7}
VLDM            R3!, {D0}
VSTM            R0!, {D0}
STR             R1, [R2,#8]
BX              LR
