local a = Instance.new("BindableFunction")
function a.OnInvoke(b)
    if b == "Yes" then
        if setclipboard then
            setclipboard("https://discord.gg/tg9uymesSZ")
            game.StarterGui:SetCore(
                "SendNotification",
                {Title = "System-Fludex", Text = "invite copied to clipboard", Duration = 5}
            )
        else
            game.StarterGui:SetCore(
                "SendNotification",
                {Title = "System-Fludex", Text = "Discord Invite:\nhttps://discord.gg/tg9uymesSZ", Duration = 25}
            )
        end
        if syn.request or http_request or request or http.request then
            local c = syn.request or http_request or request or http.request or nil
            if c ~= nil then
                for d = 6463, 6472, 1 do
                    local e = "http://127.0.0.1:" .. tostring(d) .. "/rpc?v=1"
                    local http = game:GetService("HttpService")
                    local f = {
                        cmd = "INVITE_BROWSER",
                        args = {["code"] = "tg9uymesSZ"},
                        nonce = string.lower(http:GenerateGUID(false))
                    }
                    local g = http:JSONEncode(f)
                    c(
                        {
                            Url = e,
                            Method = "POST",
                            Body = g,
                            Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"}
                        }
                    )
                end
            end
        end
        game.StarterGui:SetCore("SendNotification", {Title = "System-Fludex", Text = "ok :/", Duration = 10})
    elseif b == "No" then
        game.StarterGui:SetCore("SendNotification", {Title = "System-Fludex", Text = "ok :/", Duration = 10})
    end
end
game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "System-Fludex",
        Text = "Join or server for the new script!",
        Duration = 20,
        Callback = a,
        Button1 = "Yes",
        Button2 = "No"
    }
)
