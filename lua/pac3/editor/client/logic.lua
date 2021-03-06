pace.current_part = pac.NULL
pace.properties = NULL
pace.tree = NULL

local L = pace.LanguageString

function pace.PopulateProperties(part)
	if pace.properties:IsValid() then
		pace.properties:Populate(part)
		for k,v in pairs(pace.extra_populates) do
			v.func(v.pnl)
		end
		pace.extra_populates = {}

		pace.Editor:InvalidateLayout()
	end
end

function pace.OnDraw()
	if not pace.editing_viewmodel then
		pace.mctrl.HUDPaint()
	end
end

pac.AddHook("PostDrawViewModel", "pace_viewmodel_edit", function()
	if pace.editing_viewmodel then
		cam.Start2D()
			pace.mctrl.HUDPaint()
		cam.End2D()
	end
end)

function pace.OnOpenEditor()
	pace.SetViewPos(LocalPlayer():EyePos())
	pace.SetViewAngles(LocalPlayer():EyeAngles())
	pace.EnableView(true)

	if table.Count(pac.GetLocalParts()) == 0 then
		pace.Call("CreatePart", "group", L"my outfit")
	end

	pace.TrySelectPart()

	pace.ResetView()
end

function pace.OnCloseEditor()
	pace.EnableView(false)
	pace.StopSelect()
	pace.SafeRemoveSpecialPanel()
end

function pace.TrySelectPart()
	local part = select(2, next(pac.GetLocalParts()))

	local found = pac.GetPartFromUniqueID(pac.LocalPlayer:UniqueID(), pace.current_part_uid)

	if found:IsValid() and found:GetPlayerOwner() == part:GetPlayerOwner() then
		part = found
	end

	if part then
		pace.Call("PartSelected", part)
	end
end
