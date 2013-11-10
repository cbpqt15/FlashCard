//
//  FCCardViewController.h
//  FlashCard
//
//  Created by Christoph on 10.11.13.
//  Copyright (c) 2013 Christoph. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FCCardViewController : UIViewController

@property (nonatomic, strong) IBOutlet NSString *cardLabel;
@property (nonatomic, strong) IBOutlet UIButton *answerButton1;
@property (nonatomic, strong) IBOutlet UIButton *answerButton2;
@property (nonatomic, strong) IBOutlet UIButton *answerButton3;

- (void)initWithGame;
- (IBAction)nextCard:(id)sender;
- (IBAction)answerButtonTouched:(id)sender;

@end
