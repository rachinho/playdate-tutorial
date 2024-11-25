import "CoreLibs/object"
import "CoreLibs/sprites"
import "CoreLibs/graphics"

import "sprites"
import "menu"

local gfx <const> = playdate.graphics
local sprite <const> = gfx.sprite

local mySpriteImage = gfx.image.new("assets/ship")
local mySprite = sprite.new(mySpriteImage)

local player = Player()

local function init()
    player:add()

    showMenu()
end

function playdate.update()
    sprite.update()

    if playdate.buttonJustPressed(playdate.kButtonA) then
        hideMenu()
    end
end

init ()