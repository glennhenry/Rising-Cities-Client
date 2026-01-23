package net.bigpoint.cityrama.view.tooltip
{
   import mx.controls.ToolTip;
   
   public class HTMLTooltip extends ToolTip
   {
      
      public function HTMLTooltip()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.commitProperties();
            if(_loc1_ || _loc1_)
            {
               addr003a:
               textField.htmlText = text;
            }
            return;
         }
         §§goto(addr003a);
      }
   }
}

