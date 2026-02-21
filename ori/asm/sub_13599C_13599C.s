MOV             R2, #0
MOV             R1, R1,LSL#12
STR             R2, [R0]
ADD             R3, R0, #0xC
STR             R1, [R0,#8]
STR             R2, [R0,#4]
STM             R3, {R1,R2}
BX              LR
