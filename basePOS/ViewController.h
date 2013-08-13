//
//  ViewController.h
//  PorkyPOS
//
//  Created by agharris73 on 5/28/13.
//  Copyright (c) 2013 Andrew Harris. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MercuryHelper.h"

@interface ViewController : UIViewController <MercuryHelperDelegate, UIAlertViewDelegate>


@property (weak, nonatomic) IBOutlet UIButton *buttonRunCredit;
@property (weak, nonatomic) IBOutlet UIButton *buttonRunCreditReturn;
@property (weak, nonatomic) IBOutlet UIButton *buttonRunCreditAdjust;

@property (weak, nonatomic) IBOutlet UIButton *buttonGiftIssue;
@property (weak, nonatomic) IBOutlet UIButton *buttonRunGiftBal;
@property (weak, nonatomic) IBOutlet UIButton *buttonRunGift;


@property (strong, nonatomic) NSArray *tranType;


- (IBAction)runCredit:(id)sender;
- (IBAction)runCreditReturn:(id)sender;
- (IBAction)runCreditAdjust:(id)sender;

- (IBAction)runGift:(id)sender;
- (IBAction)runGiftBal:(id)sender;
- (IBAction)runGiftIssue:(id)sender;




@end