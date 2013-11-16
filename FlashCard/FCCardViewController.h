//
//  FCCardViewController.h
//  FlashCard
//
//  Created by Christoph on 10.11.13.
//  Copyright (c) 2013 Christoph. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FCGame.h"
#import "FCCard.h"
#import "FCResultViewController.h"

@interface FCCardViewController : UIViewController

@property (nonatomic, strong) FCResultViewController *resultVC;

@property (nonatomic, strong) IBOutlet UILabel *cardLabel;
@property (nonatomic, strong) IBOutlet UIButton *answerButton1;
@property (nonatomic, strong) IBOutlet UIButton *answerButton2;
@property (nonatomic, strong) IBOutlet UIButton *answerButton3;

@property (nonatomic, strong) FCGame *game;
@property (nonatomic, strong) FCCard *currentCard;

//- (id)initWithGame:(FCGame *)g;
- (void)nextCard;
- (IBAction)answerButtonTouched:(id)sender;

@end
