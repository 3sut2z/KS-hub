local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:WaitForChild("Humanoid")

-- Coin Framing Function
local function frameCoin(coins)
for _, coin in pairs(coins) do
if coin:IsA("Part") and coin.Transparency == 0 then
local distance = (coin.Position - Character.HumanoidRootPart.Position).Magnitude
if distance < 10 then
Character.HumanoidRootPart.CFrame = CFrame.new(coin.Position)
wait(0.5)
Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
end
end
end
end

-- Ball Framing Function
local function frameBall(balls)
for _, ball in pairs(balls) do
if ball:IsA("Part") and ball.Transparency == 0 then
local distance = (ball.Position - Character.HumanoidRootPart.Position).Magnitude
if distance < 10 then
Character.HumanoidRootPart.CFrame = CFrame.new(ball.Position)
wait(0.5)
Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
end
end
end
end

-- Main Loop
while true do
wait(0.1)
local coins = game:GetService("Workspace"):FindFirstChild("Coins")
local balls = game:GetService("Workspace"):FindFirstChild("Balls")
if coins then frameCoin(coins:GetChildren()) end
if balls then frameBall(balls:GetChildren()) end
end
