//
//  ViewController.m
//  FramedArrangement
//
//  Created by Michael Sacks on 3/30/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *redView;
@property (nonatomic, strong) UIView *greenView;
@property (nonatomic, strong) UIView *blueView;
@property (nonatomic, strong) UIView *yellowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.greenView = [UIView new];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
    
    [self layoutSquares];
    //[self layoutHorizontalRectangles];
    //[self layoutVerticleRectangles];
    //[self layoutDiagonalSquares];
}

-(void)layoutSquares{
    CGFloat square = [[UIScreen mainScreen] bounds].size.width/2.0;
    
    self.redView.frame = CGRectMake(0, 25, square, square);
    self.greenView.frame = CGRectMake(square, 25, square, square);
    self.blueView.frame = CGRectMake(0, square+25, square, square);
    self.yellowView.frame = CGRectMake(square, square+25, square, square);
}

-(void)layoutHorizontalRectangles{
    CGFloat width = [[UIScreen mainScreen] bounds].size.width;
    CGFloat height = width/4.0;
    
    self.redView.frame = CGRectMake(0, 25, width, height);
    self.greenView.frame = CGRectMake(0, height + 25, width, height);
    self.blueView.frame = CGRectMake(0, height*2.0 + 25, width, height);
    self.yellowView.frame = CGRectMake(0, height*3 + 25, width, height);
    
}

-(void)layoutVerticleRectangles{
    CGFloat height = [[UIScreen mainScreen] bounds].size.width;
    CGFloat width = height/4.0;
    
    self.redView.frame = CGRectMake(0, 25, width, height);
    self.greenView.frame = CGRectMake(width, 25, width, height);
    self.blueView.frame = CGRectMake(width*2.0, 25, width, height);
    self.yellowView.frame = CGRectMake(width*3.0, 25, width, height);
}

-(void)layoutDiagonalSquares{
    CGFloat square = [[UIScreen mainScreen] bounds].size.width/4.0;
    
    self.redView.frame = CGRectMake(0, 25, square, square);
    self.greenView.frame = CGRectMake(square, square + 25, square, square);
    self.blueView.frame = CGRectMake(square * 2.0, square * 2.0 + 25, square, square);
    self.yellowView.frame = CGRectMake(square * 3.0, square * 3.0 + 25, square, square);
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
