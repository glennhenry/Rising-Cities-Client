package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class CityTreasuryInternalPackItemVo
   {
      
      private var _paymentPack:ConfigPaymentPackDTO;
      
      private var _hasDiscount:Boolean;
      
      private var _icon:String;
      
      public function CityTreasuryInternalPackItemVo(param1:ConfigPaymentPackDTO)
      {
         super();
         this._paymentPack = param1;
      }
      
      public function get price() : Number
      {
         return Math.abs(this._paymentPack.priceRC);
      }
      
      public function get hasDiscount() : Boolean
      {
         return this._hasDiscount;
      }
      
      public function set hasDiscount(param1:Boolean) : void
      {
         this._hasDiscount = param1;
      }
      
      public function get listBackgroundGfx() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_paperPopup","special_goldbg_mini");
      }
      
      public function get amountIconGfx() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_paperPopup","mini_icon_good");
      }
      
      public function get smallPackGfx() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_goodRebuyPopup","rebuyPack_" + this._paymentPack.gfxId + "_small");
      }
      
      public function set icon(param1:String) : void
      {
         this._icon = param1;
      }
      
      public function get smallTopLeftIconGfx() : BriskDynaVo
      {
         if(this._icon)
         {
            return new BriskDynaVo("gui_popups_paperPopup",this._icon + "_small");
         }
         return new BriskDynaVo("gui_popups_paperPopup","improvement_shop_sparkle");
      }
      
      public function get bigPackIconGfx() : BriskDynaVo
      {
         if(this._icon)
         {
            return new BriskDynaVo("gui_popups_paperPopup",this._icon + "_medium");
         }
         return null;
      }
      
      public function get tooltip() : String
      {
         return LocaUtils.getString("rcl.purchasePacks.name","rcl.purchasePacks.name." + this._paymentPack.locaId);
      }
      
      public function get priceText() : String
      {
         return LocaUtils.getThousendSeperatedNumber(this.price);
      }
      
      public function get paymentPack() : ConfigPaymentPackDTO
      {
         return this._paymentPack;
      }
      
      public function get packContentAmount() : Number
      {
         if(this._paymentPack.resources.length > 0)
         {
            return this._paymentPack.resources[0].outputAmount;
         }
         if(this._paymentPack.goods.length > 0)
         {
            return this._paymentPack.goods[0].outputAmount;
         }
         return 0;
      }
      
      public function get packName() : String
      {
         return LocaUtils.getString("rcl.purchasePacks.name","rcl.purchasePacks.name." + this._paymentPack.locaId + ".capital");
      }
      
      public function get packDescriptionText() : String
      {
         var _loc1_:ConfigGoodDTO = null;
         var _loc2_:ConfigResourceDTO = null;
         if(this._paymentPack.goods.length > 0)
         {
            if(this._paymentPack.goods[0].goodConfig)
            {
               _loc1_ = this._paymentPack.goods[0].goodConfig;
               if(_loc1_.isTaggedGoodByTagName(ServerTagConstants.GOOD_KEY))
               {
                  return LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.keys.plural",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]);
               }
               if(_loc1_.isTaggedGoodByTagName(ServerTagConstants.GOOD_DEXTRO))
               {
                  return LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.dextro.plural",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]);
               }
               if(_loc1_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN))
               {
                  if(_loc1_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN))
                  {
                     return LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.wheelBuffToken.plural",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]);
                  }
                  if(_loc1_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN))
                  {
                     return LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.wheelToken.plural",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]);
                  }
               }
               else if(_loc1_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_GOOD_GRANITE))
               {
                  return LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.granite.plural",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]);
               }
            }
         }
         else if(this._paymentPack.resources.length > 0)
         {
            if(this.paymentPack.resources[0].resourceConfig)
            {
               _loc2_ = this.paymentPack.resources[0].resourceConfig;
               switch(_loc2_.type)
               {
                  case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                     return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.educationpoints.flavor",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]);
                  case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                     return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.productionpoints.flavor",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]);
                  case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                     return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.virtualcurrency.flavor",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]);
                  case ServerResConst.RESOURCE_REALCURRENCY:
                     return LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.realCurrency",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]);
               }
            }
         }
         return "";
      }
      
      public function get bigPackGfx() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_goodRebuyPopup","rebuyPack_" + this._paymentPack.gfxId + "_big");
      }
      
      public function get buttonAffordableTooltip() : String
      {
         return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.button.enabled.tooltip");
      }
      
      public function get buttonNotAffordableTooltip() : String
      {
         return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.button.plus.tooltip");
      }
   }
}

