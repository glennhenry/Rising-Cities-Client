package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo
{
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   
   public class ImprovementInventoryItemRendererVo
   {
      
      public static const GET_MORE_CONFIG_ID_DUMMY:Number = -666;
      
      private var _improvementVo:ImprovementVo;
      
      private var _useMasterBg:Boolean = true;
      
      private var _itemDynaVo:BriskDynaVo;
      
      private var _amount:uint;
      
      private var _cid:Number;
      
      private var _quality:String;
      
      private var _isEmpty:Boolean;
      
      private var _isGetMore:Boolean;
      
      public function ImprovementInventoryItemRendererVo(param1:Boolean = false, param2:Boolean = false)
      {
         super();
         this._isEmpty = param1;
         this._isGetMore = param2;
      }
      
      public function get useMasterBg() : Boolean
      {
         return this._useMasterBg;
      }
      
      public function get itemBackgroundDynaVo() : BriskDynaVo
      {
         return ImprovementLayerProxy.improvementBackground(this._quality,ImprovementLayerProxy.SIZE_MINI);
      }
      
      public function get itemDynaVo() : BriskDynaVo
      {
         return this._itemDynaVo;
      }
      
      public function get badgeDynaVo() : BriskDynaVo
      {
         return ImprovementLayerProxy.improvementQualityBadge(this._quality,ImprovementLayerProxy.SIZE_MINI);
      }
      
      public function get amount() : uint
      {
         return this._amount;
      }
      
      public function get cid() : Number
      {
         if(this.isGetMore)
         {
            return GET_MORE_CONFIG_ID_DUMMY;
         }
         return this._cid;
      }
      
      public function set useMasterBg(param1:Boolean) : void
      {
         this._useMasterBg = param1;
      }
      
      public function set amount(param1:uint) : void
      {
         this._amount = param1;
      }
      
      public function set cid(param1:Number) : void
      {
         this._cid = param1;
      }
      
      public function get quality() : String
      {
         return this._quality;
      }
      
      public function set quality(param1:String) : void
      {
         this._quality = param1;
      }
      
      public function get isEmpty() : Boolean
      {
         return this._isEmpty;
      }
      
      public function set itemDynaVo(param1:BriskDynaVo) : void
      {
         this._itemDynaVo = param1;
      }
      
      public function get isGetMore() : Boolean
      {
         return this._isGetMore;
      }
      
      public function get improvementVo() : ImprovementVo
      {
         return this._improvementVo;
      }
      
      public function set improvementVo(param1:ImprovementVo) : void
      {
         this._improvementVo = param1;
      }
   }
}

