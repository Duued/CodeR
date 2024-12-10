---@diagnostic disable: lowercase-global

local codes = {}

---Generates a code with the specified number of digits
---@param digits number
---@param storeAfterGenerating boolean|nil
---@return number
function generateCode(digits, storeAfterGenerating)
    local code = ""
    for i = 1, digits do
        code = code .. math.random(0, 9)
    end
    if storeAfterGenerating then
        addCode(code)
    end
    return code
end

---Adds a code
---@param code number
---@return nil
function addCode(code)
    table.insert(codes, code)
end

---Removes a code
---@param code number|nil
---@param index number|nil
---@return nil
function removeCode(code, index)
    if code then
        for i, v in ipairs(codes) do
            if v == code then
                table.remove(codes, i)
                break
            end
        end
    elseif index then
        table.remove(codes, index)
    end
end

---Compares two codes
---@param correctCode number
---@param enteredCode number
---@return boolean
function compareCodes(correctCode, enteredCode)
    return correctCode == enteredCode
end

---Gets all stored codes
---@return table
function getCodes()
    return codes
end

---Clears all stored codes
---@return nil
function clearCodes()
    codes = {}
end
