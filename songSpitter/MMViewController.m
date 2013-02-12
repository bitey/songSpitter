//
//  MMViewController.m
//  songSpitter
//
//  Created by StopBitingMe on 2/11/13.
//  Copyright (c) 2013 StopBitingMe. All rights reserved.
//

#import "MMViewController.h"
#import "Song.h"

@interface MMViewController ()

@end

@implementation MMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)listSongs:(id)sender
{
//    [self resignFirstResponder];
    Song *songObject = [[Song alloc]init];
    songObject.artist = self.artistTextField.text;
    songObject.songName = self.songTextField.text;
    songObject.album = self.albumTextField.text;
    songObject.year = self.yearTextField.text;
    NSLog(@"%@", songObject.artist);
    NSLog(@"%@", songObject.songName);
    NSLog(@"%@", songObject.album);
    NSLog(@"%@", songObject.year);
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)dealloc {
    [_artistTextField release];
    [_songTextField release];
    [_albumTextField release];
    [_yearTextField release];
    [super dealloc];
}
@end
