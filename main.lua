
---Generates a code with the specified number of digits
---@param digits number
function generateCode(digits)
    local code  = ""
    for i = 1, digits do
        code = code .. math.random(0, 9)
    end
    return tonumber(code)
end