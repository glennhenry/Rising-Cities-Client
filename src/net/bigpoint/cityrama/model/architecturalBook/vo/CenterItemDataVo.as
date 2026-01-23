package net.bigpoint.cityrama.model.architecturalBook.vo
{
   public class CenterItemDataVo
   {
      
      private var _blueprintVO:BlueprintVo;
      
      private var _buyEnabled:Boolean;
      
      private var _showPlus:Boolean;
      
      private var _showButton:Boolean;
      
      private var _buttonEventString:String;
      
      public function CenterItemDataVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function get blueprintVO() : BlueprintVo
      {
         return this._blueprintVO;
      }
      
      public function set blueprintVO(param1:BlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._blueprintVO = param1;
         }
      }
      
      public function get showPlus() : Boolean
      {
         return this._showPlus;
      }
      
      public function set showPlus(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._showPlus = param1;
         }
      }
   }
}

