//
//  ViewController.m
//  Tables
//
//  Created by Liz Sanchez on 5/19/15.
//  Copyright (c) 2015 Liz Sanchez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tblstudents;
@property (weak, nonatomic) IBOutlet UITextField *txtstudentname;
@property NSArray* StudentsNames;
@end
NSString* CELL_NAME=@"Cell";
@implementation ViewController

- (IBAction)new_student_enter:(id)sender {
    NSString* newstudent = [[self txtstudentname] text];
    NSArray* newstudentarray=[[self StudentsNames] arrayByAddingObject:newstudent];
    [self setStudentsNames:newstudentarray];
    
    [[self tblstudents] reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setStudentsNames: @[@"EJ", @"Liz", @"Jared",@"Misti",@"Ryan"]];
    
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
    return [[self StudentsNames]count];
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:CELL_NAME];
    if (cell ==nil){
        cell = [[UITableViewCell alloc]initWithStyle: UITableViewCellStyleDefault reuseIdentifier:CELL_NAME];
    }
    NSInteger currentRow = [indexPath row];
    NSString* currentStudents = [[self StudentsNames] objectAtIndex: currentRow];
                [[cell textLabel] setText: currentStudents];
    return cell;
}
@end
