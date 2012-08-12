//
// Created by ssmithstone on 07/08/2012.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>


@interface SDStockData : NSObject <UITableViewDataSource>
@property(nonatomic, strong) NSNumber *rowCount;

- (void)search:(NSString *)text : (id)anObject: (SEL)callback;

@end