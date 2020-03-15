#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
   NSInteger totalBillWithoutAnna = [[bill valueForKeyPath: @"@sum.self"] intValue] - [bill[index] intValue];
   
   return totalBillWithoutAnna / 2 == [sum intValue] ? @"Bon Appetit" : [NSString stringWithFormat:@"%li", [sum intValue] - totalBillWithoutAnna / 2 ];
}

@end
