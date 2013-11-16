//
//  FCCardViewController.m
//  FlashCard
//
//  Created by Christoph on 10.11.13.
//  Copyright (c) 2013 Christoph. All rights reserved.
//

#import "FCCardViewController.h"


@interface FCCardViewController ()

@end

@implementation FCCardViewController

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
    [self nextCard];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (id)initWithGame:(FCGame *)g
{
        if (self = [self initWithNibName:@"FCCardViewController" bundle:[NSBundle mainBundle]])
        {
            self.game = g;
        }
    
        return self;
}

- (void)nextCard
{
    if ([self.game hasMoreCards])
    {
        self.currentCard = [self.game getNextCard];
        
        self.cardLabel.text = self.currentCard.cardText;
        
        [self.answerButton1
            setTitle:[self.currentCard.answers objectAtIndex:0]
         forState:UIControlStateNormal];
        [self.answerButton2
         setTitle:[self.currentCard.answers objectAtIndex:1]
         forState:UIControlStateNormal];
        [self.answerButton3
         setTitle:[self.currentCard.answers objectAtIndex:2]
         forState:UIControlStateNormal];
    }
    
    else
    {
        self.resultVC = [[FCResultViewController alloc] initWithGame:self.game];
        
        [self.view.window addSubview:self.resultVC.view];
        
        [self.view removeFromSuperview];
    }
}

- (IBAction)answerButtonTouched:(id)sender
{
    if (sender == self.answerButton1)
    {
        [self.currentCard recordAnswer:0];
    }
    else if (sender == self.answerButton2)
    {
        [self.currentCard recordAnswer:1];
    }
    else if (sender == self.answerButton3)
    {
        [self.currentCard recordAnswer:2];
    }
    
    [self nextCard];
}

@end
