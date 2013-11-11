//
//  FCGame.h
//  FlashCard
//
//  Created by Christoph on 10.11.13.
//  Copyright (c) 2013 Christoph. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FCCard.h"
#import "FCAnswerKey.h"

@interface FCGame : NSObject

@property (nonatomic, strong) NSMutableArray *cards;
@property (nonatomic) int currentCard;

- (id)initWithcards:(NSMutableArray *)c;
- (BOOL)hasMoreCards;
- (FCCard *)getNextCard;
- (int)getNumRight;
- (int)getNumWrong;

@end
