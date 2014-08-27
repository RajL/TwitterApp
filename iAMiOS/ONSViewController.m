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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = @"RajL";
    cell.detailTextLabel.text=@"TDid the math. Facebook is worth $100 billion and with 800 million users that puts the value of a life at $12.50. I think the only thing Fox News hasn't yet accused Michael Brown of is stealing Darren Wilson's bullets. #ferguson No no, you don't have to blur my face but how about a sweet mustache?";
    cell.detailTextLabel.numberOfLines=99999;
    
    
    return cell;
    
}
@end
