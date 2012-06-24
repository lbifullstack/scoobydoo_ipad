#import <Foundation/Foundation.h>


@interface SDStockListViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate> {

    NSNumber *rowCount;

}

@property(nonatomic, strong) NSNumber *rowCount;

@end