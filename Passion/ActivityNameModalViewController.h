//
//  ActivityNameModalViewController.h
//  Passion
//
//  Created by Aiden Lee on 2013-04-22.
//  Copyright (c) 2013 Aiden. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityNameModalViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@end
