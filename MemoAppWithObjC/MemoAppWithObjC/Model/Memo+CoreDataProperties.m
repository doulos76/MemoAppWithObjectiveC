//
//  Memo+CoreDataProperties.m
//  MemoAppWithObjC
//
//  Created by dave76 on 22/06/2019.
//  Copyright © 2019 dave76. All rights reserved.
//
//

#import "Memo+CoreDataProperties.h"

@implementation Memo (CoreDataProperties)

+ (NSFetchRequest<Memo *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Memo"];
}

@dynamic content;
@dynamic insertDate;

@end
