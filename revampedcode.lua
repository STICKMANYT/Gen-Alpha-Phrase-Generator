local capitalized = false
local dihtionary = {
    "67",
    "genuinely",
    "kirkified",
    "Triple T",
    "chopped chin",
    "degloved",
    "property in egypt",
    "Adrian",
    "W speed",
    '41',
    '61',
    'in the big 25',
    "but I can't prove it",
    "domer"
}
local wordamount = 20

local function CreateSentence(capitalized, dictionary, wordamount)
    local sentence = ""

    local function split_to_table()
        local words = {}
        for word in sentence:gmatch("%S+") do
            table.insert(words, word)
        end
        return words
    end

    local function RollWord()
        local sentencetable = split_to_table()
        local previousword = sentencetable[#sentencetable]
        local word = dictionary[love.math.random(1, #dictionary)]

        if (previousword == nil) and (capitalized == true) then
            word = word:gsub("^%l", string.upper)
        end

        return word, previousword
    end

    for i = 1, wordamount do
        local word, previousword = nil, nil
        repeat
            word, previousword = RollWord()
        until word ~= previousword
        
        sentence = sentence .. word .. " "
    end

    return sentence
end

print(CreateSentence(true, dihtionary, wordamount))

--[[
amount of lines (without bullshit): ~37
time: ~1:07 hours
]]

s = CreateSentence(true, dihtionary, wordamount)
width = love.graphics.getWidth()
height = love.graphics.getHeight()
time = 0
delta = 0

love.window.updateMode(500,500,{resizable = true})

function love.update(dt)
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()

    time = (time + dt)
 
    if time >= 1/20 then
        time = time % 1/20
        s = CreateSentence(true, dihtionary, wordamount)
        delta = dt
    end
end

function love.draw()
    love.graphics.printf(s, width/8,height/2,width/2,"center",0,1.5,1.5)
    love.graphics.print("Time to process: " .. delta,width/4,height-20)
end
