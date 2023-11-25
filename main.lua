 -- List of words that can be used in output
local list = {"gyatt ","sigma ","ohio ","kai cenat ","rizz ","fanum tax ","skibidi "}
-- for caching the words
local words = {}
local sentence = ''

-- random length of sentence
for i = 1, math.random(5,50) do
	-- generates a word from the list
	local word = list[math.random(1, #list)]
	
	-- checks if the generated word is same as the previous generated word, 
	if words[i-1] ~= word then
		-- concatenates generated word to the sentence 
		sentence = sentence .. word
	end
end

print(sentence)
