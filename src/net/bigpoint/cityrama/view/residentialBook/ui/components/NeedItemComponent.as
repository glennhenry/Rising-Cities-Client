package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.SkinnableContainer;
   
   public class NeedItemComponent extends SkinnableContainer
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         _skinParts = {
            "icon":false,
            "contentGroup":false
         };
      }
      
      private var _data:*;
      
      public var icon:BriskImageDynaLib;
      
      public function NeedItemComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public function set data(param1:*) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || param1)
         {
            this._data = param1;
            if(_loc2_ || _loc2_)
            {
               this.skin.invalidateProperties();
               if(!(_loc3_ && _loc3_))
               {
                  addr0050:
                  invalidateProperties();
               }
               §§goto(addr0055);
            }
            §§goto(addr0050);
         }
         addr0055:
      }
      
      public function get data() : *
      {
         return this._data;
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.commitProperties();
            if(_loc2_)
            {
               if(this.icon)
               {
                  if(_loc2_)
                  {
                     addr003f:
                     invalidateSize();
                  }
               }
               §§goto(addr0046);
            }
            §§goto(addr003f);
         }
         addr0046:
      }
   }
}

