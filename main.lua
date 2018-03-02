-----------------------------------------------------------------------------------------
--
-- Created by Momin Ahmed
-- Created on March 1st 2018
-- after giving the values of radius it will solve the area and the circumference of a 
-- circle
--
-----------------------------------------------------------------------------------------
-- 

local RadiusOfCircleTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
RadiusOfCircleTextField.id = "Radius textField" 

local AreaOfCircleTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 150, native.systemFont, 75 )
AreaOfCircleTextField.id = "area textField"
AreaOfCircleTextField:setFillColor( 1, 1, 1 )

local CircumferenceOfCircleTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 250, native.systemFont, 75 )
CircumferenceOfCircleTextField.id = "Circumference textField"
CircumferenceOfCircleTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
 
    local RadiusOfCircle
    local AreaOfCircle
    local CircumferenceOfCircle
 
    RadiusOfCircle = RadiusOfCircleTextField.text
    AreaOfCircle = RadiusOfCircle * RadiusOfCircle * 3.142
    
    AreaOfCircleTextField.text = "The area is " .. AreaOfCircle

    CircumferenceOfCircle = 2 * RadiusOfCircle * 3.142

    CircumferenceOfCircleTextField.text = "The Circumference is " .. CircumferenceOfCircle
    

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )