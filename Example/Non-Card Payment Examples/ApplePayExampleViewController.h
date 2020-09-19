//
//  ApplePayExampleViewController.h
//  Non-Card Payment Examples
//
//  Created by Ben Guo on 2/22/17.
//  Copyright © 2017 Stripe. All rights reserved.
//

@import UIKit;

@protocol ExampleViewControllerDelegate;

@interface ApplePayExampleViewController : UIViewController

@property (nonatomic, weak) id<ExampleViewControllerDelegate> delegate;

@end
