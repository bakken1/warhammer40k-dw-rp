function SCHEMA:HUDPaint()
/*
	if (LocalPlayer():isCombine() and !IsValid(nut.gui.char)) then
		if (!self.overlay) then
			self.overlay = Material("effects/combine_binocoverlay")
			self.overlay:SetFloat("$alpha", "0.3")
			self.overlay:Recompute()
		end

		surface.SetDrawColor(255, 255, 255)
		surface.SetMaterial(self.overlay)
		surface.DrawTexturedRect(0, 0, ScrW(), ScrH())

		local panel = nut.gui.combine

		if (IsValid(panel)) then
			local x, y = panel:GetPos()
			local w, h = panel:GetSize()
			local color = Color(255, 255, 255, panel:GetAlpha())

			for i = 1, #SCHEMA.displays do
				local data = SCHEMA.displays[i]

				if (data) then
					local y2 = y + (i * 22)

					if ((i * 22 + 24) > h) then
						table.remove(self.displays, 1)
					end

					surface.SetDrawColor(data.color.r, data.color.g, data.color.b, panel:GetAlpha() * (panel.mult or 0.2))
					surface.DrawRect(x, y2, w, 22)

					if (#data.realText != #data.text) then
						data.i = (data.i or 0) + 1
						data.realText = data.text:sub(1, data.i)
					end

					draw.SimpleText(data.realText, "BudgetLabel", x + 8, y2 + 12, color, 0, 1)
				end
			end
		end
	end
*/
end


function SCHEMA:OnChatReceived(client, chatType, text, anonymous)
	/*local class = nut.chat.classes[chatType]
	if (client:getChar():hasFlags("V") and class and class.filter == "ic") then
		return "<:: "..text.." ::>"
	end*/
end

local color = {}
color["$pp_colour_addr"] = 0
color["$pp_colour_addg"] = 0
color["$pp_colour_addb"] = 0
color["$pp_colour_brightness"] = -0.05
color["$pp_colour_contrast"] = 1
color["$pp_colour_colour"] = 0.65
color["$pp_colour_mulr"] = 0
color["$pp_colour_mulg"] = 0
color["$pp_colour_mulb"] = 0

function SCHEMA:RenderScreenspaceEffects()
	DrawColorModify(color)
end

function SCHEMA:LoadIntro()
	-- If skip intro is on
	--if (true) then 
		if (IsValid(nut.gui.char)) then
			vgui.Create("nutCharMenu")
		end
	--else

	--end
end
