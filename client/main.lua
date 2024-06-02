local activeUI = false

function showUI(key, message)
    if key == nil then
        key = "Na"
    end
    if message == nil then
        message = "No message"
    end
    SendNUIMessage({
        type = "show",
        key = key,
        message = message
    })
end

function hideUI()
    SendNUIMessage({
        type = "hide"
    })
end