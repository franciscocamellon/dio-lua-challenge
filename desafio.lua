os.execute("chcp 65001")

local headCard = "=========================================================="
local startLine = "| "
local tabStartLine = "|    "

local monster = "CREEPER"
local description = "Um monstro com o temperamento explosivo."
local emoji = "💥"
local sound = "Tsssssssss"
local favoriteTime = "Noturno"
local item = "Pólvora"

local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

local function returnProgressBar(attribute)
    local emptyChar = "⬛"
    local fullChar = "⬜"
    local progressBar = ""

    for i = 1, 10, 1 do
        if i <= attribute then
            progressBar = progressBar .. fullChar
        else
            progressBar = progressBar .. emptyChar
        end
    end

    return progressBar
end

local function printHeader()
    print(startLine)
    print(startLine .. monster)
    print(startLine .. description)
    print(startLine)
end

local function printMonsterCharacteristics()
    print(startLine .. "Som:              " .. sound)
    print(startLine .. "Item:             " .. item)
    print(startLine .. "Emoji Favorito:   " .. emoji)
    print(startLine .. "Horário Favorito: " .. favoriteTime)
    print(startLine)
end

local function printMonsterAttributes()
    print(startLine .. "Atributos")
    print(tabStartLine .. "Ataque:       " .. returnProgressBar(attackAttribute))
    print(tabStartLine .. "Defesa:       " .. returnProgressBar(defenseAttribute))
    print(tabStartLine .. "Vida:         " .. returnProgressBar(lifeAttribute))
    print(tabStartLine .. "Velocidade:   " .. returnProgressBar(speedAttribute))
    print(tabStartLine .. "Inteligência: " .. returnProgressBar(inteligenceAttribute))
    print(startLine)
end

local function returnCard()
    print(headCard)
    printHeader()
    printMonsterCharacteristics()
    printMonsterAttributes()
    print(headCard)
end

returnCard()