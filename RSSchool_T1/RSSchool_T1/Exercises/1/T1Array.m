#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
   if ([sadArray count]) {
      NSMutableArray *happyArray = [sadArray mutableCopy];
      
      BOOL isAllElementsHappy = false;

      while (!isAllElementsHappy) {
         NSUInteger count = [happyArray count];
         isAllElementsHappy = true;
         
         for (int i = 1; i < count - 1; i++) {
            BOOL isBadValue = ([happyArray[i - 1] intValue] + [happyArray[i + 1] intValue]) < [happyArray[i] intValue];
            
            if (isBadValue) {
               [happyArray removeObjectAtIndex:i];
               count--;
               isAllElementsHappy = false;
            }
         }
      }
      
      return happyArray;
   }
      
   return sadArray;
}

@end
