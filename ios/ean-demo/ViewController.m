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
  NSData *msg = [@"hello" dataUsingEncoding:NSUTF8StringEncoding];
  NSData *tkn = [@"world" dataUsingEncoding:NSUTF8StringEncoding];
  NSString *sha = EanSha(msg);
  NSLog(@"sha:%@", sha); // 1c8aff950685c2ed4bc3174f3472287b56d9517b9c948127319a09a7a36deac8
  NSString *pri = @"46b12990447e1645e149942aaae0aea58f4d0f16dcf02ceddc314b0157f39499";
  NSString *sig = DsaSig(pri, sha);
  NSLog(@"sig:%@", sig); // a9b69124abe95d01883593f4c1fa3becd5f4a8c063ed84bcd39c044a5bc9361100dfb84fddf31d1774db27c962bd92e4c98f8bb65d1faa08a3f807932af3c12800
  NSString *pub = @"0471755c96a787417ef214e8af106c25e9de89f95a2b152b641e7d40531819ab5a53c9381042911fed71f0b67623d242f37c79d51a3b863d1628fc3e83ea249696";
  NSLog(@"enc:%@", IesEnc(pub, tkn, msg)); // 04868b2099ef7836e8ed9af7ecd27e96ac79b7c3a0797c6cc6df50fe8e34735e611ed091529f0bc8adf3c307a1056d2f71c417c21d840c3765915f827452d94d2731239debad582403289243612b3980cdbcfa13ef45d4071cf8ce5eb20d75e24a5730d07666ddb3370cf05d46ab8898d941fa08af05
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end