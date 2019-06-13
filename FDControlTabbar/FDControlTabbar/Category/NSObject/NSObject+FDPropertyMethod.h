//
//  NSObject+FDPropertyMethod.h
//  FDControl
//
//  Created by zhangyu528 on 2019/4/9.
//  Copyright © 2019 zhangyu528. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (FDPropertyMethod)

+ (NSArray<NSString*>*)getIvarArray;

+ (NSArray<NSString*>*)getMethodNameArray;

+ (NSArray<NSString*>*)getPropertyNameArray;

+ (NSArray<NSString*>*)getStaticMethodNameArray;

- (void)addProperty:(const void * _Nonnull) key value:(id _Nullable) value;
- (id _Nullable)getPropertyValue:(const void * _Nonnull)key;

@end

NS_ASSUME_NONNULL_END
