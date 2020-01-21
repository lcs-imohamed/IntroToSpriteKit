//: [Previous](@previous)
// Required frameworks
import PlaygroundSupport    // Allows playground to show live view
import SpriteKit            // Provides 2D graphics classes

// Define the animation size, scene, and scene color
let frame = CGRect(x: 0, y: 0, width: 400, height: 300)
class gameScene: SKScene {
    var background  = SKSpriteNode(imageNamed: "winterAnimationImage")
        background.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        addChild(background)
    
}
var scene = SKScene(size: frame.size)

// Define, configure, and present the scene
let view = SKView(frame: frame)
view.showsNodeCount = true
view.presentScene(scene)

// Show the view in the live view area
PlaygroundSupport.PlaygroundPage.current.liveView = view

//Add snow particle effect
if let snowstorm = SKEmitterNode(fileNamed: "Snow") {
    snowstorm.position = CGPoint(x: scene.size.width / 2 , y: scene.size.height)
    scene.addChild(snowstorm)
}

//: [Next](@next)
