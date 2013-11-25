//
//  FCViewController.m
//  FlashCard
//
//  Created by Christoph on 10.11.13.
//  Copyright (c) 2013 Christoph. All rights reserved.
//

#import "FCViewController.h"
#import "FCGame.h"


@interface FCViewController ()

@end

@implementation FCViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(IBAction)showCards:(NSMutableArray*)cards
{
    
    FCGame *game = [[FCGame alloc] initWithCards:cards];
        
    self.cardVC = [[FCCardViewController alloc] initWithGame:game];
    
    [self.view.window addSubview:self.cardVC.view];
}

-(IBAction)showStates:(id)sender {
    FCAnswerKey* key = [[FCAnswerKey alloc] init];
    NSMutableArray *cards = [key allocStateCards];
    [self showCards:cards];
}

-(IBAction)showCapitals:(id)sender {
    FCAnswerKey* key = [[FCAnswerKey alloc] init];
    NSMutableArray *cards = [key allocCapitalCards];
    [self showCards:cards];
}

@end