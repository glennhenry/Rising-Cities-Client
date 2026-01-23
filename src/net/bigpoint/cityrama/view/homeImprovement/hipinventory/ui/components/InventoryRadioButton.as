package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components
{
   import spark.components.RadioButton;
   
   public class InventoryRadioButton extends RadioButton
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         _skinParts = {
            "labelDisplay":false,
            "iconDisplay":false
         };
      }
      
      private var _amountLabelValue:String = "";
      
      public function InventoryRadioButton()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public function set amountLabelValue(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc2_))
         {
            label = this._amountLabelValue = param1;
         }
      }
   }
}

