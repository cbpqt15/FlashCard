//
//  FCAnswerKey.m
//  FlashCard
//
//  Created by Christoph on 10.11.13.
//  Copyright (c) 2013 Christoph. All rights reserved.
//

#import "FCAnswerKey.h"

@implementation FCAnswerKey

- (NSMutableArray *) allocStateCards
{
    NSMutableArray *cards = [[NSMutableArray alloc] initWithObjects:
                             
                             [[FCCard alloc]initWithQuestion:@"Sachsen-Anhalt" answer:@"Leipzig" wrongAnswer1:@"Dresden" wrongAnswer2:@"Magdeburg"],

                             [[FCCard alloc]initWithQuestion:@"Baden-Württemberg" answer:@"Stuttgart" wrongAnswer1:@"Karlsruhe" wrongAnswer2:@"Freiburg"],
                             
                             [[FCCard alloc]initWithQuestion:@"Thüringen" answer:@"Erfurt" wrongAnswer1:@"Gera" wrongAnswer2:@"Weimar"],
                             
                             
                            nil ];
     
     return cards;
    
}

- (NSMutableArray *) allocCapitalCards
{
    NSMutableArray *cards = [[NSMutableArray alloc] initWithObjects:
                             
                             [[FCCard alloc]initWithQuestion:@"München" answer:@"Bayern" wrongAnswer1:@"Baden-Württemberg" wrongAnswer2:@"Hessen"],
                            
                             [[FCCard alloc]initWithQuestion:@"Dresden" answer:@"Sachsen" wrongAnswer1:@"Sachsen-Anhalt" wrongAnswer2:@"Thüringen"],

                             [[FCCard alloc]initWithQuestion:@"Mainz" answer:@"Rheinland-Pfalz" wrongAnswer1:@"Nordrhein-Westfahlen" wrongAnswer2:@"Bayern"],
                                                                     
                             nil ];
    
    return cards;
}

@end
