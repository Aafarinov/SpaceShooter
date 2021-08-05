import SpriteKit

class MainMenue: SKScene {

    var starfield:SKEmitterNode!
    
    var newGameBtnNode:SKSpriteNode!
    var labelLevelNode:SKLabelNode!
    
    override func didMove(to view: SKView) {
        
        starfield = (self.childNode(withName: "starfiled_anim") as! SKEmitterNode)
        starfield.advanceSimulationTime(10)
        
        newGameBtnNode = (self.childNode(withName: "newGameBtn") as! SKSpriteNode)
        newGameBtnNode.texture = SKTexture(imageNamed: "newGameBtn")
                
        
}

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
         
        if let location = touch?.location(in: self) {
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "newGameBtn" {
                let transition = SKTransition.flipVertical(withDuration: 0.5)
                let gameScene = GameScene(size: UIScreen.main.bounds.size)
                self.view?.presentScene(gameScene, transition: transition)
            }
        }
    }
    
  
       
}

