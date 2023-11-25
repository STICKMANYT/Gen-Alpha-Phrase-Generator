local capitalized = true -- Changes if the first word is capitalized
local length = 10 -- How long the sentence should be

local list = { 
    "gyatt ", "sigma ", "ohio ",
    "kai cenat ", "rizz ",
    "fanum tax ", "skibidi "
} -- List of words that can be used in output

local incoherent = "" -- This is the sentence
local lastWord -- This is used to make sure the next word is not the same as the last one

for i = 1, length do -- This is a for loop, it loops until i is equal to the length set at the top.
    local randomWord = list[math.random(1, #list)] -- Get a random word from the list, same as before
    while randomWord == lastWord do -- This loops until the random word and the last word are not the same
        randomWord = list[math.random(1, #list)]
    end
    if i == 1 and capitalized then -- If this is the first word and if capitalized is true
        incoherent = incoherent .. randomWord:gsub("^%l", string.upper) -- append the capitalized word
    else -- If this is not the first word
        incoherent = incoherent .. randomWord -- append the word
    end
    lastWord = randomWord
end

print(incoherent)
