   M S B A M L   `   `   `  ����C  ?ItogRab2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Task12.View.WindowsTask12.View.Windows  5   	   %    Task12.View.Windows.LoginWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   -local!clr-namespace:Task12.View.Windows  5   	     � WindowStartupLocation$  CenterScreen=�5	   	    � WindowStyle$
 None=�5
   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency . $��Consolas)�5   	   $	��450��5   	   $	��750��5   	   .��5      ��  �� CornerRadius$ 20��6   ��5   
   �� 5       �� ImageSource$ /Assets/main_bg.jpg��6   ._�5   
   �  � ColumnDefinitions 5      �� 5      $��1* �6#   �� 5      $��1* �6#   .+�5      �� $��0��6   $��Center=�5      $��Center=�5      $	��300��5       $	��170��5!      $ 20��5"      ���#1E1E1E._�5%      �  � RowDefinitions 5&      �� 5'      $��50 �6(   �� 5(      $��1* �6(   �� 5)      $��1* �6(   .+�5,      �� $��Center=�6!   $��Center=�5-   !   $��0��5.   !   .+�5/      �� $-��'Рыболовные инциденты��6$   $��
ExtraBlack"�50   $   
�������$��16(�52   $   54      �� 56      $��Center=�6!   $��Center=�57   !   $��1��58   !   $	��280��6.   .+�5:      �� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$! Введите данные��5;   "   
������� !  MaterialDesignOutlinedTextBox#��[  5=   "   ��5:   "   �� *TbData.InputText+	 �� UpdateSourceTrigger$	 PropertyChanged=�5=   "   5>      �� 5@      -   5        
 ��Name$
 BtnAuthentication��5D      $��2��5@      $��Center=�5A      $��Center=�5B      $��14(�5C      
���   �
���   �3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   IsIndeterminate .    IsIndicatorVisible .    Value$ -1Q�5J         IndicatorForeground
 �   �   IndicatorBackground
 ����    MaterialDesignOutlinedButton#��[ 5M      .��5N      ��  �� Orientation$ 
Horizontal=�6%   .+�5O      �� $#��Получить доступ��6(   $��0 0 5 0q�5P   (   
�������5Q   (   '  !MaterialDesignThemes.Wpf.PackIcon  5R         Kind$
 Done=�66   $��Center=�5S   6   
���  ��$��20��5U   6   $��20��5V   6   5W      5X      5Y      5Z      5\      5]      5^      