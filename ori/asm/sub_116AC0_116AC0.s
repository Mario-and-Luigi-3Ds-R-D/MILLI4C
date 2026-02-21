PUSH            {R4,LR}
MOVS            R4, R1,ASR#1
EOR             R4, R4, R3,LSR#1
BPL             loc_116AD8
RSBS            R0, R0, #0
RSC             R1, R1, #0
TST             R3, R3
BPL             loc_116AE8
RSBS            R2, R2, #0
RSC             R3, R3, #0
BL              sub_127B3C
TST             R4, #0x40000000
BEQ             loc_116AFC
RSBS            R0, R0, #0
RSC             R1, R1, #0
TST             R4, #0x80000000
BEQ             locret_116B0C
RSBS            R2, R2, #0
RSC             R3, R3, #0
POP             {R4,PC}
