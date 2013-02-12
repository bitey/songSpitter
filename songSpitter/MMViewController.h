//
//  MMViewController.h
//  songSpitter
//
//  Created by StopBitingMe on 2/11/13.
//  Copyright (c) 2013 StopBitingMe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMViewController : UIViewController <UITextFieldDelegate>

//- (IBAction)listSongs:(id)sender;
- (IBAction)saveButtonPressed:(id)sender;
-(BOOL)textFieldShouldReturn:(UITextField *)textField;

@property (retain, nonatomic) IBOutlet UITextField *artistTextField;
@property (retain, nonatomic) IBOutlet UITextField *songTextField;
@property (retain, nonatomic) IBOutlet UITextField *albumTextField;
@property (retain, nonatomic) IBOutlet UITextField *yearTextField;
@property (retain, nonatomic) NSMutableDictionary *storingSongs;




@end
