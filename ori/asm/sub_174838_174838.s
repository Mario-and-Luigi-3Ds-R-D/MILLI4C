VLDR            S0, =2.0
ADD             R1, R0, #0x400
VSTR            S0, [R1,#0x70]
LDR             R0, [R0,#0x7FC]
MOV             R1, #0x200
ADD             R0, R0, #0x10
B               sub_123CE8
