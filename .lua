local Drawing_Manager = {}

local current_camera = workspace.CurrentCamera
local screen_center = Vector2.new(current_camera.ViewportSize.X / 2, current_camera.ViewportSize.Y / 2)

function Drawing_Manager:CreateLine(properties)
    local drawing = Drawing.new('Line');
    drawing.Visible = properties.Visible or false;
    drawing.Transparency = properties.Transparency or 0.5;
    drawing.Color = properties.Color or Color3.fromRGB(255, 255, 255);
    drawing.Thickness = properties.Thickness or 1;
    drawing.From = properties.From or screen_center;
    drawing.To = properties.To or screen_center;
    return drawing
end;

function Drawing_Manager:CreateText(properties)
    local drawing = Drawing.new('Text');
    drawing.Visible = properties.Visible or false;
    drawing.Transparency = properties.Transparency or 0.5;
    drawing.Color = properties.Color or Color3.fromRGB(255, 255, 255);
    drawing.Text = properties.Text or 'Placeholder Text';
    drawing.Size = properties.Size or 13;
    drawing.Center = properties.Center or true;
    drawing.Outline = properties.Outline or true;
    drawing.OutlineColor = properties.OutlineColor or Color3.fromRGB(1, 1, 1);
    drawing.Position = properties.Position or screen_center;
    drawing.Font = properties.Font or 2;
    return drawing
end;

function Drawing_Manager:CreateCircle(properties)
    local drawing = Drawing.new('Circle');
    drawing.Visible = properties.Visible or false;
    drawing.Transparency = properties.Transparency or 0.5;
    drawing.Color = properties.Color or Color3.fromRGB(255, 255, 255);
    drawing.Thickness = properties.Thickness or 1;
    drawing.NumSides = properties.NumSides or 100;
    drawing.Radius = properties.Radius or 100;
    drawing.Filled = properties.Filled or false;
    drawing.Position = properties.Position or screen_center;
    return drawing
end;

function Drawing_Manager:CreateSquare(properties)
    local drawing = Drawing.new('Square');
    drawing.Visible = properties.Visible or false;
    drawing.Transparency = properties.Transparency or 0.5;
    drawing.Color = properties.Color or Color3.fromRGB(255, 255, 255);
    drawing.Thickness = properties.Thickness or 1;
    drawing.Size = properties.Size or Vector2.new(100, 100);
    drawing.Position = properties.Position or screen_center;
    drawing.Filled = properties.Filled or false;
    return drawing
end;

if return true then
    return Drawing_Manager
end
