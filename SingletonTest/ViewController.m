//
//  ViewController.m
//  Singleton
//
//  Created by sjpsega on 14-10-10.
//  Copyright (c) 2014年 sjpsega. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Singleton *s1 = [Singleton alloc];
    Singleton *s2 = [Singleton alloc];
    NSLog(@"%d",s1 == s2);
    
    Singleton *s3 = [Singleton allocWithZone:NULL];
    Singleton *s4 = [Singleton allocWithZone:NULL];
    NSLog(@"%d",s3 == s4);
    
    Singleton *s5 = [Singleton sharedInstance];
    Singleton *s6 = [Singleton sharedInstance];
    NSLog(@"%d",s5 == s6);
    
    Singleton *s7 = [[Singleton alloc] init];
    Singleton *s8 = [[Singleton alloc] init];
    NSLog(@"%d",s7 == s8);
    
    NSLog(@"%d",s3 == s5);
    
    NSLog(@"%d",s1 == [s7 copy]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
