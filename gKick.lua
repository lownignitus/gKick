--v1.0.3
local CF = CreateFrame
local addon_name = "gKick"

SLASH_GKICK1 = "/gKick" or "/gkick" or "/gk"

local gkEvents_table = {}

gkEvents_table.eventFrame = CF("Frame")
gkEvents_table.eventFrame:RegisterEvent("ADDON_LOADED")

gkEvents_table.eventFrame:SetScript("OnEvent", function(self, event, ...)
	gkEvents_table.eventFrame[event](self, ...)
end)

function gkEvents_table.eventFrame:ADDON_LOADED(AddOn)
	if AddOn ~= addon_name then
		return
	end

	gkEvents_table.eventFrame:UnregisterEvent("ADDON_LOADED")

	ChatFrame1:AddMessage(GetAddOnMetadata(addon_name, "Title") .. " " .. GetAddOnMetadata(addon_name, "Version"))
	ChatFrame1:AddMessage("|cff71C671To remove guild member type /gKick or /gk|r")
end

function SlashCmdList.GKICK(msg)
	GuildUninvite(msg)
end