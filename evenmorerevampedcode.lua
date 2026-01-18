local capitalized = true
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
    "domer",
    "lowkey",
    "son",
    "niche",
    "unc",
    "neph",
    "ts"
}
local wordamount = 20

local function CreateSentence(capitalized, dictionary, wordamount)
    local sentence = ""
    local words = {}

    local function RollWord(i)
        local word = dictionary[math.random(1,#dictionary)]
            
        repeat
            word = dictionary[math.random(1,#dictionary)]
        until words[i-1] ~= word 

        return word
    end

    for i = 1, wordamount do
        local word = RollWord(i)
        words[i] = word

        if i == 1 then
            word = word:gsub("^%l", string.upper)
        end

        sentence = sentence .. word .. " "
    end

    return sentence
end

--[[]]

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
