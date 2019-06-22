//
//  DetailViewController.h
//  MemoAppWithObjC
//
//  Created by dave76 on 22/06/2019.
//  Copyright © 2019 dave76. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Memo.h"
#import "Memo+CoreDataProperties.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Memo* memo;
@end

NS_ASSUME_NONNULL_END
