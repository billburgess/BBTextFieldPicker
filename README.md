# BBTextFieldPicker

BBTextFieldPicker is a UITextField replacement that swaps out the keyboard for a UIPickerView.

![BBTextFieldPicker](http://f.cl.ly/items/1h262w1B2g2y3t3y3O2R/iOS%20Simulator%20Screen%20shot%20Jun%2029,%202013,%2012.42.51%20PM.png)

## Installation via CocoaPods

Add `pod 'BBTextFieldPicker'` to your Podfile

## Manual Installation
Copy the `BBTextFieldPicker.h/m` files to your project.

## Usage

Just use BBTextFieldPicker as a replacement for UITextField.

```objective-c
textField.placeholder = @"Placeholder text";
textField.pickerDataSource = someArray;
textField.toolbarButton.title = @"Next";
textField.textFieldPickerDelegate = self;
```

BBTextFieldPicker Delegate Method

```objective-c
- (void)pickerToolbarButtonPressed:(id)sender;
```
