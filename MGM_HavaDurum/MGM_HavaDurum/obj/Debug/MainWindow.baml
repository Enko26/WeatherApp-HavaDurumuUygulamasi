   M S B A M L   `   `   `  ����H  DMGM_HavaDurum, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:MGM_HavaDurumMGM_HavaDurum  5   	       MGM_HavaDurum.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:MGM_HavaDurum     5   	     � Title$  
MainWindow��5   	   $��474.213��6   $��1100.776��6-    � WindowStyle$
 None=�6>    � 
ResizeMode$ NoResize=�5	   	   .��5
      � -   5         �Name$
 grid��5
      $��
10,0,0,-20q�6   ��5   
   �� 5       �� ImageSource$D >C:/Users/Enko/source/repos/MGM_HavaDurum/Resimler/darkblue.jpg��6    j� Stretch$ UniformToFill=�6f    � ColumnDefinitions 5   
   �� 5      $	��65* �6   �� 5      $
��809* �6   �� 5      $
��209* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ datagrid��5         AutoGenerateColumns .  $
��Left=�6Y   $��	10,10,0,0q�6t   $	��Top=�6�   $	��400��6�   $	��488��6�   	   SelectionUnit$	 FullRow=�6�   $��2��6�   ��6A   �� 
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$	 İl��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Il+  5      $ Durum��6%    64   �� *Durum+  5      $ Derece��6%    65   �� *Derece+5      �� 5   
   -   5        $��Verileri Getir��5      $
��Left=�6?   $��
10,415,0,0q�6Z   $	��Top=�6n   $	��100��6�   $��2��6�   �� 5   
   -   5         ��Name$ lbSehir��5      $��Sehir��6!   $
��Left=�61   $��
491,58,0,0q�6L   $	��Top=�6`   $��20(�6x   $��Times New Roman)�6�   $��1��6�   
�������$y�Hidden=�6�   �� 5   
   -   5        $ lbDerece��5      $��Derece��6"   $
��Left=�63   $��662,208,0,0q�6N   $	��Top=�6c   $��Times New Roman)�6{   $��40(�6�   $��1��6�   
�������$y�Hidden=�6�   �� 5   
   -   5        $ lbSantigrat��5      $	��°C��6%   $
��Left=�62   $��697,200,0,0q�6M   $	��Top=�6b   $��64��6z   $��74��6�   $��30(�6�   $��Times New Roman)�6�   $��1��6�   $y�Hidden=�6�   
�������6�   �� 5   
   -   5         ��Name$ imgDurum_yagmurlu��5      $
��Left=�6+   $	��178��6F   $��432,132,0,0q�6S   $	��Top=�6h   $	��196��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��1��6�   $y�Hidden=�6�   ��5      �� 5!       �� 	UriSource$D >C:/Users/Enko/source/repos/MGM_HavaDurum/Resimler/yagmurlu.png?�6   5#      �� 5$   
   -   5        $ lbDurum��5$      $��Durum��6!   $
��Left=�61   $��
648,58,0,0q�6L   $	��Top=�6`   $��20(�6x   $��Times New Roman)�6�   $��1��6�   
�������$y�Hidden=�6�   �� 5%   
   -	   5        $ imgDurum_gunesli��5%      $
��Left=�6*   $	��178��6E   $��432,132,0,0q�6R   $	��Top=�6g   $	��196��6   $ 0.5,0.5&�6�   $��1��6�   $y�Hidden=�6�   ��5&      �� 5(      $C =C:/Users/Enko/source/repos/MGM_HavaDurum/Resimler/gunesli.png?�6   5*      �� 5+   
   -
   5        $ imgDurum_parcali��5+      $
��Left=�6*   $	��178��6E   $��432,132,0,0q�6R   $	��Top=�6g   $	��196��6   $ 0.5,0.5&�6�   $��1��6�   $y�Hidden=�6�   ��5,      �� 5.      $C =C:/Users/Enko/source/repos/MGM_HavaDurum/Resimler/parcali.png?�6   50      �� 51   
   -   5        $ imgDurum_bulutlu��51      $
��Left=�6*   $	��178��6E   $��432,132,0,0q�6R   $	��Top=�6g   $	��196��6   $ 0.5,0.5&�6�   $��1��6�   $y�Hidden=�6�   ��52      �� 54      $C =C:/Users/Enko/source/repos/MGM_HavaDurum/Resimler/bulutlu.png?�6   56      �� 57   
   $��2��6   $
��Left=�6    $��99��6;   $��162,31,-53,0q�6G   $	��Top=�6]   $	��100��6u   �� 58   
   -   5        $��2��58      $
��Left=�6    $��44��6;   $��	162,0,0,0q�6G   $	��Top=�6Z   $��47��6r   $A��;C:/Users/Enko/source/repos/MGM_HavaDurum/Resimler/close.png��6}   6�   5:      5;      