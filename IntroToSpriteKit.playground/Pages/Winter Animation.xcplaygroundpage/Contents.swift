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

//Add city background to the scene
let background = SKSpriteNode(imageNamed: "cityScapeBackGround")
background.position = CGPoint(x:scene.size.width / 2, y:scene.size.height / 2)
scene.addChild(background)

//Increase background size
let scaleUpAction = SKAction.scale(to: 2.25, duration: 0)
background.run(scaleUpAction)


// Show the view in the live view area
PlaygroundSupport.PlaygroundPage.current.liveView = view

//Add snow particle effect
if let rainstorm = SKEmitterNode(fileNamed: "Rain") {
    rainstorm.position = CGPoint(x: scene.size.width / 2 , y: scene.size.height)
    scene.addChild(rainstorm)
}


//Add girl sprite to scene and position
let girl = SKSpriteNode(imageNamed: "2d-sprite-png-10_14")
girl.position = CGPoint(x: 50, y: 70)
scene.addChild(girl)

//Create walking textures for girl
var walkingTexturesGirl : [SKTexture] = []
walkingTexturesGirl.append(SKTexture(imageNamed: "2d-sprite-png-10_02"))
walkingTexturesGirl.append(SKTexture(imageNamed: "2d-sprite-png-10_3"))
walkingTexturesGirl.append(SKTexture(imageNamed: "2d-sprite-png-10_03"))
walkingTexturesGirl.append(SKTexture(imageNamed: "2d-sprite-png-10_04"))
walkingTexturesGirl.append(SKTexture(imageNamed: "2d-sprite-png-10_05"))
walkingTexturesGirl.append(SKTexture(imageNamed: "2d-sprite-png-10_06"))
walkingTexturesGirl.append(SKTexture(imageNamed: "2d-sprite-png-10_07"))



//Create action using walk textures for girl sprite.
let actionWalkingAnimation = SKAction.animate(with: walkingTexturesGirl, timePerFrame: 0.2, resize: true, restore: true)
//repeat walk animation twice
let actionWalkTwoTimes = SKAction.repeat(actionWalkingAnimation, count: 2)
//Move forward when walking
let actionMoveForward = SKAction.moveBy(x: 10, y: 0, duration: 0.2)

//Move forward fifteen times when walking
let actionMoveForwardFifteenTimes = SKAction.repeat(actionMoveForward, count: 15)

//Combine walking animation and move forward to walk and move forward
let actionWalkAndMove = SKAction.group([actionWalkTwoTimes, actionMoveForwardFifteenTimes])

//Repeat the walk and move animation 7 times
let actionWalkAndMoveSevenTimes = SKAction.repeat(actionWalkAndMove, count: 7)

//Run the animation
girl.run(actionWalkAndMove)

//Add boy sprite to scene and position
let boy = SKSpriteNode(imageNamed: "animate-drawing-guy-walking-1_02")
boy.position = CGPoint(x: 350, y: 70)
scene.addChild(boy)

//decrease size of boy sprite
let scaleDownAction = SKAction.scale(to: 0.4, duration: 0)
boy.run(scaleDownAction)

//add walking textures for walking animation of boy sprite
var walkingTexturesBoy : [SKTexture] = []
walkingTexturesBoy.append(SKTexture(imageNamed: "animate-drawing-guy-walking-1_03"))
walkingTexturesBoy.append(SKTexture(imageNamed: "animate-drawing-guy-walking-1_04"))
walkingTexturesBoy.append(SKTexture(imageNamed: "animate-drawing-guy-walking-1_05"))
walkingTexturesBoy.append(SKTexture(imageNamed: "animate-drawing-guy-walking-1_06"))
walkingTexturesBoy.append(SKTexture(imageNamed: "animate-drawing-guy-walking-1_07"))
walkingTexturesBoy.append(SKTexture(imageNamed: "animate-drawing-guy-walking-1_08"))

//Create action using walk textures for boy sprite.
let actionBoyWalkingAnimation = SKAction.animate(with: walkingTexturesBoy, timePerFrame: 0.2, resize: true, restore: true)

//repeat walk animation twice
let actionBoyWalkTwoTimes = SKAction.repeat(actionBoyWalkingAnimation, count: 2)

//Move forward when walking
let actionBoyMoveForward = SKAction.moveBy(x: -13, y: 0, duration: 0.2)

//Move forward eight times when walking
let actionBoyMoveForwardEightTimes = SKAction.repeat(actionBoyMoveForward, count: 8)

//Combine walking animation and move forward to walk and move forward
let actionBoyWalkAndMove = SKAction.group([actionBoyWalkTwoTimes, actionBoyMoveForwardEightTimes])

//Repeat the walk and move animation 7 times
let actionBoyWalkAndMoveSevenTimes = SKAction.repeat(actionBoyWalkAndMove, count: 7)

//Run the animation
boy.run(actionBoyWalkAndMove)



//add heart sprite to scene
let heart = SKSpriteNode(imageNamed: "heart_9_3")
heart.position = CGPoint(x: 220, y: scene.size.height / 2)
scene.addChild(heart)

//change heart size
let scaleDownHeartAction = SKAction.scale(to: 0.5, duration: 0)
heart.run(scaleDownHeartAction)

//add heart textures
var heartTextures : [SKTexture] = []
heartTextures.append(SKTexture(imageNamed: "heart_9_02"))
heartTextures.append(SKTexture(imageNamed: "heart_9_03"))
heartTextures.append(SKTexture(imageNamed: "heart_9_04"))

//wait until other animations have finished
let actionHeartWait(duration: 2)
//create action using heart textures

let actionHeartGrowingAnimation = SKAction.animate(with: heartTextures, timePerFrame: 0.2, resize: true, restore: true)

//have heart run action
heart.run(actionHeartGrowingAnimation)
//(forDuration duration: TimeInterval) -> SKAction
//: [Next](@next)
