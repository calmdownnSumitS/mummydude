

#import "ViewController.h"

@interface ViewController ()
{
    int i,ieeeeeeeeeee;
   
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
   
    self.labl3.layer.masksToBounds = YES;
    self.labl3.layer.cornerRadius=8.0;
    
   [self.indicator setHidesWhenStopped:YES];
    
   
        
            NSOperationQueue *progressQueue = [[NSOperationQueue alloc] init];
            [progressQueue addOperationWithBlock:^{
        
                for ( i = 1; i <= 10; i++) {
        
        
        
                    sleep(1.99999);
        
                    float progressValue = (float)i/10.0;
//                    NSLog(@"%d",i);
        
        
                    [self performSelectorOnMainThread:@selector(updateLabel) withObject:nil waitUntilDone:NO];
        
        
        
                    dispatch_async(dispatch_get_main_queue(), ^{
                        [self.progressBar setProgress:progressValue];
        
                    });
        
        
                }
            }];
          
            [self.indicator startAnimating];
            [self.indicator setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleWhite];
           
            
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


- (void) updateLabel {
    
    if (i==1) {
        
        self.labelot.text = @"1%";
      // [self.y setHidden:NO];

    }
    else if (i==2)
    {
        self.labelot.text = @"2%";
   
           }
    else if (i==3)
    {
        self.labelot.text = @"3%";
   
      
    }
    else if (i==4)
    {
        self.labelot.text = @"4%";
      
     ;

    }
    else if (i==5)
    {
        self.labelot.text = @"5%";
      
       
    }
    else if (i==6)
    {
        self.labelot.text = @"6%";
      
      
    }
    else if (i==7)
    {
        self.labelot.text = @"7%";
                  }
    else if (i==8)
    {
        self.labelot.text = @"8%";
        

    }
    else if (i==9)
    {
        self.labelot.text = @"9%";
       
        
        
    }
    else if (i==10)
    {
        self.labelot.text = @"10%";
        
        
        [self performSelector:@selector(on10) withObject:nil afterDelay:2.0];
        
//        [self.indicator stopAnimating];// stoping indicator
//        [self.indicator setHidesWhenStopped:YES]; //hiding
       
    }
    
}
-(void)on10
{
    ViewController *nav=[self.storyboard instantiateViewControllerWithIdentifier:@"test"];
    [self.navigationController pushViewController:nav animated:YES];
}

@end
