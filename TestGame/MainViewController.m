//
//  ViewController.m
//  TestGame
//
//  Created by Bijit Halder on 9/22/14.
//  Copyright (c) 2014 Bijit Halder. All rights reserved.
//

#import "MainViewController.h"
#import "TestScene.h"

@implementation MainViewController

- (void)loadView {
    [super loadView];
    // view customization code
    [self setView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    
    // Create and configure the scene.
    SKScene * scene = [TestScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark -  Local View Methods Implememtation
- (void)setView {
    SKView *skView = [[SKView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    self.view = skView;
}

@end
