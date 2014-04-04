//
//  MyTestViewController.m
//  ToDoApp23
//
//  Created by John Gorter on 04/04/14.
//  Copyright (c) 2014 John Gorter. All rights reserved.
//

#import "MyTestViewController.h"
#import "AboutViewViewController.h"

@interface MyTestViewController ()
- (IBAction)btnTest_Clicked:(id)sender;

@property(nonatomic, weak) IBOutlet UITextField* textfield;


@end

@implementation MyTestViewController

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
    [_textfield setText:[[NSUserDefaults standardUserDefaults] valueForKey:@"username"]];
    
    
    
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
    [view setBackgroundColor:[UIColor redColor]];
    
    [self.view addSubview:view];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(10, 10, 80, 80)];
    [button addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    [UIView beginAnimations:@"start" context:Nil];
    [UIView setAnimationDuration:5];
    
    [view setFrame:CGRectMake(200, 200, 20, 20)];
    [view setBackgroundColor:[UIColor greenColor]];
    
    
    
    [UIView commitAnimations];
    
     
}

-(void)btnClicked:(id)sender {
    NSLog(@"hallo");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnTest_Clicked:(id)sender {
    
    
    AboutViewViewController* about = [[AboutViewViewController alloc] initWithNibName:Nil bundle:Nil];
    [about setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:about animated:TRUE completion:Nil];
    
    
    
}


@end
