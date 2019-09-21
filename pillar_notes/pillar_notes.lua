function pillar_notes_OnLoad(self, event,...) 
    self:RegisterEvent("ADDON_LOADED")	
end
 function pillar_notes_OnEvent(self, event, ...) 
     if event == "ADDON_LOADED" and ... == "pillar_notes" then
        self:UnregisterEvent("ADDON_LOADED")		
	    Pillar_Notes_Frame:Show()
	end
end
