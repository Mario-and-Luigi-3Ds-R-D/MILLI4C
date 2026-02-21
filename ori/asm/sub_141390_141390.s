LDR             R1, [R0]
CMP             R1, #9
LDRNE           R1, [R0,#8]
CMPNE           R1, #0
SUBGT           R1, R1, #1
STRGT           R1, [R0,#8]
BLE             locret_1413AC
BX              LR
