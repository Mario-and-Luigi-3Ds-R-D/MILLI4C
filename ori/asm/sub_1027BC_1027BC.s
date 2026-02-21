PUSH            {R0,R1,R4,LR}
MOVS            R4, #0
MOVS            R0, #1
BL              sub_300F9C
MOVS            R4, R0
B               loc_1027D2
DCB 0xC0, 0x46
NOP
NOP
NOP
MOVS            R0, R4
BLX             sub_300FD4
MOVS            R0, #0
MVNS            R0, R0
POP             {R2-R4,PC}
