function pillar_notes_OnLoad(self, event,...) 
    self:RegisterEvent("ADDON_LOADED")	
end
 function pillar_notes_OnEvent(self, event, ...) 
     if event == "ADDON_LOADED" and ... == "pillar_notes" then
        self:UnregisterEvent("ADDON_LOADED")		
	    pillar_notes:SetSize(100, 50)
            pillar_notes:SetPoint("TOP", "Minimap", "BOTTOM", 5, -5)
    	    pillar_notes:SetScript("OnUpdate", UpdateCoordinates)
	    local coordsFont =    pillar_notes:CreateFontString("eCoordinatesFontString", "ARTWORK", "GameFontNormal")
 	    pillar_notes:SetPoint("CENTER", "eCoordinates", "CENTER", 0, 0)
	    coordsFont:Show()
 	    eCoordinates:Show()		
	end
end
