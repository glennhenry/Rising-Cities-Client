package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.events
{
   import flash.events.Event;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   
   public class ImprovementInventoryItemRendererEvent extends Event
   {
      
      public static const SELECTION_CHANGED:String = "SELECTION_CHANGED";
      
      public static const ITEM_OVER:String = "ITEM_OVER";
      
      public static const ITEM_OUT:String = "ITEM_OUT";
      
      private var _selectedConfigID:Number;
      
      private var _improvementVo:ImprovementVo;
      
      public function ImprovementInventoryItemRendererEvent(param1:String, param2:Number = -1, param3:Boolean = true, param4:ImprovementVo = null)
      {
         this._selectedConfigID = param2;
         this._improvementVo = param4;
         super(param1,param3);
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

