import GameplayKit
import SpriteKit


class Island:GameObject{

    
    init() {
        super.init(imageString: "island", initialScale: 2.0)
        Start()
    }
    
    override func Start() {
        zPosition = Layer.island.rawValue
        verticalSpeed = 5
        Reset()
    }
    
    override func CheckBounds() {
        if(position.y <= -876){
            Reset()

        }
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    
    func Move(){
        self.position.y -= verticalSpeed!
    }
    

    override func Reset() {
        position.y = 876
        let randX:Int = (randomSource?.nextInt(upperBound: 626))!-313
        position.x = CGFloat(randX)
        isColliding = false
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
