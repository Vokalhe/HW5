//
//  ViewController.m
//  Test
//
//  Created by 2 on 01.02.16.
//  Copyright © 2016 1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
+(void)switcher:(int)someCase view:(UIView*)someView;
@property (nonatomic, weak) UIView *movedView;


@end

@implementation ViewController
+(void)switcher:(int)someCase view:(UIView*)someView{
    switch (someCase) {
        case 1:
            someView.backgroundColor = [[UIColor alloc] initWithRed:32/255.f green:87/255.f blue:110/255.f alpha:1];
            
            break;
            
        case 2:
            someView.backgroundColor = [[UIColor alloc] initWithRed:70/255.f green:154/255.f blue:184/255.f alpha:1];
            break;
            
        case 3:
            someView.backgroundColor = [[UIColor alloc] initWithRed:109/255.f green:179/255.f blue:191/255.f alpha:1];
            break;
            
        case 4:
            someView.backgroundColor = [[UIColor alloc] initWithRed:149/255.f green:207/255.f blue:202/255.f alpha:1];
            break;
            
        case 5:
            someView.backgroundColor = [[UIColor alloc] initWithRed:207/255.f green:233/255.f blue:244/255.f alpha:1];
            break;
            
        case 6:
            someView.backgroundColor = [[UIColor alloc] initWithRed:255/255.f green:255/255.f blue:255/255.f alpha:1];
            break;
            
            
        default:
            break;
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor= [[UIColor alloc] initWithRed:24/255.f green:54/255.f blue:66/255.f alpha:1];
    
    NSMutableArray *arrayOfViews= [[NSMutableArray alloc] init];
    
    UIView *someView;
    CGFloat myX= 2.f;
    
    for (int i= 0; i< 39; i++) {
        //В качестве аргумента типа CGFloat нужно указывать число в поинтах, с расширением .f
        someView= [[UIView alloc] initWithFrame: CGRectMake(myX, 98.5f, 15.f, 90.f)];
        someView.layer.cornerRadius= 3.f;
        [arrayOfViews addObject: someView];
        if (i<= 1 || 37<= i) {
            
            [ViewController switcher:1 view:someView];
        }
        
        if ( (2<= i && i<= 5)|| (33<= i && i<= 36)) {
            
            [ViewController switcher:2 view:someView];
        }
        
        if ( (6<= i && i<= 9) || (29<= i && i<= 32)) {
            
            [ViewController switcher:3 view:someView];
        }
        
        if ( (10<= i && i<= 13) || (25<= i && i<= 28)) {
            
            [ViewController switcher:4 view:someView];
        }
        
        if ( (14<= i && i<= 17) || (21<= i && i<= 24)) {
            
            [ViewController switcher:5 view:someView];
        }
        
        if ( (18<= i && i<= 20)) {
            
            [ViewController switcher:6 view:someView];
        }
        
        [self.view addSubview:someView];
        
        myX+= 17.5f;
        
    }
    
    UIView *line= [[UIView alloc] initWithFrame: CGRectMake(0.f, 191.f, myX+2.f, 1.f)];
    line.backgroundColor = [[UIColor alloc] initWithRed:84/255.f green:113/255.f blue:125/255.f alpha:1];
    
    [self.view addSubview:line];
    
    arrayOfViews= [[NSMutableArray alloc] init];
    myX= 2.f;
    
    for (int i= 0; i< 39; i++) {
        //В качестве аргумента типа CGFloat нужно указывать число в поинтах, с расширением .f
        someView= [[UIView alloc] initWithFrame: CGRectMake(myX, 194.5f, 15.f, 90.f)];
        someView.layer.cornerRadius= 3.f;
        [arrayOfViews addObject: someView];
        if (i<= 1 || 37<= i) {
            
            [ViewController switcher:1 view:someView];
        }
        
        if ( (2<= i && i<= 5)|| (33<= i && i<= 36)) {
            
            [ViewController switcher:2 view:someView];
        }
        
        if ( (6<= i && i<= 9) || (29<= i && i<= 32)) {
            
            [ViewController switcher:3 view:someView];
        }
        
        if ( (10<= i && i<= 13) || (25<= i && i<= 28)) {
            
            [ViewController switcher:4 view:someView];
        }
        
        if ( (14<= i && i<= 17) || (21<= i && i<= 24)) {
            
            [ViewController switcher:5 view:someView];
        }
        
        if ( (18<= i && i<= 20)) {
            
            [ViewController switcher:6 view:someView];
        }
        
        [self.view addSubview:someView];
        
        myX+= 17.5f;
        
    }
    
    
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

-(void)moveWithTouch:(UITouch*)touch {
    CGPoint position= [touch locationInView: touch.view];
    CGPoint previousPosition= [touch previousLocationInView:touch.view];
    
    CGRect frame= touch.view.frame;
    frame.origin.x-= (previousPosition.x- position.x);
    frame.origin.y-= (previousPosition.y- position.y);
    touch.view.frame= frame;
    
    [UIView beginAnimations:@"someAnimation" context:nil];
    [UIView setAnimationDuration:0.3f];
    //обращаемся к вью, к перемещаемому вью, центр вью перенести к position а position это координаты вью объявленного тача тача строчка 163
    self.movedView.center= position;
    [UIView commitAnimations];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch= [touches anyObject];
    [self moveWithTouch:touch];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch= [touches anyObject];
    [self moveWithTouch:touch];
    
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch= [touches anyObject];
    [self moveWithTouch:touch];
    
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch= [touches anyObject];
    [self moveWithTouch:touch];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





/*- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor colorWithRed:24/225.f green:54/225.f blue:66/225.f alpha:1.f];
    
    NSArray *arrayOfColors = @[[UIColor colorWithRed:32/255.f green:87/255.f blue:110/255.f alpha:1.f],
                               [UIColor colorWithRed:70/255.f green:154/255.f blue:184/255.f alpha:1.f],
                               [UIColor colorWithRed:109/255.f green:179/255.f blue:191/255.f alpha:1.f],
                               [UIColor colorWithRed:149/255.f green:207/255.f blue:202/255.f alpha:1.f],
                               [UIColor colorWithRed:207/255.f green:233/255.f blue:244/255.f alpha:1.f],
                               [UIColor colorWithRed:255/255.f green:255/255.f blue:255/255.f alpha:1.f]
                               ];
    
    for (int i = 0; i < 39; i++) {
        UIView *blocks1 = [[UIView alloc] initWithFrame:(CGRect){3 + 17 * i, 99, 16, 86.5f}];
        blocks1.layer.cornerRadius = 5;
        [self.view addSubview:blocks1];
        
        UIView *blocks2 = [[UIView alloc] initWithFrame:(CGRect){3 + 17 * i, 190, 16, 86.5f}];
        blocks2.layer.cornerRadius = 5;
        [self.view addSubview:blocks2];
        
        switch (i) {
            case 0:
            case 1:
            case 38:
            case 37:
                blocks1.backgroundColor = arrayOfColors[0];
                blocks2.backgroundColor = arrayOfColors[0];
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 33:
            case 34:
            case 35:
            case 36:
                blocks1.backgroundColor = arrayOfColors[1];
                blocks2.backgroundColor = arrayOfColors[1];
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 29:
            case 30:
            case 31:
            case 32:
                blocks1.backgroundColor = arrayOfColors[2];
                blocks2.backgroundColor = arrayOfColors[2];
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 25:
            case 26:
            case 27:
            case 28:
                blocks1.backgroundColor = arrayOfColors[3];
                blocks2.backgroundColor = arrayOfColors[3];
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 21:
            case 22:
            case 23:
            case 24:
                blocks1.backgroundColor = arrayOfColors[4];
                blocks2.backgroundColor = arrayOfColors[4];
                break;
            case 18:
            case 19:
            case 20:
                blocks1.backgroundColor = arrayOfColors[5];
                blocks2.backgroundColor = arrayOfColors[5];
                break;
            default:
                break;
        }
    }
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)moveWithTouch:(UITouch*)touch {
    CGPoint position = [touch
                        locationInView:touch.view];
    [UIView beginAnimations:@"MyAnimation"context:nil];
     [UIView setAnimationDuration:0.3f];
     self.movedView.center = position;
     [UIView commitAnimations];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches
           withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    [self moveWithTouch:touch];
}
 */
/*- (void)moveWithTouch:(UITouch*)touch {
    CGPoint position = [touch locationInView:touch.view];
    CGPoint previousPosition = [touch previousLocationInView:touch.view];
    
    CGRect frame = touch.view.frame;
    frame.origin.x -= (previousPosition.x-position.x);
    frame.origin.y -= (previousPosition.y-position.y);
    touch.view.frame = frame;
    
   // CGPoint position = [touch locationInView:touch.view];
    /*[UIView beginAnimations:@"MyAnimation"context:nil];
     [UIView setAnimationDuration:0.3f];
     self.movedView.center = position;
     [UIView commitAnimations];*/
    /*[UIView animateWithDuration:0.3f animations:^{
        self.movedView.center = position;
    }];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    [self moveWithTouch:touch];
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    [self moveWithTouch:touch];
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    [self moveWithTouch:touch];
}
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    [self moveWithTouch:touch];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}*/

/*-(void) viewWillAppear:(BOOL)animated// только собирается загружатся №2
viewDidLoad // №1
viewDidApper//№3
*/

@end
