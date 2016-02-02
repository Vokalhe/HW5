//
//  ViewController.m
//  Test
//
//  Created by 2 on 01.02.16.
//  Copyright © 2016 1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) UIView *movedView;
@end

@implementation ViewController



- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor colorWithRed:24/225.f green:54/225.f blue:66/225.f alpha:1.f];
    
    for (int i = 0; i < 39; i++) {
        UIView *blocks1 = [[UIView alloc] initWithFrame:(CGRect){3 + 17 * i, 99, 16, 86.5f}];
        blocks1.layer.cornerRadius = 5;
        //blocks1.backgroundColor = [UIColor blackColor];
        [self.view addSubview:blocks1];
        
        UIView *blocks2 = [[UIView alloc] initWithFrame:(CGRect){3 + 17 * i, 190, 16, 86.5f}];
        blocks2.layer.cornerRadius = 5;
        //blocks2.backgroundColor = [UIColor blackColor];
        [self.view addSubview:blocks2];
    }
    
    NSArray *arrayOfColors = @[[UIColor colorWithRed:81/255.f green:65/255.f blue:89/255.f alpha:1.f],
                               [UIColor colorWithRed:168/255.f green:86/255.f blue:136/255.f alpha:1.f],
                               [UIColor colorWithRed:208/255.f green:239/255.f blue:225/255.f alpha:1.f],
                               [UIColor colorWithRed:205/255.f green:232/255.f blue:104/255.f alpha:1.f],
                               [UIColor colorWithRed:140/255.f green:191/255.f blue:161/255.f alpha:1.f]
                               ];
    
    //self.movedView = v;
   /* [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:0.8f green:0.8f blue:0.8f alpha:1.f];
    
    NSArray *arrayOfColors = @[[UIColor colorWithRed:81/255.f green:65/255.f blue:89/255.f alpha:1.f],
                             [UIColor colorWithRed:168/255.f green:86/255.f blue:136/255.f alpha:1.f],
                             [UIColor colorWithRed:208/255.f green:239/255.f blue:225/255.f alpha:1.f],
                             [UIColor colorWithRed:205/255.f green:232/255.f blue:104/255.f alpha:1.f],
                             [UIColor colorWithRed:140/255.f green:191/255.f blue:161/255.f alpha:1.f]
                             ];
    
    float offset = 20;
    float squareSize = roundf([UIScreen mainScreen].bounds.size.height/3-offset*6);
    float squareChildSize = squareSize-offset*2;
    float bgHeight = squareSize*3+offset*4;
  
    UIView *bg = [[UIView alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-(squareSize+offset*2))/2,
                                                          ([UIScreen mainScreen].bounds.size.height-bgHeight)/2,
                                                          squareSize+offset*2,
                                                          bgHeight)];
    bg.backgroundColor = [UIColor blackColor];
    [self.view addSubview:bg];
    
    for (int i=0; i<3; i++) {
        int colorIndex1 = arc4random_uniform((int)arrOfColors.count);
        int colorIndex2 = colorIndex1;
        while (colorIndex2==colorIndex1) {
            colorIndex2 = arc4random_uniform((int)arrOfColors.count);
        }
        
        UIView *square = [[UIView alloc] initWithFrame:(CGRect){offset, offset+i*(offset+squareSize), squareSize, squareSize}];
        square.backgroundColor = arrOfColors[colorIndex1];
        [bg addSubview:square];
        
        UIView *squareChild = [[UIView alloc] initWithFrame:(CGRect){offset, offset, squareChildSize, squareChildSize}];
        squareChild.backgroundColor = arrOfColors[colorIndex2];
        [square addSubview:squareChild];
    }*/
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*-(void) viewWillAppear:(BOOL)animated// только собирается загружатся №2
viewDidLoad // №1
viewDidApper//№3
*/

@end
