PUSH            {R4,LR}
MOV             R4, R0
ADR             R2, aNoseTop_0; "nose_top"
STR             R1, [R0,#8]
BL              sub_2CF3DC
STR             R0, [R4,#0x14]!
MOV             R1, #0
STR             R1, [R4,#0x70]
POP             {R4,PC}
