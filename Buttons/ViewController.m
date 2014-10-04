//
//  ViewController.m
//  Buttons
//
//  Created by Thinky on 05.09.14.
//  Copyright (c) 2014 Thinky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textMessage;
@end

@implementation ViewController

- (IBAction)buttonClick:(UIButton *)sender
{
    if ([[[sender titleLabel] text] isEqual:@"One"])
    {
        [self.textMessage setText:[[NSString stringWithFormat:@"You touched the blue button."] capitalizedString]];
    }
    else if ([[[sender titleLabel] text] isEqual:@"Two"])
    {
        [self.textMessage setText:[[NSString stringWithFormat:@"You touched the red button."] uppercaseString]];
    }
    else if ([[[sender titleLabel] text] isEqual:@"Three"])
    {
        [self.textMessage setText:[[NSString stringWithFormat:@"You touched the green button."] lowercaseString]];
    }
    else if ([[[sender titleLabel] text] isEqual:@"Four"])
    {
        [self.textMessage setText:[[NSString stringWithFormat:@"You touched the orange button."] stringByAppendingString:@" Append"]];
    }
}

- (IBAction)sliderChange:(UISlider *)sender
{
    [self.textMessage setText:[NSString stringWithFormat:@"The slider value is: %d", (int)roundf([sender value])]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
