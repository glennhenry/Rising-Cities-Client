package net.bigpoint.cityrama.model.improvement.vo
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class ImprovementStoreListVo
   {
      
      private var _currencyType:String = "CURR_REAL";
      
      private var _price:Number = 0;
      
      private var _improvementPack:ImprovementBoosterpackVo;
      
      public function ImprovementStoreListVo()
      {
         super();
      }
      
      public function set currencyType(param1:String) : void
      {
         this._currencyType = param1;
      }
      
      public function set improvementPack(param1:ImprovementBoosterpackVo) : void
      {
         this._improvementPack = param1;
      }
      
      public function set price(param1:Number) : void
      {
         this._price = param1;
      }
      
      public function get configId() : Number
      {
         if(this._improvementPack != null)
         {
            return this._improvementPack.config.id;
         }
         return NaN;
      }
      
      public function get price() : Number
      {
         return Math.abs(this._price);
      }
      
      public function get improvementPack() : ImprovementBoosterpackVo
      {
         return this._improvementPack;
      }
      
      public function get backgroundGfx() : BriskDynaVo
      {
         if(this._currencyType == ServerResConst.RESOURCE_REALCURRENCY)
         {
            return new BriskDynaVo("gui_popups_paperPopup","improvement_shop_item_background_small_yellow");
         }
         return new BriskDynaVo("gui_popups_paperPopup","improvement_shop_item_background_small_blue");
      }
      
      public function get miniIconGfx() : BriskDynaVo
      {
         switch(this._currencyType)
         {
            case ServerResConst.RESOURCE_REALCURRENCY:
               return new BriskDynaVo("gui_popups_paperPopup","improvement_shop_mm");
            case ServerResConst.RESOURCE_VIRTUALCURRENCY:
               return new BriskDynaVo("gui_popups_paperPopup","improvement_shop_cc");
            default:
               return null;
         }
      }
      
      public function get itemGfx() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_improvementStore","improvementPack_" + this._improvementPack.gfxId + "_small");
      }
      
      public function get showSparkle() : Boolean
      {
         if(this._currencyType == ServerResConst.RESOURCE_REALCURRENCY)
         {
            return true;
         }
         return false;
      }
      
      public function get priceText() : String
      {
         return LocaUtils.getThousendSeperatedNumber(this.price);
      }
   }
}

