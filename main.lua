---@diagnostic disable: lowercase-global

---Generates a code with the specified number of digits
---@param digits number
---@return number
function generateCode(digits)
    local code  = ""
    for i = 1, digits do
        code = code .. math.random(0, 9)
    end
    return tonumber(code) or 0
end

---Compares two codes
---@param correctCode number
---@param enteredCode number
---@return boolean
function compareCodes(correctCode, enteredCode)
    return correctCode == enteredCode
end