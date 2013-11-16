//
//  FCResultViewController.h
//  FlashCard
//
//  Created by Christoph on 10.11.13.
//  Copyright (c) 2013 Christoph. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FCGame.h"

@interface FCResultViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *numRightLabel;
@property (nonatomic, strong) IBOutlet UILabel *numWrongLabel;
@property (nonatomic, strong) FCGame *game;

- (id)initWithGame:(FCGame *)g;
- (IBAction)startAgain:(id)sender;

@end
