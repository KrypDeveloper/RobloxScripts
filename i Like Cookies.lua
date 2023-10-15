local f=function()
    local p=game.PlaceId
    if p==14437001043 then
        local c=game.Players.LocalPlayer.Character
        if c then
            c:MoveTo(Vector3.new(-94.03,4.80,56.05))
        end
    elseif p==14896802601 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/CHOOSE.lua",true))()
    else
        print("Nenhum jogo correspondente encontrado para este PlaceID.")
    end
end

f()
