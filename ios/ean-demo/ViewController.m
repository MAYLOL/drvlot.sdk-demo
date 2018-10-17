//
//  ViewController.m
//  ean-demo
//
//  Created by wangyao on 2018/10/17.
//  Copyright © 2018年 wangyao. All rights reserved.
//

#import "ViewController.h"
#import <ean/ean.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  


//    NSString *pub =@"0471755c96a787417ef214e8af106c25e9de89f95a2b152b641e7d40531819ab5a53c9381042911fed71f0b67623d242f37c79d51a3b863d1628fc3e83ea249696";
    NSString *pub = @"04a260e9d031ade2a22a92566dccf36ca215e95b60ba46ee5db23b9662db17c74651c9846cd1f2012417b27a05bc2af7c70a95593ebfcc1ea0ff15dfa4626b0cb5";
    NSData *data1 = [@"world" dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data2 = [@"hello" dataUsingEncoding:NSUTF8StringEncoding];

    NSString *result= IesEnc(pub, data1, data2);
            NSLog(@"%@",result);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
