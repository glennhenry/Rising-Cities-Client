package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.cityTreasury.vo.ICityTreasuryContentVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class CityTreasuryExternalPackVo implements ICityTreasuryContentVo
   {
      
      private var _pack:ConfigPaymentPackDTO;
      
      private var _price:Number = 0;
      
      private var _discountedPrice:Number = -1;
      
      private var _currency:String = "€";
      
      private var _icon:String;
      
      private var _packContent:ArrayCollection;
      
      public function CityTreasuryExternalPackVo()
      {
         super();
      }
      
      public function get pack() : ConfigPaymentPackDTO
      {
         return this._pack;
      }
      
      public function set pack(param1:ConfigPaymentPackDTO) : void
      {
         this._pack = param1;
      }
      
      public function set price(param1:Number) : void
      {
         this._price = param1;
      }
      
      public function set discountedPrice(param1:Number) : void
      {
         this._discountedPrice = param1;
      }
      
      public function set currency(param1:String) : void
      {
         this._currency = param1;
      }
      
      public function set icon(param1:String) : void
      {
         this._icon = param1;
      }
      
      public function get packGfx() : BriskDynaVo
      {
         if(this._pack)
         {
            return new BriskDynaVo("gui_popups_goodRebuyPopup","rebuyPack_" + this._pack.gfxId + "_big");
         }
         return null;
      }
      
      public function get smallPackIconGfx() : BriskDynaVo
      {
         if(this._icon)
         {
            return new BriskDynaVo("gui_popups_paperPopup",this._icon + "_small");
         }
         return null;
      }
      
      public function get bigPackIconGfx() : BriskDynaVo
      {
         if(this._icon)
         {
            return new BriskDynaVo("gui_popups_paperPopup",this._icon + "_medium");
         }
         return null;
      }
      
      public function get packName() : String
      {
         if(this._pack)
         {
            return LocaUtils.getString("rcl.purchasePacks.name","rcl.purchasePacks.name." + this._pack.locaId + ".capital");
         }
         return "";
      }
      
      public function get packDescription() : String
      {
         if(this._pack)
         {
            return LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description." + this._pack.locaId + ".flavor");
         }
         return "";
      }
      
      public function get buttonLabel() : String
      {
         if(this._discountedPrice == -1)
         {
            return this.priceLabel;
         }
         return this._discountedPrice.toFixed(2) + " " + this._currency;
      }
      
      public function get hasDiscount() : Boolean
      {
         return this._discountedPrice != -1;
      }
      
      public function get priceLabel() : String
      {
         return this._price.toFixed(2) + " " + this._currency;
      }
      
      public function get buttonTooltip() : String
      {
         return LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.button.enabled.tooltip");
      }
      
      public function get packContentData() : ArrayCollection
      {
         var _loc1_:RewardItemComponentVo = null;
         var _loc2_:ConfigOutputDTO = null;
         if(this._pack)
         {
            if(!this._packContent)
            {
               this._packContent = new ArrayCollection();
               for each(_loc2_ in this._pack.resources)
               {
                  _loc1_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc2_);
                  if(_loc1_)
                  {
                     this._packContent.addItem(_loc1_);
                  }
               }
               for each(_loc2_ in this._pack.goods)
               {
                  _loc1_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc2_);
                  if(_loc1_)
                  {
                     this._packContent.addItem(_loc1_);
                  }
               }
               for each(_loc2_ in this._pack.permissions)
               {
                  _loc1_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc2_);
                  if(_loc1_)
                  {
                     this._packContent.addItem(_loc1_);
                  }
               }
               for each(_loc2_ in this._pack.improvements)
               {
                  _loc1_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc2_);
                  if(_loc1_)
                  {
                     this._packContent.addItem(_loc1_);
                  }
               }
               for each(_loc2_ in this._pack.assists)
               {
                  _loc1_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc2_);
                  if(_loc1_)
                  {
                     this._packContent.addItem(_loc1_);
                  }
               }
               RewardLayerProxy.sortRewardList(this._packContent);
            }
         }
         return this._packContent;
      }
      
      public function get purchaseLabel() : String
      {
         return LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.common.priceheader");
      }
   }
}

