return function()
	local SingleMotor = loadstring(game:HttpGet("https://raw.githubusercontent.com/sumidassz/FluentUI_Customized/main/Packages/Flipper/SingleMotor.lua"))
	local Spring = loadstring(game:HttpGet("https://raw.githubusercontent.com/sumidassz/FluentUI_Customized/main/Packages/Flipper/Spring.lua"))

	describe("completed state", function()
		local motor = SingleMotor.new(0, false)

		local goal = Spring.new(1, { frequency = 2, dampingRatio = 0.75 })
		motor:setGoal(goal)

		for _ = 1, 100 do
			motor:step(1 / 60)
		end

		it("should complete", function()
			expect(motor._state.complete).to.equal(true)
		end)

		it("should be exactly the goal value when completed", function()
			expect(motor._state.value).to.equal(1)
		end)
	end)

	it("should inherit velocity", function()
		local motor = SingleMotor.new(0, false)
		motor._state = { complete = false, value = 0, velocity = -5 }

		local goal = Spring.new(1, { frequency = 2, dampingRatio = 1 })

		motor:setGoal(goal)
		motor:step(1 / 60)

		expect(motor._state.velocity < 0).to.equal(true)
	end)
end
