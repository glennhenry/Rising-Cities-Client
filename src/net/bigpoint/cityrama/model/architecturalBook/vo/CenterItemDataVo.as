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
         super();
      }
      
      public function get blueprintVO() : BlueprintVo
      {
         return this._blueprintVO;
      }
      
      public function set blueprintVO(param1:BlueprintVo) : void
      {
         this._blueprintVO = param1;
      }
      
      public function get showPlus() : Boolean
      {
         return this._showPlus;
      }
      
      public function set showPlus(param1:Boolean) : void
      {
         this._showPlus = param1;
      }
   }
}

