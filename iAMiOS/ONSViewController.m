//
//  ONSViewController.m
//  iAMiOS
//
//  Created by Raj Lakhanpal on 8/25/14.
//  Copyright (c) 2014 RL. All rights reserved.
//

#import "ONSViewController.h"

@interface ONSViewController ()

@end

@implementation ONSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell =[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = @"RajL\n This is my first table view";
    
    
    return cell;
}

@end
