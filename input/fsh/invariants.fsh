Invariant:   pas-1
Description: "text、coding擇一填寫。"
Expression:  "text.exists() xor coding.exists()"
Severity:    #error

Invariant:   pas-2
Description: "長度不得超過4000 bytes。"
Expression:  "toString().length() <= 4000"
Severity:    #error