#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {

   
   NSInteger sum = [[array valueForKeyPath: @"@sum.self"] intValue];
   
//   NSNumber *mn = [NSNumber numberWithInt:[[array valueForKeyPath: @"@sum.self"] intValue]];
//   NSNumber *mx;
   NSInteger min = sum - [array[0] intValue];
   NSInteger max = sum - [array[0] intValue];
   
   for (int i = 1; i < [array count]; i++) {
      if (sum - [array[i] intValue] < min) {
         min = sum - [array[i] intValue];
      }
      
      if (sum - [array[i] intValue] > max) {
         max = sum - [array[i] intValue];
      }
   }
   
//   NSLog(@"!!!!! Sum %@", sum);
   
   return @[[NSNumber numberWithInt:min], [NSNumber numberWithInt:max]];
}

@end
