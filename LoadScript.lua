function GetFruitInvenroty()
    function WriteFruitInventory()
        if not isfile("InventoryFruit.json") then
            writefile("InventoryFruit.json", game:GetService("HttpService"):JSONEncode(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")))
        end
    end

    function LoadInventory()
        if isfile("InventoryFruit.json") then
            for i,v in pairs(game:GetService("HttpService"):JSONDecode(readfile("InventoryFruit.json"))) do
                print(v.Name)
            end
        else
            WriteFruitInventory()
        end
    end
    WriteFruitInventory()
    LoadInventory()
end

GetFruitInvenroty()
