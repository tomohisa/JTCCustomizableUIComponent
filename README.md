JTCCustomizableUIComponent
==========================

UIView Component that can customize Layer Properties at Storyboard.

It provides UIComponents that customizable how its look in Storyboard 

- borderColor
- shadowColor
- shadowOpacity
- borderWidth
- cornerRadius
- shadowRadius
- shadowOffcet

Motivation
----------
Usually You can write those property in Code base anywhere in the ViewController but it takes time and make class too long. So iOS5 has feature of setting User Defined Runtime Attributes. But, it doesn't conpletely work with CALayer because of following reason.

- Number can only work with integer numbers (not Decimal)
- Color can only work with UIColor (not CGColor)

So those class can wrap those variables and set properly in AwakeFromNib.

How to Use
----------
In the StoryBorad
- Set Class Name (e.g. JTCCustomizableView )
- set User Defined Runtime Attributes
- Run

License
----------
MIT License.