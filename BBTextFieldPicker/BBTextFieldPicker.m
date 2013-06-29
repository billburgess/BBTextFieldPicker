//
//  BBTextFieldPicker.m
//
//  Created by Bill Burgess on 6/29/13.
//  Copyright (c) 2013 Bill Burgess. All rights reserved.
//

#import "BBTextFieldPicker.h"

@implementation BBTextFieldPicker

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // load picker
        [self initializePicker];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    // init performed by xib loading
    self = [super initWithCoder:aDecoder];
    if (self) {
        // load picker
        [self initializePicker];
    }
    return self;
}

- (void)initializePicker {
    CGRect pickerFrame;
    if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) {
        pickerFrame = CGRectMake(0, 740, 768, 264);
    } else {
        pickerFrame = CGRectMake(0, 480, 320, 216);
    }
    _picker = [[UIPickerView alloc] initWithFrame:pickerFrame];
    _picker.delegate = self;
    _picker.dataSource = self;
    _picker.showsSelectionIndicator = YES;
    
    // load toolbar to close picker view
    _pickerToolbar = [[UIToolbar alloc] init];
    _pickerToolbar.barStyle = UIBarStyleBlack;
    _pickerToolbar.translucent = YES;
    _pickerToolbar.tintColor = nil;
    [_pickerToolbar sizeToFit];
    
    _toolbarButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Next", @"Next") style:UIBarButtonItemStyleDone target:self action:@selector(pickerToolbarButtonPressed:)];
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [_pickerToolbar setItems:[NSArray arrayWithObjects:spacer, _toolbarButton, nil]];
    
    self.inputView = _picker;
    self.inputAccessoryView = _pickerToolbar;
}

#pragma mark - PTTextFieldPicker Delegate Methods
-(void)pickerToolbarButtonPressed:(id)sender {
    [_textFieldPickerDelegate pickerToolbarButtonPressed:sender];
}


#pragma mark - UIPickerView Delegate Methods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	return _pickerDataSource.count;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.text = [_pickerDataSource objectAtIndex:row];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [_pickerDataSource objectAtIndex:row];
}

@end
