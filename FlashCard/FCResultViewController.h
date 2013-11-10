//
//  FCResultViewController.h
//  FlashCard
//
//  Created by Christoph on 10.11.13.
//  Copyright (c) 2013 Christoph. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FCResultViewController : UIViewController

@property (nonatomic, strong) IBOutlet int numRightLabel;
@property (nonatomic, strong) IBOutlet int numWrongLabel;

- (void)initWithGame;
- (IBAction)startAgain:(id)sender;

@end
