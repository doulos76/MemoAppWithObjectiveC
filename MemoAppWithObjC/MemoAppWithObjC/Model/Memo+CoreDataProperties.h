//
//  Memo+CoreDataProperties.h
//  MemoAppWithObjC
//
//  Created by dave76 on 22/06/2019.
//  Copyright © 2019 dave76. All rights reserved.
//
//

#import "Memo+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Memo (CoreDataProperties)

+ (NSFetchRequest<Memo *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *content;
@property (nullable, nonatomic, copy) NSDate *insertDate;

@end

NS_ASSUME_NONNULL_END
