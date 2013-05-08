//
//  ActivityNameModalViewController.m
//  Passion
//
//  Created by Aiden Lee on 2013-04-22.
//  Copyright (c) 2013 Aiden. All rights reserved.
//

#import "ActivityNameModalViewController.h"
#import "Activity.h"

@interface ActivityNameModalViewController ()

@end

@implementation ActivityNameModalViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    [theTextField resignFirstResponder];
    return YES;
}

- (IBAction)nameButtonPressed:(UIButton *)sender {
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Activity" inManagedObjectContext:self.managedObjectContext];
    [request setEntity:entity];
    NSPredicate *activityWithNoCheckOutTime = [NSPredicate predicateWithFormat:@"name = nil"];
    [request setPredicate:activityWithNoCheckOutTime];
    
    NSError *error = nil;
    NSArray *results = [self.managedObjectContext executeFetchRequest:request error:&error];
    if (results == nil) {
        NSLog(@"No Results found");
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    Activity *activity = [results objectAtIndex:0];
    activity.name = sender.currentTitle;
    if (![self.managedObjectContext save:&error]) {
        NSLog(@"Failed to save activity in the database");
    } else {
        NSLog(@"SUCCESS");
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
