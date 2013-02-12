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
    self.storingSongs = [[NSMutableDictionary alloc]init];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
- (IBAction)saveButtonPressed:(id)sender
{
    //This is the code that took the text in the text field and save it to the new object songObject
    [self.view endEditing:YES];
    Song *songObject = [[Song alloc]init];
    songObject.artist = self.artistTextField.text;
    songObject.songName = self.songTextField.text;
    songObject.album = self.albumTextField.text;
    songObject.year = self.yearTextField.text;
    
    //This is starting up the dictionary and adding the items in the song object
    songObject.songDictionary = [[NSDictionary alloc]init];
    songObject.songDictionary = @{ @"artist" : [songObject artist],
                                   @"song" : [songObject songName],
                                   @"album" : [songObject album],
                                   @"year" : [songObject year]
                                   };
    
    //This starts up another dictionary storingSongs
    
    self.storingSongs = @{
                          @"SongDictionary" : songObject.songDictionary
                          };
    
    NSLog(@"%@", [self.storingSongs valueForKeyPath:@"songDictionary.artist"]);
}
@end
