//
//  Story.h
//  CommercialMe
//
//  Created by Kody O'Connell on 11/20/15.
//  Copyright © 2015 Kody O'Connell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Story : NSObject

@property (copy) NSString *text;
@property (copy) NSArray *textArray;
@property (copy) NSString *wholeStory;


-(void) setStoryText;


@end
