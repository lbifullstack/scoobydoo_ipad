//
// Created by ssmithstone on 07/08/2012.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "SDStockData.h"


@implementation SDStockData {

@private
    NSNumber *_rowCount;
}
@synthesize rowCount = _rowCount;

- (id)init {
    self = [super init];
    if (self) {
        self.rowCount = [NSNumber numberWithInteger:100];
    }

    return self;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.rowCount integerValue];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stockItem"];
    if (cell == NULL) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"stockItem"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"From External Object %d", indexPath.row];
    return cell;
}

- (void)search:(NSString *)text:(id)obj: (SEL)callback {

    NSLog(@"Searching ......... for %@" , text);
    self.rowCount = [NSNumber numberWithUnsignedInt:arc4random() % 100];
    [obj performSelector:callback];

}


@end