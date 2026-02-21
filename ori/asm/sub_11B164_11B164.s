LDR             R0, =unk_6D2448
LDRB            R1, [R0,#(byte_6D2449 - 0x6D2448)]
CMP             R1, #0
MOVEQ           R0, #0
BEQ             locret_11B184
MOV             R1, #0
STRB            R1, [R0,#(byte_6D2449 - 0x6D2448)]
B               sub_122ED8
BX              LR
