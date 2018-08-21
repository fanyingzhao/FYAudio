//
//  ViewController.m
//  FYAudio
//
//  Created by fyz on 2018/8/21.
//  Copyright © 2018年 com.fyz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton* mergeBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.mergeBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Events
- (void)mergeBtnClick:(UIButton*)sender {
    NSString* path1 = [[NSBundle mainBundle] pathForResource:@"2" ofType:@"pcm"];
    NSString* path2 = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"pcm"];
    
    [self mergePCM:path1 otherPath:path2];
}

#pragma mark - Private
- (void)mergePCM:(NSString*)path otherPath:(NSString*)otherPath {
    
}

- (void)mergeWAV:(NSString*)path otherPath:(NSString*)otherPath {
    
}

#pragma mark - Getter and Setter
- (UIButton *)mergeBtn {
    if (!_mergeBtn) {
        _mergeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_mergeBtn setTitle:@"合并" forState:UIControlStateNormal];
        _mergeBtn.frame = ({
            CGRect rect = CGRectZero;
            rect.origin.y = 100;
            rect.size.width = 140;
            rect.size.height = 40;
            rect.origin.x = (self.view.bounds.size.width - rect.size.width) / 2;
            rect;
        });
        [_mergeBtn addTarget:self action:@selector(mergeBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        _mergeBtn.backgroundColor = [UIColor orangeColor];
    }
    return _mergeBtn;
}
@end
