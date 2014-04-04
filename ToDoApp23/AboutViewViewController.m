//
//  AboutViewViewController.m
//  ToDoApp23
//
//  Created by John Gorter on 04/04/14.
//  Copyright (c) 2014 John Gorter. All rights reserved.
//

#import "AboutViewViewController.h"

@interface AboutViewViewController ()
@property (nonatomic, weak) IBOutlet  UILabel* copyright;
-(IBAction)btnClicked:(id)sender;

@end

@implementation AboutViewViewController

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
    // Do any additional setup after loading the view from its nib.
    [_copyright setText:@"hello world"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)btnClicked:(id)sender{
    [self dismissViewControllerAnimated:true completion:Nil];
    
}
@end
