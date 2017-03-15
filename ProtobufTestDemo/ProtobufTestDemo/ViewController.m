//
//  ViewController.m
//  ProtobufTestDemo
//
//  Created by wanghong on 2017/3/15.
//  Copyright © 2017年 wanghong. All rights reserved.
//

#import "ViewController.h"
#import "Person.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *person = [[Person alloc] init];
    person.uid = 123;
    person.name = @"test";
    person.phone = @"111111";
    
    NSData *data = [person data];
    Person *p = [Person parseFromData:data error:nil];
    NSLog(@"person:%@",p);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
