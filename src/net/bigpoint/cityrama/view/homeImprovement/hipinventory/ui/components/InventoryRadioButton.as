package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components
{
   import spark.components.RadioButton;
   
   public class InventoryRadioButton extends RadioButton
   {
      
      private static var _skinParts:Object = {
         "labelDisplay":false,
         "iconDisplay":false
      };
      
      private var _amountLabelValue:String = "";
      
      public function InventoryRadioButton()
      {
         super();
      }
      
      public function set amountLabelValue(param1:String) : void
      {
         label = this._amountLabelValue = param1;
      }
   }
}

