package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.events
{
   import flash.events.Event;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   
   public class ImprovementInventoryItemRendererEvent extends Event
   {
      
      public static const SELECTION_CHANGED:String = "SELECTION_CHANGED";
      
      public static const ITEM_OVER:String = "ITEM_OVER";
      
      public static const ITEM_OUT:String = "ITEM_OUT";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         SELECTION_CHANGED = "SELECTION_CHANGED";
         if(!(_loc1_ && _loc2_))
         {
            ITEM_OVER = "ITEM_OVER";
            if(_loc2_)
            {
               addr004c:
               ITEM_OUT = "ITEM_OUT";
            }
            return;
         }
      }
      §§goto(addr004c);
      
      private var _selectedConfigID:Number;
      
      private var _improvementVo:ImprovementVo;
      
      public function ImprovementInventoryItemRendererEvent(param1:String, param2:Number = -1, param3:Boolean = true, param4:ImprovementVo = null)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!(_loc5_ && Boolean(param1)))
         {
            this._selectedConfigID = param2;
            if(!_loc5_)
            {
               this._improvementVo = param4;
               if(_loc6_)
               {
                  addr0047:
                  super(param1,param3);
               }
            }
            return;
         }
         §§goto(addr0047);
      }
      
      public function get selectedConfigID() : Number
      {
         return this._selectedConfigID;
      }
      
      public function get improvementVo() : ImprovementVo
      {
         return this._improvementVo;
      }
   }
}

