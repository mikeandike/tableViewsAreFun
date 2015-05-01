//
//  ViewController.m
//  TableViewsAreFun
//
//  Created by Michael Sacks on 4/30/15.
//  Copyright (c) 2015 Michael Sacks. All rights reserved.
//

#import "ViewController.h"
#import "CityViewController.h"

static NSString *cellID = @"CellID";

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic) NSArray *data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.data = @[@"Provo, UT", @"Orem, UT", @"Cedar Hills, UT", @"Draper, UT", @"SLC, UT", @"San Diego, CA", @"San Fran, CA", @"Austin, TX", @"Seattle, WA", @"Portland, OR", @"Las Vegas, NV", @"Moab, UT", @"Nashville, TN", @"Los Angeles, CA", @"New York, NY", @"Chicago, IL", @"Dallas, TX"];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    
    tableView.dataSource = self;
    tableView.delegate = self;
    
    [self.view addSubview:tableView];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.data.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
     NSString *cityName = [self.data objectAtIndex:indexPath.row];
    
    CityViewController *cityViewController = [CityViewController new];
    
    [cityViewController setCityName:cityName];
    
    [self.navigationController pushViewController:cityViewController animated:YES];
    
    NSLog(@"%@", cityName);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
