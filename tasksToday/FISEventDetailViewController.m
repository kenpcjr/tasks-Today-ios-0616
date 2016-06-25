//
//  FISEventDetailViewController.m
//  tasksToday
//
//  Created by Kenneth Cooke on 6/22/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISEventDetailViewController.h"

@interface FISEventDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation FISEventDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableString *eventsListText = [NSMutableString new];
    for (EKEvent *event in self.eventsToDisplay) {
        [eventsListText appendFormat:@"%@\n",event.title];
    }
    
     eventsListText = [[eventsListText substringToIndex:eventsListText.length -1]mutableCopy];
    
    self.textView.text = eventsListText;

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
