LDR             R1, [R0,#4]
CMP             R1, #0
BNE             locret_234888
LDR             R2, =off_67E174
MOV             R1, #0
STR             R1, [R0,#0x24]
ADD             R0, R0, #0x48 ; 'H'
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
BX              LR
