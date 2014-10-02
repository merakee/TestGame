//
//  MyScene.m
//  TestGame
//
//  Created by Bijit Halder on 9/22/14.
//  Copyright (c) 2014 Bijit Halder. All rights reserved.
//

#import "TestScene.h"

@implementation TestScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        myLabel.text = @"Hello, World!";
        myLabel.fontSize = 30;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        
        [self addChild:myLabel];
        
        
        spaceShip = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        spaceShip.size = CGSizeMake(25.0f,25.0f);
        spaceShip.position = CGPointMake(CGRectGetMidX(self.frame),
                                      CGRectGetMidY(self.frame));
        
         [self addChild:spaceShip];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKAction *action = [SKAction moveTo:location duration:0.5];
        [spaceShip runAction:[SKAction repeatAction:action count:1]];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
