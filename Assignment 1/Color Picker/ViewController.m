//
//  ViewController.m
//  SliderExample
//
//  Created by Thomas Tai on 9/12/19.
//  Copyright © 2019 Thomas Tai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int red = 127;
int green = 127;
int blue = 127;
int alpha = 255;

- (void) colorUpdate {
    self.colorOut.backgroundColor = [UIColor colorWithRed:(CGFloat)red/255.0 green:(CGFloat)green/255.0 blue:(CGFloat)blue/255.0 alpha:(CGFloat)alpha/255.0];
    self.redDecimal.text = [NSString stringWithFormat:@"%d", red];
    self.redHex.text = [NSString stringWithFormat:@"%02X", red];
    self.greenDecimal.text = [NSString stringWithFormat:@"%d", green];
    self.greenHex.text = [NSString stringWithFormat:@"%02X", green];
    self.blueDecimal.text = [NSString stringWithFormat:@"%d", blue];
    self.blueHex.text = [NSString stringWithFormat:@"%02X", blue];
    self.alphaDecimal.text = [NSString stringWithFormat:@"%d", alpha];
    self.alphaHex.text = [NSString stringWithFormat:@"%02X", alpha];
    NSLog(@"Color Changed: rgba(%d,%d,%d,%d)", red, green, blue, alpha);
}

- (IBAction)redSlider:(UISlider *)sender {
    red = sender.value;
    [self colorUpdate];
}

- (IBAction)greenSlider:(UISlider *)sender {
    green = sender.value;
    [self colorUpdate];
}

- (IBAction)blueSlider:(UISlider *)sender {
    blue = sender.value;
    [self colorUpdate];
}

- (IBAction)alphaSlider:(UISlider *)sender {
    alpha = sender.value;
    [self colorUpdate];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    red = arc4random_uniform(255);
    green = arc4random_uniform(255);
    blue = arc4random_uniform(255);
    _redSlider.value = red;
    _greenSlider.value = green;
    _blueSlider.value = blue;
    [self colorUpdate];
}

@end
