# BBTextFieldPicker

BBTextFieldPicker is a UITextField replacement that swaps out the keyboard for a UIPickerView.

![BBTextFieldPicker](http://f.cl.ly/items/1h262w1B2g2y3t3y3O2R/iOS%20Simulator%20Screen%20shot%20Jun%2029,%202013,%2012.42.51%20PM.png)

## Installation via CocoaPods

Add `pod 'BBTextFieldPicker'` to your Podfile

## Manual Installation
Copy the `BBTextFieldPicker.h/m` files to your project.

### Usage

Just use BBTextFieldPicker as a replacement for UITextField.

```objective-c
BBTextFieldPicker *textField = [[BBTextFieldPicker alloc] init];
textField.placeholder = @"Placeholder text";
textField.pickerDataSource = someArray;
textField.toolbarButton.title = @"Next";
textField.textFieldPickerDelegate = self;
```
You can also swap out the class type in Interface Builder if you want. Just add a normal UITextField and change the class type to BBTextFieldPicker.

### BBTextFieldPicker Delegate Method

```objective-c
- (void)pickerToolbarButtonPressed:(id)sender;
```

The toolbar button can be used to navigate to the next text field (if used in a form) or to just dismiss the picker. Implementation is up to the user.