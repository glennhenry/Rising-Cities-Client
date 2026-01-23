package net.bigpoint.cityrama.view.common.components
{
   import mx.core.IVisualElement;
   import net.bigpoint.cityrama.view.common.interfaces.ISeparatorReceiver;
   import spark.components.List;
   
   public class SeparatorList extends List
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _skinParts = {
            "dataGroup":false,
            "scroller":false,
            "dropIndicator":false
         };
      }
      
      public function SeparatorList()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function updateRenderer(param1:IVisualElement, param2:int, param3:Object) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(param1))
         {
            super.updateRenderer(param1,param2,param3);
            if(_loc4_)
            {
               addr003d:
               if(param1 is ISeparatorReceiver)
               {
                  if(!(_loc5_ && Boolean(this)))
                  {
                     (param1 as ISeparatorReceiver).showSeparator = this.showSeparatorInList(param2);
                  }
               }
            }
            return;
         }
         §§goto(addr003d);
      }
      
      private function showSeparatorInList(param1:int) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(dataProvider)
            {
               if(_loc2_)
               {
                  if(dataProvider.length > 1)
                  {
                     if(_loc2_)
                     {
                        addr0054:
                        if(param1 == dataProvider.length - 1)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr006d:
                              §§push(true);
                              if(_loc2_ || _loc2_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr007c:
                              return false;
                           }
                           return §§pop();
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            §§goto(addr007c);
         }
         §§goto(addr0054);
      }
   }
}

