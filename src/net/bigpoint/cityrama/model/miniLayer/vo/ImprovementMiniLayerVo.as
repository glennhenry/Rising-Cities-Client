package net.bigpoint.cityrama.model.miniLayer.vo
{
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   
   public class ImprovementMiniLayerVo
   {
      
      private var _slotId:Number;
      
      private var _buildingId:Number;
      
      private var _improvementVo:ImprovementVo;
      
      private var _realCurrency:Number = 0;
      
      private var _currentTime:Number = -1;
      
      public function ImprovementMiniLayerVo()
      {
         super();
      }
      
      public function get slotId() : Number
      {
         return this._slotId;
      }
      
      public function set slotId(param1:Number) : void
      {
         this._slotId = param1;
      }
      
      public function get buildingId() : Number
      {
         return this._buildingId;
      }
      
      public function set buildingId(param1:Number) : void
      {
         this._buildingId = param1;
      }
      
      public function get improvementVo() : ImprovementVo
      {
         return this._improvementVo;
      }
      
      public function set improvementVo(param1:ImprovementVo) : void
      {
         this._improvementVo = param1;
      }
      
      public function get realCurrency() : Number
      {
         return this._realCurrency;
      }
      
      public function set realCurrency(param1:Number) : void
      {
         this._realCurrency = param1;
      }
      
      public function get renewalAffordable() : Boolean
      {
         if(this._improvementVo)
         {
            if(this._realCurrency >= this._improvementVo.renewalPrice)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get currentTime() : Number
      {
         return this._currentTime;
      }
      
      public function set currentTime(param1:Number) : void
      {
         this._currentTime = param1;
      }
   }
}

