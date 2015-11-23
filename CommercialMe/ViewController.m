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


- (IBAction)scrollDownPressed:(id)sender {
    NSLog(@"Scroll down pressed! ;)");
}

- (IBAction)nextPressed:(id)sender {
    if ([self canMoveUp]) {
        self.pageNumber++;
        NSLog(@"changed page number to %d", self.pageNumber);
    }
    [self updateView];
}

- (IBAction)backPressed:(id)sender {
    if ([self canMoveDown]) {
        self.pageNumber--;
        NSLog(@"changed page number to %d", self.pageNumber);
    }
    [self updateView];
}


-(BOOL) canMoveUp {
    int attemptedPage = self.pageNumber +1;
    if (attemptedPage >= myStory.textArray.count) {
        NSLog(@"attemped page out of range");
        return false;
    }
    return true;
}

-(BOOL) canMoveDown {
    int attemptedPage = self.pageNumber -1;
    if (attemptedPage < 0) {
        NSLog(@"attemped page out of range");
        return false;
    }
    
    return true;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pageNumber = 0;
    
    //make the story object
    myStory = [[Story alloc] init];
    
    [self updateView];
    
    
    
}

-(void) updateView {
    self.textWindow.text = [myStory.textArray objectAtIndex:self.pageNumber];
    NSLog(@"Updated text to array from page number %d", self.pageNumber);
    //NSLog(@"updated text to %@", [myStory.textArray objectAtIndex:self.pageNumber]);
}



@end
