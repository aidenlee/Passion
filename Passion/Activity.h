//
//  Activity.h
//  Passion
//
//  Created by Aiden Lee on 2013-04-22.
//  Copyright (c) 2013 Aiden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Activity : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * checkInTime;
@property (nonatomic, retain) NSDate * checkOutTime;

@end
