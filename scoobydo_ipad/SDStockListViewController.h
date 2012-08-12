#import <Foundation/Foundation.h>
#import "SDStockData.h"



@interface SDStockListViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate> {
    IBOutlet SDStockData *stockData;
}

@property(nonatomic, strong) SDStockData *stockData;


@end