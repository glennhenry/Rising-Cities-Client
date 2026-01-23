package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.SkinnableContainer;
   
   public class NeedItemComponent extends SkinnableContainer
   {
      
      private static var _skinParts:Object = {
         "icon":false,
         "contentGroup":false
      };
      
      private var _data:*;
      
      public var icon:BriskImageDynaLib;
      
      public function NeedItemComponent()
      {
         super();
      }
      
      public function set data(param1:*) : void
      {
         this._data = param1;
         this.skin.invalidateProperties();
         invalidateProperties();
      }
      
      public function get data() : *
      {
         return this._data;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.icon)
         {
            invalidateSize();
         }
      }
   }
}

