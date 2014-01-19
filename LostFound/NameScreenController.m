//
//  NameScreenController.m
//  LostFound
//
//  Created by Geoffery Gilles on 1/18/14.
//  Copyright (c) 2014 Geoffery Gilles. All rights reserved.
//

#import "NameScreenController.h"

@interface NameScreenController (){
    UITextField *name;
    NSString *savedName;
}

@property (strong) IBOutlet UITextField *name;

@end

@implementation NameScreenController
@synthesize name;

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
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    name.text = [userDefaults objectForKey:@"name"];
    printf(savedName.UTF8String);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)backgroundTap:(id)sender{
    savedName = name.text;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:savedName forKey:@"name"];
    [name resignFirstResponder];
    [sender resignFirstResponder];
}

- (NSString *)getName{
    return savedName;
}

@end
