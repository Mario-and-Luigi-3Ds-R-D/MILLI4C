PUSH            {R4,LR}
MOV             R4, R0
ADR             R0, aInitfro; "initFRO"
BL              sub_45F46C
BLX             R0
MOV             R0, #3
STRB            R0, [R4,#0xA8]
POP             {R4,PC}
