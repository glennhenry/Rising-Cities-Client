package net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.Events
{
   import flash.events.Event;
   
   public class ImprovementStoreItemRendererEvent extends Event
   {
      
      public static const ITEM_OVER:String = "ITEM_OVER";
      
      public static const ITEM_OUT:String = "ITEM_OUT";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         ITEM_OVER = "ITEM_OVER";
         if(_loc1_)
         {
            ITEM_OUT = "ITEM_OUT";
         }
      }
      
      private var _selectedConfigID:Number;
      
      private var _elementIndex:int;
      
      public function ImprovementStoreItemRendererEvent(param1:String, param2:Boolean = true, param3:Number = -1, param4:int = -1)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_ || param2)
         {
            this._selectedConfigID = param3;
            if(_loc5_ || Boolean(param1))
            {
               this._elementIndex = param4;
               if(!(_loc6_ && param2))
               {
                  addr005a:
                  super(param1,param2);
               }
            }
            return;
         }
         §§goto(addr005a);
      }
      
      public function get selectedConfigID() : Number
      {
         return this._selectedConfigID;
      }
      
      public function get elementIndex() : int
      {
         return this._elementIndex;
      }
   }
}

