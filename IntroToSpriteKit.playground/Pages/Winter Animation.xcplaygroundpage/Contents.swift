//: [Previous](@previous)
// Required frameworks
import PlaygroundSupport    // Allows playground to show live view
import SpriteKit            // Provides 2D graphics classes

// Define the animation size, scene, and scene color
let frame = CGRect(x: 0, y: 0, width: 400, height: 300)
var scene = SKScene(size: frame.size)

// Define, configure, and present the scene
let view = SKView(frame: frame)
view.showsNodeCount = true
view.presentScene(scene)

//Add winter background to the scene
let background = SKSpriteNode(imageNamed: "winterAnimationImage")
background.position = CGPoint(x:scene.size.width / 2, y:scene.size.height / 2)
scene.addChild(background)

//Increase background size
let scaleUpAction = SKAction.scale(to: 1.78, duration: 0)
background.run(scaleUpAction)


// Show the view in the live view area
PlaygroundSupport.PlaygroundPage.current.liveView = view

//Add snow particle effect
if let snowstorm = SKEmitterNode(fileNamed: "Snow") {
    snowstorm.position = CGPoint(x: scene.size.width / 2 , y: scene.size.height)
    scene.addChild(snowstorm)
}

//Add girl sprite to scene and position
let girl = SKSpriteNode(imageNamed: "2d-sprite-png-10_14")
girl.position = CGPoint(x: 50, y: 70)
scene.addChild(girl)

//Create walking textures
var walkingTextures : [SKTexture] = []
walkingTextures.append(SKTexture(imageNamed: "2d-sprite-png-10_02"))
walkingTextures.append(SKTexture(imageNamed: "2d-sprite-png-10_3"))
walkingTextures.append(SKTexture(imageNamed: "2d-sprite-png-10_03"))
walkingTextures.append(SKTexture(imageNamed: "2d-sprite-png-10_04"))
walkingTextures.append(SKTexture(imageNamed: "2d-sprite-png-10_05"))
walkingTextures.append(SKTexture(imageNamed: "2d-sprite-png-10_06"))
walkingTextures.append(SKTexture(imageNamed: "2d-sprite-png-10_07"))
walkingTextures.append(SKTexture(imageNamed: "2d-sprite-png-10_08"))
walkingTextures.append(SKTexture(imageNamed: "2d-sprite-png-10_09"))
walkingTextures.append(SKTexture(imageNamed: "2d-sprite-png-10_10"))


//Create action using walk textures.
let actionWalkingAnimation = SKAction.animate(with: walkingTextures, timePerFrame: 0.2, resize: true, restore: true)
//Move forward when walking
let actionMoveForward = SKAction.moveBy(x: 10, y: 0, duration: 0.2)

//Move forward eight times when walking
let actionMoveForwardEightTimes = SKAction.repeat(actionMoveForward, count: 8)

//Combine walking animation and move forward to walk and move forward
let actionWalkAndMove = SKAction.group([actionWalkingAnimation, actionMoveForwardEightTimes])

//Repeat the walk and move animation 7 times
let actionWalkAndMoveSevenTimes = SKAction.repeat(actionWalkAndMove, count: 7)

//Run the animation
girl.run(actionWalkAndMove)

//: [Next](@next)
