   M S B A M L   `   `   `  ����C  ?ItogRab2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:Task12Task12  5   	   5clr-namespace:Task12.ViewModelsTask12.ViewModels  5   	       Task12.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	    localclr-namespace:Task12  5   	   ,local1clr-namespace:Task12.ViewModels  5   	   -   5          � WindowStartupLocation$  CenterScreen=�5
   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency . $��Consolas)�5   	   $	��550��5   	   $
��1650��5   	    � DataContext 5   	   ��  �� RelativeSource �� *Self+ �� Path$ 	ViewModel� � 	Resources 5      +   %Task12.ViewModels.MainWindowViewModel   MainViewModel��%   &	          5   
   6%   5      .��5      �� ���#1E1E1E �� CornerRadius$ 20��5      	 �� Padding$	 10q�5      ._�5   
   � 
 � RowDefinitions
 5      �� 5      $��70 �6    �� 5      $��1* �6    .+�5       �� $��0��6   $
��Left=�5!      $��Center=�5"       �� Orientation$ 
Horizontal=�5#      .+�5$      �� $	��330��6    ! MaterialDesignOutlinedTextBox#��[ 5%      
�������.  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton . $��14(�5(      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$5 /Введите данные для поиска��5+      ��5)      �� *
SearchText+ �� UpdateSourceTrigger$ PropertyChanged=���5*      ��  �� ElementName$ TbSearch��$ 
Foreground�5+      '  !MaterialDesignThemes.Wpf.PackIcon  5,         Kind$ Search=�6*   $��Center=�5-   *   $��10 0 0 0q�5.   *   $��30��5/   *   
�������$��30��51   *   �� 52      $��10 0 0 0q�6    � ToolTip$&  Вывод данных в Excel��54      
������� & "MaterialDesignIconForegroundButton#��[ 56      ��53      �� *ExportToExcelCommand+��57      0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$
 File=�59      �� 5:      $��0��6   $��Right=�5;      $��Center=�5<      $ 
Horizontal=�5=      .+�5>      �� $	��330��6   #��[ 5?      
�������$��14(�5A      $ Заголовок��5D      $��0 0 10 0q�5E      ��5B      �� *Title+$ PropertyChanged=���5C      �� $ TbSearch��$ 
Foreground�5E      �� 5F      $	��330��6   #��[ 5G      
������� . $��14(�5J      $ Описание��5M      $��0 0 10 0q�5N      ��5K      �� *Description+$ PropertyChanged=���5L      �� $ TbSearch��$ 
Foreground�5N      �� 5O      -   5         ��Name$	 Add��5S      $��2��5O      $��Center=�5P      $��Center=�5Q      $��50��5R      $��16(�5T      
�������
�������3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   IsIndeterminate .    IsIndicatorVisible .    Value$ -1Q�5Z         IndicatorBackground
 ����    IndicatorForeground
 �����   MaterialDesignOutlinedButton#��[ 5]      ��5U      �� *AddIncidentCommand+.��5^      �� $ 
Horizontal=�6!   .+�5_      �� $��Добавить��6$   
�������$��0 0 5 0q�5a   $     5b      $
 Done=�62   $��Center=�5c   2   
�������$��20��5e   2   $��20��5f   2   5g      5h      5i      �� 5j      $��1��6   .+�5k      �� -   5         ��Name$ IncidentsListView��5k      $��0 10 0 0q�5l      
�������
���������5n      �� *	Incidents+ �� View 5q      �� 5r      .P�5t      ��  �� Width$	 200��6-   ��5u   "   �� 5v   &   
�������$��Загоовок��6N    �� DisplayMemberBinding 5x   "   �� 5y   &   $ Title�6.   5{      �� 5~      $	 200��6-   ��5   "   �� 5�   &   
�������$��Описание��6N    5�   "   �� 5�   &   $ Description�6.   5�      �� 5�      $	 200��6-   ��5�   &   �� 5�   &   
�������$��Дата��6N    5�   +   �� 5�   2   $ DataReported�6:   5�   !   �� 5�      $	 200��6-   ��5�   "   �� 5�   &   
�������$��Статус��6N    5�   "   �� 5�   &   $ Status�6.   5�      5�       � ContextMenu 5�      �� 5�      .@�5�      m� $��Удалить��6'    m� Command 5�   '   �� *#!DataContext.DeleteIncidentCommand+ ��  �� AncestorType$ ContextMenuL�  m� CommandParameter  5�   '   �� 5�      5�      5�      5�      5�      5�      