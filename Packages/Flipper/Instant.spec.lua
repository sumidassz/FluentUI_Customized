return function()
	local Instant = loadstring(game:HttpGet("https://raw.githubusercontent.com/sumidassz/FluentUI_Customized/main/Packages/Flipper/Instant.lua"))

	it("should return a completed state with the provided value", function()
		local goal = Instant.new(1.23)
		local state = goal:step(0.1, { value = 0, complete = false })
		expect(state.complete).to.equal(true)
		expect(state.value).to.equal(1.23)
	end)
end
