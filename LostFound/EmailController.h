//
//  EmailController.h
//  LostFound
//
//  Created by Geoffery Gilles on 1/19/14.
//  Copyright (c) 2014 Geoffery Gilles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmailController : UIViewController {
    IBOutlet UITextField *textField;
}

-(IBAction) setEmail;
-(NSString *)getEmail;

@end
