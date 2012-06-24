#import "SDStockListViewController.h"

@implementation SDStockListViewController
@synthesize rowCount = _rowCount;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.rowCount = [NSNumber numberWithInt:100];
    self.tabBarItem.title = @"Stock Item List";

    self.tabBarItem.image = [UIImage imageNamed:@"second.png"];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.rowCount integerValue];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stockItem"];
    if (cell == NULL) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"stockItem"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"Cows Go Moo %d", indexPath.row];
    return cell;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {

    NSLog(@"Searching .........");
    self.rowCount = [NSNumber numberWithUnsignedInt:arc4random() % 100];
    [self.tableView reloadData];
}


@end