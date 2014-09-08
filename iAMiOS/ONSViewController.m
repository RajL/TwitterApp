//
//  ONSViewController.m
//  iAMiOS
//
//  Created by Raj Lakhanpal on 8/25/14.
//  Copyright (c) 2014 RL. All rights reserved.
//

#import "ONSViewController.h"
#import <Social/Social.h>
#import <Accounts/Accounts.h>



@interface ONSViewController ()

@property NSArray *items;

@end

@implementation ONSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //self.items = @[@"one", @"two", @"three"];
    
    NSURL *url = [NSURL URLWithString:@"https://api.twitter.com/1.1/statuses/user_timeline.json"];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSLog(@"response: %@", response);
        
    }];
    
    [task resume];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
   return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
//    cell.textLabel.text = @"RajL";
//    cell.detailTextLabel.text=@"TDid the math. Facebook is worth $100 billion and with 800 million users that puts the value of a life at $12.50. I think the only thing Fox News hasn't yet accused Michael Brown of is stealing Darren Wilson's bullets. #ferguson No no, you don't have to blur my face but how about a sweet mustache?";
    
    cell.textLabel.text = self.items[indexPath.row];
    
    return cell;
    
    
}

- (void)twitterTimeline
{
    //ask for the accounts
    ACAccountStore *account = [[ACAccountStore alloc]init];
    
    ACAccountType *accountType = [account accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
    
    [account requestAccessToAccountsWithType:accountType options:nil completion:^(BOOL granted, NSError *error) {
        
        //if granted, then access the twitter API, or else give an error message
        if (granted == YES) {
            
            //create an array for the accounts
            NSArray *arrayOfAccounts = [account accountsWithAccountType:accountType];
            
                       
        } else {
            NSLog(@"%@", [error localizedDescription]);
        }
        
    }];
    
}

@end
