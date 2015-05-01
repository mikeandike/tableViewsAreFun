//
//  CityViewController.m
//  TableViewsAreFun
//
//  Created by Michael Sacks on 4/30/15.
//  Copyright (c) 2015 Michael Sacks. All rights reserved.
//

#import "CityViewController.h"
#import "ViewController.h"


@interface CityViewController ()

@end

@implementation CityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor greenColor];
}


-(void)setCityName:(NSString *)cityName{
    
    self.title = cityName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
