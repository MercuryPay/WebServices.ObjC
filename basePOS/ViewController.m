//
//  ViewController.m
//  
//
//  Created by agharris73 on 5/28/13.
//  Copyright (c) 2013 Andrew Harris. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

- (IBAction)runCredit:(id)sender {
    
    _buttonRunCredit.enabled = NO;
    _buttonRunCreditReturn.enabled = NO;
    _buttonRunCreditAdjust.enabled = NO;
    
    _buttonRunGift.enabled = NO;
    _buttonRunGiftBal.enabled = NO;
    _buttonGiftIssue.enabled = NO;
    
    NSMutableDictionary *dictionaryReq = [NSMutableDictionary new];
    [dictionaryReq setObject:@"118725340908147" forKey:@"MerchantID"];
    [dictionaryReq setObject:@"Credit" forKey:@"TranType"];
    [dictionaryReq setObject:@"Sale" forKey:@"TranCode"];
    [dictionaryReq setObject:@"12345" forKey:@"InvoiceNo"];
    [dictionaryReq setObject:@"12345" forKey:@"RefNo"];
    [dictionaryReq setObject:@"MercuryHelper 1.0.1" forKey:@"Memo"];
    [dictionaryReq setObject:@"Allow" forKey:@"PartialAuth"];

    [dictionaryReq setObject:@"MagneSafe" forKey:@"EncryptedFormat"];
    [dictionaryReq setObject:@"Keyed" forKey:@"AccountSource"];
    [dictionaryReq setObject:@"C756513CF498BBBF462FEDBFBF732DD8434ACB2B28325D0C7323204F639AC68FFD2769B49020E0CD" forKey:@"EncryptedBlock"];
    [dictionaryReq setObject:@"9500030000040C20001C" forKey:@"EncryptedKey"];
    
    [dictionaryReq setObject:@"OneTime" forKey:@"Frequency"];
    [dictionaryReq setObject:@"RecordNumberRequested" forKey:@"RecordNo"];

    [dictionaryReq setObject:@"1.01" forKey:@"Purchase"];
    
    [dictionaryReq setObject:@"test" forKey:@"Name"];

    [dictionaryReq setObject:@"MPS Terminal" forKey:@"TerminalName"];
    [dictionaryReq setObject:@"MPS Shift" forKey:@"ShiftID"];
    [dictionaryReq setObject:@"test" forKey:@"OperatorID"];

    [dictionaryReq setObject:@"4 Corporate SQ" forKey:@"Address"];
    [dictionaryReq setObject:@"30329" forKey:@"Zip"];
    
    [dictionaryReq setObject:@"123" forKey:@"CVV"];
   
    
    MercuryHelper *mgh = [MercuryHelper new];
    mgh.delegate = self;
    [mgh transctionFromDictionary:dictionaryReq andPassword:@"xyz"];
    
}

- (IBAction)runCreditReturn:(id)sender {

    _buttonRunCredit.enabled = NO;
    _buttonRunCreditReturn.enabled = NO;
    _buttonRunCreditAdjust.enabled = NO;
    
    _buttonRunGift.enabled = NO;
    _buttonRunGiftBal.enabled = NO;
    _buttonGiftIssue.enabled = NO;
    
    NSMutableDictionary *dictionaryReq = [NSMutableDictionary new];
    [dictionaryReq setObject:@"118725340908147" forKey:@"MerchantID"];
    [dictionaryReq setObject:@"Credit" forKey:@"TranType"];
    [dictionaryReq setObject:@"Return" forKey:@"TranCode"];
    [dictionaryReq setObject:@"12345" forKey:@"InvoiceNo"];
    [dictionaryReq setObject:@"12345" forKey:@"RefNo"];
    [dictionaryReq setObject:@"MercuryHelper 1.0.1" forKey:@"Memo"];
    [dictionaryReq setObject:@"Allow" forKey:@"PartialAuth"];
    
    [dictionaryReq setObject:@"MagneSafe" forKey:@"EncryptedFormat"];
    [dictionaryReq setObject:@"Keyed" forKey:@"AccountSource"];
    [dictionaryReq setObject:@"C756513CF498BBBF462FEDBFBF732DD8434ACB2B28325D0C7323204F639AC68FFD2769B49020E0CD" forKey:@"EncryptedBlock"];
    [dictionaryReq setObject:@"9500030000040C20001C" forKey:@"EncryptedKey"];
    
    [dictionaryReq setObject:@"OneTime" forKey:@"Frequency"];
    [dictionaryReq setObject:@"RecordNumberRequested" forKey:@"RecordNo"];
    
    [dictionaryReq setObject:@"1.01" forKey:@"Purchase"];
    
    [dictionaryReq setObject:@"test" forKey:@"Name"];
    
    [dictionaryReq setObject:@"MPS Terminal" forKey:@"TerminalName"];
    [dictionaryReq setObject:@"MPS Shift" forKey:@"ShiftID"];
    [dictionaryReq setObject:@"test" forKey:@"OperatorID"];
    [dictionaryReq setObject:@"test" forKey:@"TerminalID"];
    
    [dictionaryReq setObject:@"4 Corporate SQ" forKey:@"Address"];
    [dictionaryReq setObject:@"30329" forKey:@"Zip"];
    
    [dictionaryReq setObject:@"123" forKey:@"CVV"];
    
    MercuryHelper *mgh = [MercuryHelper new];
    mgh.delegate = self;
    [mgh transctionFromDictionary:dictionaryReq andPassword:@"xyz"];
    
}

- (IBAction)runCreditAdjust:(id)sender {
    
    _buttonRunCredit.enabled = NO;
    _buttonRunCreditReturn.enabled = NO;
    _buttonRunCreditAdjust.enabled = NO;
    
    _buttonRunGift.enabled = NO;
    _buttonRunGiftBal.enabled = NO;
    _buttonGiftIssue.enabled = NO;
    
    NSMutableDictionary *dictionaryReq = [NSMutableDictionary new];
    [dictionaryReq setObject:@"118725340908147" forKey:@"MerchantID"];
    [dictionaryReq setObject:@"Credit" forKey:@"TranType"];
    [dictionaryReq setObject:@"Adjust" forKey:@"TranCode"];
    [dictionaryReq setObject:@"12345" forKey:@"InvoiceNo"];
    [dictionaryReq setObject:@"12345" forKey:@"RefNo"];
    [dictionaryReq setObject:@"MercuryHelper 1.0.1" forKey:@"Memo"];
    [dictionaryReq setObject:@"Allow" forKey:@"PartialAuth"];
    
    [dictionaryReq setObject:@"MagneSafe" forKey:@"EncryptedFormat"];
    [dictionaryReq setObject:@"Keyed" forKey:@"AccountSource"];
    [dictionaryReq setObject:@"F40DDBA1F645CC8DB85A6459D45AFF8002C244A0F74402B479ABC9915EC9567C81BE99CE4483AF3D" forKey:@"EncryptedBlock"];
    [dictionaryReq setObject:@"9012090B01C4F200002B" forKey:@"EncryptedKey"];
    
    [dictionaryReq setObject:@"OneTime" forKey:@"Frequency"];
    [dictionaryReq setObject:@"RecordNumberRequested" forKey:@"RecordNo"];
    
    [dictionaryReq setObject:@"1.01" forKey:@"Purchase"];
    [dictionaryReq setObject:@"123456" forKey:@"AuthCode"];
    
    [dictionaryReq setObject:@"test" forKey:@"Name"];
    
    [dictionaryReq setObject:@"MPS Terminal" forKey:@"TerminalName"];
    [dictionaryReq setObject:@"MPS Shift" forKey:@"ShiftID"];
    [dictionaryReq setObject:@"test" forKey:@"OperatorID"];
    [dictionaryReq setObject:@"test" forKey:@"TerminalID"];
    
    [dictionaryReq setObject:@"4 Corporate SQ" forKey:@"Address"];
    [dictionaryReq setObject:@"30329" forKey:@"Zip"];
    
    [dictionaryReq setObject:@"123" forKey:@"CVV"];
    
    MercuryHelper *mgh = [MercuryHelper new];
    mgh.delegate = self;
    [mgh transctionFromDictionary:dictionaryReq andPassword:@"xyz"];
    
}

- (IBAction)runGiftBal:(id)sender {
    
    _buttonRunCredit.enabled = NO;
    _buttonRunCreditReturn.enabled = NO;
    _buttonRunCreditAdjust.enabled = NO;
    
    _buttonRunGift.enabled = NO;
    _buttonRunGiftBal.enabled = NO;
    _buttonGiftIssue.enabled = NO;
    
    NSMutableDictionary *dictionaryReq = [NSMutableDictionary new];
    [dictionaryReq setObject:@"9100" forKey:@"IpPort"];
    [dictionaryReq setObject:@"118725340908147" forKey:@"MerchantID"];
    [dictionaryReq setObject:@"PrePaid" forKey:@"TranType"];
    [dictionaryReq setObject:@"Balance" forKey:@"TranCode"];
    [dictionaryReq setObject:@"12345" forKey:@"InvoiceNo"];
    [dictionaryReq setObject:@"12345" forKey:@"RefNo"];
    
    [dictionaryReq setObject:@"basePOS 1.0.0" forKey:@"Memo"];
    
    [dictionaryReq setObject:@"MagneSafe" forKey:@"EncryptedFormat"];
    [dictionaryReq setObject:@"Keyed" forKey:@"AccountSource"];
    [dictionaryReq setObject:@"CF7F1CA56296E8E2083047007D85C388C9DA9A21936912995524CD4EE50E4C77" forKey:@"EncryptedBlock"];
    [dictionaryReq setObject:@"9500030000040C20001F" forKey:@"EncryptedKey"];
    
    [dictionaryReq setObject:@"test" forKey:@"Name"];
    
    [dictionaryReq setObject:@"MPS Terminal" forKey:@"TerminalName"];
    [dictionaryReq setObject:@"MPS Shift" forKey:@"ShiftID"];
    [dictionaryReq setObject:@"test" forKey:@"OperatorID"];
    [dictionaryReq setObject:@"test" forKey:@"TerminalID"];
    
    MercuryHelper *mgh = [MercuryHelper new];
    mgh.delegate = self;
    [mgh transctionFromDictionary:dictionaryReq andPassword:@"xyz"];
    
}

- (IBAction)runGiftIssue:(id)sender {
    
    _buttonRunCredit.enabled = NO;
    _buttonRunCreditReturn.enabled = NO;
    _buttonRunCreditAdjust.enabled = NO;
    
    _buttonRunGift.enabled = NO;
    _buttonRunGiftBal.enabled = NO;
    _buttonGiftIssue.enabled = NO;
    
    NSMutableDictionary *dictionaryReq = [NSMutableDictionary new];
    [dictionaryReq setObject:@"9100" forKey:@"IpPort"];
    [dictionaryReq setObject:@"118725340908147" forKey:@"MerchantID"];
    [dictionaryReq setObject:@"PrePaid" forKey:@"TranType"];
    [dictionaryReq setObject:@"Issue" forKey:@"TranCode"];
    [dictionaryReq setObject:@"12345" forKey:@"InvoiceNo"];
    [dictionaryReq setObject:@"12345" forKey:@"RefNo"];
    
    [dictionaryReq setObject:@"basePOS 1.0.0" forKey:@"Memo"];
    
    [dictionaryReq setObject:@"MagneSafe" forKey:@"EncryptedFormat"];
    [dictionaryReq setObject:@"Keyed" forKey:@"AccountSource"];
    [dictionaryReq setObject:@"CF7F1CA56296E8E2083047007D85C388C9DA9A21936912995524CD4EE50E4C77" forKey:@"EncryptedBlock"];
    [dictionaryReq setObject:@"9500030000040C20001F" forKey:@"EncryptedKey"];
    
    [dictionaryReq setObject:@"1.01" forKey:@"Purchase"];
    
    [dictionaryReq setObject:@"test" forKey:@"Name"];
    
    [dictionaryReq setObject:@"MPS Terminal" forKey:@"TerminalName"];
    [dictionaryReq setObject:@"MPS Shift" forKey:@"ShiftID"];
    [dictionaryReq setObject:@"test" forKey:@"OperatorID"];
    [dictionaryReq setObject:@"test" forKey:@"TerminalID"];
    
    MercuryHelper *mgh = [MercuryHelper new];
    mgh.delegate = self;
    [mgh transctionFromDictionary:dictionaryReq andPassword:@"xyz"];
}

- (IBAction)runGift:(id)sender {
    
    _buttonRunCredit.enabled = NO;
    _buttonRunCreditReturn.enabled = NO;
    _buttonRunCreditAdjust.enabled = NO;
    
    _buttonRunGift.enabled = NO;
    _buttonRunGiftBal.enabled = NO;
    _buttonGiftIssue.enabled = NO;
    
    NSMutableDictionary *dictionaryReq = [NSMutableDictionary new];
    [dictionaryReq setObject:@"9100" forKey:@"IpPort"];
    [dictionaryReq setObject:@"118725340908147" forKey:@"MerchantID"];
    [dictionaryReq setObject:@"PrePaid" forKey:@"TranType"];
    [dictionaryReq setObject:@"Sale" forKey:@"TranCode"];
    [dictionaryReq setObject:@"12345" forKey:@"InvoiceNo"];
    [dictionaryReq setObject:@"12345" forKey:@"RefNo"];
    
    [dictionaryReq setObject:@"basePOS 1.0.0" forKey:@"Memo"];
    
    [dictionaryReq setObject:@"MagneSafe" forKey:@"EncryptedFormat"];
    [dictionaryReq setObject:@"Keyed" forKey:@"AccountSource"];
    [dictionaryReq setObject:@"CF7F1CA56296E8E2083047007D85C388C9DA9A21936912995524CD4EE50E4C77" forKey:@"EncryptedBlock"];
    [dictionaryReq setObject:@"9500030000040C20001F" forKey:@"EncryptedKey"];
    
    [dictionaryReq setObject:@"1.02" forKey:@"Purchase"];
    
    [dictionaryReq setObject:@"test" forKey:@"Name"];
    
    [dictionaryReq setObject:@"MPS Terminal" forKey:@"TerminalName"];
    [dictionaryReq setObject:@"MPS Shift" forKey:@"ShiftID"];
    [dictionaryReq setObject:@"test" forKey:@"OperatorID"];
    [dictionaryReq setObject:@"test" forKey:@"TerminalID"];
    
    
    MercuryHelper *mgh = [MercuryHelper new];
    mgh.delegate = self;
    [mgh transctionFromDictionary:dictionaryReq andPassword:@"xyz"];
    
}

-(void) transactionDidFailWithError:(NSError *)error {
    
    _buttonRunCredit.enabled = YES;
    _buttonRunCreditReturn.enabled = YES;
    _buttonRunCreditAdjust.enabled = YES;
    
    _buttonRunGift.enabled = YES;
    _buttonRunGiftBal.enabled = YES;
    _buttonGiftIssue.enabled = YES;
    
}

-(void) transactionDidFinish:(NSDictionary *)result {
    NSMutableString *message = [NSMutableString new];
    
    for (NSString *key in [result allKeys])
    {
        [message appendFormat:@"%@: %@;\n", key, [result objectForKey:key]];
    }
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Result"
                                                   message: message
                                                  delegate: self
                                         cancelButtonTitle: nil
                                         otherButtonTitles:@"OK",nil];
    
    [alert show];


    _buttonRunCredit.enabled = YES;
    _buttonRunCreditReturn.enabled = YES;
    _buttonRunCreditAdjust.enabled = YES;
    
    _buttonRunGift.enabled = YES;
    _buttonRunGiftBal.enabled = YES;
    _buttonGiftIssue.enabled = YES;
    
}

@end