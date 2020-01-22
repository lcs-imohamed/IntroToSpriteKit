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
if let rain = SKEmitterNode(fileNamed: "Snow") {
    snowstorm.position = CGPoint(x: scene.size.width / 2 , y: scene.size.height)
    scene.addChild(snowstorm)
}

//Add girl sprite to scene and position
let girl = SKSpriteNode(imageNamed: "2d-sprite-png-10_14")
girl.position = CGPoint(x: 50, y: 70)
scene.addChild(girl)

//Create walking textures
var walkingTextures
blastOffTextures.append(SKTexture(imageNamed: "rocket_0.png"))
//: [Next](@next)
