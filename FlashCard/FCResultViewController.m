//
//  FCResultViewController.m
//  FlashCard
//
//  Created by Christoph on 10.11.13.
//  Copyright (c) 2013 Christoph. All rights reserved.
//

#import "FCResultViewController.h"


@interface FCResultViewController ()

@end

@implementation FCResultViewController
{
    UILabel *_numRightLabel;
    UILabel *_numWrongLabel;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.numRightLabel.text = [NSString stringWithFormat:@"%d Right", [self.game getNumRight]];
    
    self.numWrongLabel.text = [NSString stringWithFormat:@"%d Wrong", [self.game getNumWrong]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (id)initWithGame:(FCGame *)g;
{
    if (self = [self initWithNibName:@"FCResultViewController" bundle:[NSBundle mainBundle]])
    {
        self.game = g;
    }
    
    return self;
}

- (IBAction)startAgain:(id)sender
{
    [self.view removeFromSuperview];
}

@end
