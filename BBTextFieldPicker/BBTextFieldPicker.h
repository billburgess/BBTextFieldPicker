//
//  BBTextFieldPicker.h
//
//  Created by Bill Burgess on 6/29/13.
//  Copyright (c) 2013 Bill Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BBTextFieldPickerDelegate
@required
-(void)pickerToolbarButtonPressed:(id)sender;
@end

@interface BBTextFieldPicker : UITextField <UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate>

/// delegate
@property (nonatomic, weak) id <BBTextFieldPickerDelegate>textFieldPickerDelegate;
/// picker
@property (nonatomic, strong) UIPickerView *picker;
/// pick tool bar
@property (nonatomic, strong) UIToolbar *pickerToolbar;
/// picker toolbar button
@property (nonatomic, strong) UIBarButtonItem *toolbarButton;
/// picker data source
@property (nonatomic, strong) NSArray *pickerDataSource;


@end
