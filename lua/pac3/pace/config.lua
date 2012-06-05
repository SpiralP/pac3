if net then
	pace.PartIcons =
	{
		text = "icon16/text_align_center.png",
		bone = "widgets/bone_small.png",
		clip = "icon16/cut.png",
		light = "icon16/lightbulb.png",
		sprite = "icon16/layers.png",
		bone = "icon16/connect.png",
		effect = "icon16/wand.png",
		model = "icon16/shape_square.png",
		animation = "icon16/eye.png",
		player = "icon16/user.png",
		group = "icon16/world.png",
		trail = "icon16/arrow_undo.png",
		event = "icon16/clock.png",
		sunbeams = "icon16/sun.png",
	}
else
	pace.PartIcons =
	{
		text = "gui/silkicons/page",
		bone = "gui/silkicons/anchor",
		light = "gui/silkicons/star",
	}
end

pace.PropertyOrder =
{
	"Name",
	"Description",
	"Hide",
	"ParentName",
	"WeaponClass",
	"HideWeaponClass",
	"Bone",
	"Position",
	"Angles",
	"AngleVelocity",
	"ModifyAngles",
	"Size",
	"Scale",
	"Color",
	"Brightness",
	"Alpha",
	"Min",
	"Max",
	"Loop",
	"PingPongLoop",
}

pace.GridSizePos = 4
pace.GridSizeAng = 45