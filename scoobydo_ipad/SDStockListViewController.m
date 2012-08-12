#import "SDStockListViewController.h"
#import "SDStockData.h"

@implementation SDStockListViewController
@synthesize stockData;

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.tabBarItem.title = @"Stock Item List";
//    self.tabBarItem.image = [UIImage imageNamed:@"lightbulb.png"];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [self.stockData search:searchBar.text:self.tableView :@selector(reloadData)];
}
@end