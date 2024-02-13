local Flipper = {
	SingleMotor = loadstring(game:HttpGet("https://raw.githubusercontent.com/sumidassz/FluentUI_Customized/main/Packages/Flipper/BaseMotor.lua")),
	GroupMotor = loadstring(game:HttpGet("https://raw.githubusercontent.com/sumidassz/FluentUI_Customized/main/Packages/Flipper/GroupMotor.lua")),

	Instant = loadstring(game:HttpGet("https://raw.githubusercontent.com/sumidassz/FluentUI_Customized/main/Packages/Flipper/Instant.lua")),
	Linear = loadstring(game:HttpGet("https://raw.githubusercontent.com/sumidassz/FluentUI_Customized/main/Packages/Flipper/Linear.lua")),
	Spring = loadstring(game:HttpGet("https://raw.githubusercontent.com/sumidassz/FluentUI_Customized/main/Packages/Flipper/Spring.lua")),

	isMotor = loadstring(game:HttpGet("https://raw.githubusercontent.com/sumidassz/FluentUI_Customized/main/Packages/Flipper/isMotor.lua")),
}

return Flipper
