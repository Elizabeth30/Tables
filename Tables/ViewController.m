//
//  ViewController.m
//  Tables
//
//  Created by Liz Sanchez on 5/19/15.
//  Copyright (c) 2015 Liz Sanchez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
NSString* CELL_NAME=@"Cell";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:CELL_NAME];
    if (cell ==nil){
        cell = [[UITableViewCell alloc]initWithStyle: UITableViewCellStyleDefault reuseIdentifier:CELL_NAME];
    }
                [[cell textLabel] setText:@"Hello World"];
    return cell;
}
@end
