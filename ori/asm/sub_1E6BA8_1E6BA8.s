PUSH            {R4,LR}
MOV             R4, R0
BL              sub_22D4E4
LDR             R0, [R4]
LDR             R1, [R0,#0x1C8]
MOV             R0, R4
BLX             R1
MOV             R0, #0
STR             R0, [R4,#0xA50]
STR             R0, [R4,#0xA54]
STR             R0, [R4,#0xA58]
LDR             R1, [R4,#0xA8C]
STR             R1, [R4,#0xA98]
LDR             R1, [R4,#0xA90]
STR             R1, [R4,#0xA9C]
LDR             R1, [R4,#0xA94]
STR             R1, [R4,#0xAA0]!
STR             R0, [R4,#4]
POP             {R4,PC}
