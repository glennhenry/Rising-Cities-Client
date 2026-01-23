package net.bigpoint.cityrama.view.hud.ui.components
{
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class SimpleTextBar extends SkinnableComponent
   {
      
      private static var _skinParts:Object = {"labelDisplay":true};
      
      private var _label:String = "";
      
      private var _labelIsDirty:Boolean;
      
      public var labelDisplay:LocaLabel;
      
      public function SimpleTextBar()
      {
         super();
      }
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         if(param1 != this._label)
         {
            this._label = param1;
            this._labelIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.labelDisplay)
         {
            this._labelIsDirty = true;
            this.labelDisplay.maxDisplayedLines = 1;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._labelIsDirty)
         {
            this._labelIsDirty = false;
            this.labelDisplay.text = this._label;
            invalidateProperties();
         }
      }
   }
}

