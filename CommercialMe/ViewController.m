//
//  ViewController.m
//  CommercialMe
//
//  Created by Kody O'Connell on 11/20/15.
//  Copyright © 2015 Kody O'Connell. All rights reserved.
//

#import "ViewController.h"
#import "Story.h"

@interface ViewController () {
    Story *myStory;
}

@end

@implementation ViewController

- (IBAction)nextPressed:(id)sender {
    [myStory next];
    [self updateView];
}

- (IBAction)backPressed:(id)sender {
    [myStory back];
    [self updateView];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    //make the story object
    myStory = [[Story alloc] init];
    
    [self updateView];
    
    
    
}

-(void) updateView {
    
    //set the window text to the story text
    self.textWindow.text = myStory.text;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
