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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private function set _1091515496showSeparator(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(param1 != this._isLast)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  this._isLast = param1;
                  if(_loc3_ || _loc2_)
                  {
                     addr0053:
                     invalidateProperties();
                  }
               }
            }
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get showSeparator() : Boolean
      {
         return this._isLast;
      }
      
      public function set showSeparator(param1:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this.showSeparator;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1091515496showSeparator = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showSeparator",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0068);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
   }
}

