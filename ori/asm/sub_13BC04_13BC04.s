CMP             R0, #0x20 ; ' '
BCS             loc_13BC28
LDR             R1, =off_6D2440
LDR             R1, [R1]
ADD             R0, R1, R0,LSL#2
LDR             R0, [R0,#0x828]
CMP             R0, #0
LDRNE           R0, [R0]
BNE             locret_13BC2C
MOV             R0, #0
BX              LR
