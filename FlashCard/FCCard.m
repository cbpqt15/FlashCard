//
//  FCCard.m
//  FlashCard
//
//  Created by Christoph on 10.11.13.
//  Copyright (c) 2013 Christoph. All rights reserved.
//

#import "FCCard.h"

@implementation FCCard

- (id)initWithQuestion:(NSString *)question
                  answer: (NSString *)answer
            wrongAnswer1: (NSString *)wrongAnswer1
            wrongAnswer2: (NSString *)wrongAnswer2
{
    if (self = [super init])
    {
        self.cardText = question;
        
        self.answers = [[NSMutableArray alloc] init];
        
        [self.answers addObject:answer];
        [self.answers addObject:wrongAnswer1];
        [self.answers addObject:wrongAnswer2];
        
        int randomAnswerSlot = arc4random() % 3;
       
        [self.answers exchangeObjectAtIndex:0 withObjectAtIndex:randomAnswerSlot];
        
        self.correctAnswers = randomAnswerSlot;
    }
    
    return self;
}

- (void)recordAnswer:(int)answerNum
{
    
}

@end
