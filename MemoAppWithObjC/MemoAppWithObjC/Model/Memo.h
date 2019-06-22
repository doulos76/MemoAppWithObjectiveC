//
//  Memo.h
//  MemoAppWithObjC
//
//  Created by dave76 on 22/06/2019.
//  Copyright © 2019 dave76. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Memo : NSObject

@property (strong, nonatomic) NSString* content;
@property (strong, nonatomic) NSDate* insertDate;

- (instancetype)initWithContent: (NSString*)content;

//+ (NSMutableArray*)dummyMemoList;
@property (strong, nonatomic, readonly, class) NSMutableArray* dummyMemoList;

@end

NS_ASSUME_NONNULL_END
