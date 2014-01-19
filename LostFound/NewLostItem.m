//
//  NewLostItem.m
//  LostFound
//
//  Created by Geoffery Gilles on 1/18/14.
//  Copyright (c) 2014 Geoffery Gilles. All rights reserved.
//

#import "NewLostItem.h"

@interface NewLostItem (){
    UITextField *name;
    UITextField *item;
    UITextField *tags;
    UITextField *description;
    UITextField *date;
}

@property (strong) IBOutlet UITextField *name;
@property (strong) IBOutlet UITextField *item;
@property (strong) IBOutlet UITextField *tags;
@property (strong) IBOutlet UITextField *description;
@property (strong) IBOutlet UITextField *date;


@end

@implementation NewLostItem
@synthesize name;
@synthesize item;
@synthesize tags;
@synthesize description;
@synthesize date;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
