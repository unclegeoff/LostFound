//
//  EmailController.m
//  LostFound
//
//  Created by Geoffery Gilles on 1/19/14.
//  Copyright (c) 2014 Geoffery Gilles. All rights reserved.
//

#import "EmailController.h"

@interface EmailController ()

@end

static NSString *email;

@implementation EmailController


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

-(IBAction)setEmail{
    email = [dickbutt text];
}

-(NSString *)getEmail{
    return email;
}

@end
