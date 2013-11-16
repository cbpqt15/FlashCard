//
//  FCCard.h
//  FlashCard
//
//  Created by Christoph on 10.11.13.
//  Copyright (c) 2013 Christoph. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FCCard : NSObject

@property (nonatomic, assign) BOOL isCorrect;
@property (nonatomic, strong) NSString *cardText;
@property (nonatomic, strong) NSMutableArray *answers;
@property (nonatomic) int correctAnswers;

- (id)initWithQuestion:(NSString *)question
                  answer: (NSString *)answer
            wrongAnswer1: (NSString *)wrongAnswer1  
            wrongAnswer2: (NSString *)wrongAnswer2;

- (void)recordAnswer:(int)answerNum;

@end
