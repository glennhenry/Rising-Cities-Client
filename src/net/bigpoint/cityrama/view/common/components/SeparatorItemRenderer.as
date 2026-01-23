package net.bigpoint.cityrama.view.common.components
{
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.interfaces.ISeparatorReceiver;
   import spark.components.supportClasses.ItemRenderer;
   
   public class SeparatorItemRenderer extends ItemRenderer implements ISeparatorReceiver
   {
      
      private var _isLast:Boolean = false;
      
      public function SeparatorItemRenderer()
      {
         super();
      }
      
      private function set _1091515496showSeparator(param1:Boolean) : void
      {
         if(param1 != this._isLast)
         {
            this._isLast = param1;
            invalidateProperties();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showSeparator() : Boolean
      {
         return this._isLast;
      }
      
      public function set showSeparator(param1:Boolean) : void
      {
         var _loc2_:Object = this.showSeparator;
         if(_loc2_ !== param1)
         {
            this._1091515496showSeparator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showSeparator",_loc2_,param1));
            }
         }
      }
   }
}

