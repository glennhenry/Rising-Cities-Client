package net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.Events
{
   import flash.events.Event;
   
   public class ImprovementStoreItemRendererEvent extends Event
   {
      
      public static const ITEM_OVER:String = "ITEM_OVER";
      
      public static const ITEM_OUT:String = "ITEM_OUT";
      
      private var _selectedConfigID:Number;
      
      private var _elementIndex:int;
      
      public function ImprovementStoreItemRendererEvent(param1:String, param2:Boolean = true, param3:Number = -1, param4:int = -1)
      {
         this._selectedConfigID = param3;
         this._elementIndex = param4;
         super(param1,param2);
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

