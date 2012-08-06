//
//  SDStatusViewController.m
//  scoobydo_ipad
//
//  Created by Stephen Smithstone on 05/08/2012.
//
//

#import "SDStatusViewController.h"

@interface SDStatusViewController ()

@end

@implementation SDStatusViewController




- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL *const url = [[NSURL alloc] initWithString:@"http://localhost:4567/status"];
    NSError * error;
    NSString *const string = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
    self.statusLabel.text = [NSString stringWithFormat:@"%@ ... %@" , self.statusLabel.text , string];
}

- (void)viewDidUnload
{

    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
