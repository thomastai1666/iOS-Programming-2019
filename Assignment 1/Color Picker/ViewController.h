//
//  ViewController.h
//  SliderExample
//
//  Created by Thomas Tai on 9/12/19.
//  Copyright © 2019 Thomas Tai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *redHex;
@property (weak, nonatomic) IBOutlet UILabel *redDecimal;
@property (weak, nonatomic) IBOutlet UILabel *greenHex;
@property (weak, nonatomic) IBOutlet UILabel *greenDecimal;
@property (weak, nonatomic) IBOutlet UILabel *blueHex;
@property (weak, nonatomic) IBOutlet UILabel *blueDecimal;
@property (weak, nonatomic) IBOutlet UILabel *alphaHex;
@property (weak, nonatomic) IBOutlet UILabel *alphaDecimal;
@property (weak, nonatomic) IBOutlet UILabel *colorOut;

@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;

-(void) colorUpdate;

@end

