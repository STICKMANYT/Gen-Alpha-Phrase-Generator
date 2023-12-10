-- I'm not gonna accept pull requests that change the code itself, but I will accept them if it adds more words to "list"

local capitalized = true -- Changes if the first word is capitalized.
local list = {"gyatt ","sigma ","ohio ","kai cenat ","rizz ","fanum tax ","skibidi "} -- List of words that can be used in output


local sentence = {
currentword1 = list[math.random(1, #list)],
currentword2 = list[math.random(1, #list)],
currentword3 = list[math.random(1, #list)],
currentword4 = list[math.random(1, #list)],
currentword5 = list[math.random(1, #list)],
currentword6 = list[math.random(1, #list)],
currentword7 = list[math.random(1, #list)],
currentword8 = list[math.random(1, #list)],
currentword9 = list[math.random(1, #list)],
currentword10 = list[math.random(1, #list)],
currentword11 = list[math.random(1, #list)],
currentword12 = list[math.random(1, #list)],
currentword13 = list[math.random(1, #list)],
currentword14 = list[math.random(1, #list)],
currentword15 = list[math.random(1, #list)],
}



repeat
    if sentence.currentword2 == sentence.currentword1 then
        sentence.currentword2 = list[math.random(1, #list)]
    end
until sentence.currentword2 ~= sentence.currentword1
if capitalized == true then
    sentence.currentword1 = sentence.currentword1:gsub("^%l", string.upper)
end
repeat
    if sentence.currentword3 == sentence.currentword2 then
        sentence.currentword3 = list[math.random(1, #list)]
    end
until sentence.currentword3 ~= sentence.currentword2
repeat
    if sentence.currentword4 == sentence.currentword3 then
        sentence.currentword4 = list[math.random(1, #list)]
    end
until sentence.currentword4 ~= sentence.currentword3
repeat
    if sentence.currentword5 == sentence.currentword4 then
        sentence.currentword5 = list[math.random(1, #list)]
    end
until sentence.currentword5 ~= sentence.currentword4
repeat
    if sentence.currentword6 == sentence.currentword5 then
        sentence.currentword6 = list[math.random(1, #list)]
    end
until sentence.currentword6 ~= sentence.currentword5
repeat
    if sentence.currentword7 == sentence.currentword6 then
        sentence.currentword7 = list[math.random(1, #list)]
    end
until sentence.currentword7 ~= sentence.currentword6
repeat
    if sentence.currentword8 == sentence.currentword7 then
        sentence.currentword8 = list[math.random(1, #list)]
    end
until sentence.currentword8 ~= sentence.currentword7
repeat
    if sentence.currentword9 == sentence.currentword8 then
        sentence.currentword9 = list[math.random(1, #list)]
    end
until sentence.currentword9 ~= sentence.currentword8
repeat
    if sentence.currentword10 == sentence.currentword9 then
        sentence.currentword10 = list[math.random(1, #list)]
    end
until sentence.currentword10 ~= sentence.currentword9
repeat
    if sentence.currentword11 == sentence.currentword10 then
        sentence.currentword11 = list[math.random(1, #list)]
    end
until sentence.currentword11 ~= sentence.currentword10
repeat
    if sentence.currentword12 == sentence.currentword11 then
        sentence.currentword12 = list[math.random(1, #list)]
    end
until sentence.currentword12 ~= sentence.currentword11
repeat
    if sentence.currentword13 == sentence.currentword12 then
        sentence.currentword13 = list[math.random(1, #list)]
    end
until sentence.currentword13 ~= sentence.currentword12
repeat
    if sentence.currentword14 == sentence.currentword13 then
        sentence.currentword14 = list[math.random(1, #list)]
    end
until sentence.currentword14 ~= sentence.currentword13
repeat
    if sentence.currentword15 == sentence.currentword14 then
        sentence.currentword15 = list[math.random(1, #list)]
    end
until sentence.currentword15 ~= sentence.currentword14


print(sentence.currentword1 .. sentence.currentword2 .. sentence.currentword3 .. sentence.currentword4 .. sentence.currentword5 .. sentence.currentword6 .. sentence.currentword7 .. sentence.currentword8 .. sentence.currentword9 .. sentence.currentword10 .. sentence.currentword11 .. sentence.currentword12 .. sentence.currentword13 .. sentence.currentword14 .. sentence.currentword15)
