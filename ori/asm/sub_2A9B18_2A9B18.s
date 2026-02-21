PUSH            {R4,LR}
MOV             R4, R0
ADR             R2, aNoseTop; "nose_top"
STR             R1, [R0,#8]
BL              sub_2CF3DC
STR             R0, [R4,#0x14]!
MOV             R1, #1
STR             R1, [R4,#0x38]
POP             {R4,PC}
