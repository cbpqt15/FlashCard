//
//  FCViewController.h
//  FlashCard
//
//  Created by Christoph on 10.11.13.
//  Copyright (c) 2013 Christoph. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FCGame.h"
#import "FCAnswerKey.h"
#import "FCCardViewController.h"

@interface FCViewController : UIViewController

@property (nonatomic, strong) FCCardViewController *cardVC;

- (IBAction)showCards:(NSMutableArray *)cards;
- (IBAction)showStates:(id)sender;
- (IBAction)showCapitals:(id)sender;

@end
