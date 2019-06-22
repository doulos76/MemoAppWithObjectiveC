//
//  DataManager.m
//  MemoAppWithObjC
//
//  Created by dave76 on 22/06/2019.
//  Copyright © 2019 dave76. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

+ (instancetype)sharedInstance {
  static DataManager* sharedInstance = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedInstance = [[DataManager alloc] init];
    sharedInstance.memoList = [[NSMutableArray alloc] init];
  });
  return sharedInstance;
}

- (void) fetchMemo {
  NSFetchRequest* request = [[NSFetchRequest alloc] initWithEntityName:@"Memo"];
  NSSortDescriptor* sortByDateDesc = [NSSortDescriptor sortDescriptorWithKey:@"insertDate" ascending:NO];
  request.sortDescriptors = @[sortByDateDesc];
  NSError* error = nil;
  [self.mainContext executeRequest:request error:&error];
  NSArray* result = [self.mainContext executeFetchRequest:request error:&error];
  [self.memoList setArray:result];
}

- (NSManagedObjectContext*)mainContext {
  return self.persistentContainer.viewContext;
}

#pragma mark - Core Data stack

@synthesize persistentContainer = _persistentContainer;

- (NSPersistentContainer *)persistentContainer {
  @synchronized (self) {
    if (_persistentContainer == nil) {
      _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"MemoAppWithObjC"];
      [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
        if (error != nil) {
          NSLog(@"Unresolved error %@, %@", error, error.userInfo);
          abort();
        }
      }];
    }
  }
  
  return _persistentContainer;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
  NSManagedObjectContext *context = self.persistentContainer.viewContext;
  NSError *error = nil;
  if ([context hasChanges] && ![context save:&error]) {
    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
    abort();
  }
}
@end
