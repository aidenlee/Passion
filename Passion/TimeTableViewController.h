//
//  TimeTableViewController.h
//  Passion
//
//  Created by Aiden Lee on 2013-04-22.
//  Copyright (c) 2013 Aiden. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeTableViewController : UITableViewController
@property (nonatomic, strong) NSArray *eventsArray;
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@end
