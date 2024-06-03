
![thumbnail-LamaInteractUI](https://github.com/LamaDevelopment/LamaInteractUI/assets/72563937/5678bf96-81c1-4b8d-87a5-5519d5e79890)

# LamaInteractUI
A simple interaction UI for FiveM

## Links
Discord - [here](https://discord.gg/umH2Xx8cFz)<br>
Tebex - [here](https://store.lamadev.shop/)<br>
Forum Post - [here](https://forum.cfx.re/t/free-standalone-interact-ui-lama-development/5238931)

## Usage

#### Show UI with text and key
```lua
exports.LamaInteractUI:showUI(key, message)

-- example

exports.LamaInteractUI:showUI("E", "Press to interact")
```

#### Hide UI
```lua
exports.LamaInteractUI:hideUI()
```

#### Example script
```lua
local activeUI = false

Citizen.CreateThread(function()
    while true do
        local playerCoords = GetEntityCoords(PlayerPedId())
        local markerCoords = vector3(169.2974, -884.4358, 29.5605)
        local distance = #(playerCoords - markerCoords)

        if distance <= 100 then
            DrawMarker(1, markerCoords2.x, markerCoords2.y, markerCoords2.z, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 255, 0, 0, 200, 0, 0, 0, 0)

            if distance < 1.5 then
                if not activeUI then
                    exports.LamaInteractUI:showUI("ALT + B", "Press to interact")
                    activeUI = true
                end
                if IsControlJustPressed(0, 38) then
                    exports.LamaInteractUI:hideUI()
                    activeUI = false

                    -- Do something here
                end
            else
                if activeUI then
                    exports.LamaInteractUI:hideUI()
                    activeUI = false
                end
            end
        end

        Citizen.Wait(0)
    end
end)
```

## Preview
![Screenshot 2024-06-02 221552](https://github.com/LamaDevelopment/LamaInteractUI/assets/72563937/f621d3e1-a0f3-4e65-8662-4178d17f7386)

