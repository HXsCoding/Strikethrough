//
//  ViewController.m
//  Strikethrough
//
//  Created by Huang Xianshuai on 14/12/10.
//  Copyright (c) 2014年 Huang Xianshuai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (IBAction)setLineSpacing:(id)sender {
    
    NSString *content = @"￥8888888888888888888888888888888888888888888888";
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:content];
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = 10.0f;
    
    [attributeString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, content.length)];
    _label.attributedText = attributeString;
}


- (IBAction)showStrikethrough:(id)sender {
    
    NSString *content = @"7777777777777777777777777777777777777";
    NSMutableAttributedString *attributeStr = [[NSMutableAttributedString alloc] initWithString:content];
    [attributeStr addAttributes:@{ NSStrikethroughStyleAttributeName : @(1), NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Light" size:16.0f] } range:NSMakeRange(0, content.length)];
    _label.attributedText = attributeStr;
    
    
    // NSStrikethroughStyleAttributeName  删除线的粗度
    // NSFontAttributeName 字体设置 （可有可无）

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

/*
- (void)setChatContent:(NSString *)theContent {
    
    if (![chatContent isEqualToString:theContent]) {
        chatContent = theContent;
        //        _chatContentLabel.text = chatContent;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:chatContent];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineSpacing:5];
        [attributedString addAttribute:NSParagraphStyleAttributeName
                                 value:paragraphStyle
                                 range:NSMakeRange(0, [chatContent length])];
        _chatContentLabel.attributedText = attributedString ;
    }
}
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
