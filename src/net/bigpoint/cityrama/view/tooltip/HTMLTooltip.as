package net.bigpoint.cityrama.view.tooltip
{
   import mx.controls.ToolTip;
   
   public class HTMLTooltip extends ToolTip
   {
      
      public function HTMLTooltip()
      {
         super();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         textField.htmlText = text;
      }
   }
}

