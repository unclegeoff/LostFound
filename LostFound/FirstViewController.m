//
//  FirstViewController.m
//  LostFound
//
//  Created by Geoffery Gilles on 1/18/14.
//  Copyright (c) 2014 Geoffery Gilles. All rights reserved.
//

#import "FirstViewController.h"
#import "LostItem.h"
#import "EmailController.h"

@interface FirstViewController (){
    NSMutableArray *items;
    UITableView *tableView;
}

@property (strong) IBOutlet UITableView *tableView;
@property (strong) IBOutlet UITableViewCell *cell;
-(void)retrieveLostItems;

@end

@implementation FirstViewController
@synthesize tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self retrieveLostItems];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSUInteger *)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"LostItems";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellID];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    LostItem *i = [items objectAtIndex:indexPath.row];
    cell.textLabel.text = (NSString *)i.getItemName;
    return cell;
}

- (void)retrieveLostItems{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://mysterious-stream-6921.herokuapp.com/ios-7/end/lost"]];
    // Get the data
    NSURLResponse *response;
    items = nil;
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    if(error == nil){
        // Now create a NSDictionary from the JSON data
        NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        // Create a new array to hold the locations
        EmailController *nsc = [[EmailController alloc]init];
        NSString *username = nsc.getEmail;
        items = [[NSMutableArray alloc] init];
        // Iterate through the array of dictionaries
        for(NSDictionary *dict in array) {
            // Create a new Location object for each one and initialise it with information in the dictionary
            LostItem *item = [[LostItem alloc] initWithJSONDictionary:dict];
            // Add the Location object to the array
            if([username isEqualToString: item.getUserName]){
            [items addObject:item];
            }
        }
    }
    [self.tableView reloadData];
    for (int i = 0; i< items.count; i++) {
        LostItem *j = [items objectAtIndex:i];
    }
}

@end
