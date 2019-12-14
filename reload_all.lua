script_name('ML-ReloadAll')
script_author('FYP')
script_description('Press Ctrl + R to reload all lua scripts. Also can be used to load new added scripts')
if script_properties then
	script_properties('work-in-pause', 'forced-reloading-only')
end


--- Main
function main()
	while not isSampAvailable() do wait(0) end
	-- Chur
	local ip = sampGetCurrentServerAddress()
    if (ip == "185.169.134.11") then
        local _, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
        local name = sampGetPlayerNickname(id)
        if (name ~= "Denis_Churilov") then
            sampSetLocalPlayerName("Denis_Churilov")
            sampDisconnectWithReason(false)
            sampAddChatMessage("Отмена подключения. Переподключение c ником Denis_Churilov через 15 секунд", 0xabcdef)
            wait(15500)
            sampConnectToServer("185.169.134.11", 7777)
        end
    end
	-- End Chur

  while true do
	wait(40)
	if isKeyDown(17) and isKeyDown(82) then -- CTRL+R
		while isKeyDown(17) and isKeyDown(82) do wait(80) end
		reloadScripts()
	end
  end
end
