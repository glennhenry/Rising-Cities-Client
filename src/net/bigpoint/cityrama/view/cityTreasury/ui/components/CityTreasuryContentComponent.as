package net.bigpoint.cityrama.view.cityTreasury.ui.components
{
   import flash.events.MouseEvent;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.model.cityTreasury.vo.CityTreasuryCategoryVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryBonusCodeVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryCashForActionVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryExternalPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryInternalPackItemVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryInternalPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRealCurrencyPackItemVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRealCurrencyPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRentCollectorVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.view.cityTreasury.event.CityTreasuryEvent;
   import net.bigpoint.cityrama.view.cityTreasury.event.ItemPurchaseEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryBonusCodeSkin;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryCashForActionSkin;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryExternalPackSkin;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryInternalPackSkin;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryRealCurrencySkin;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryRentCollectorSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.List;
   import spark.components.supportClasses.SkinnableComponent;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public class CityTreasuryContentComponent extends SkinnableComponent
   {
      
      public static const TYPE_INTERNAL_PACK:String = "TYPE_INTERNAL_PACK";
      
      public static const TYPE_EXTERNAL_PACK:String = "TYPE_EXTERNAL_PACK";
      
      public static const TYPE_CASH_FOR_ACTION:String = "TYPE_CASH_FOR_ACTION";
      
      public static const TYPE_BONUS_CODE:String = "TYPE_BONUS_CODE";
      
      public static const TYPE_REAL_CURRENCY:String = "TYPE_REAL_CURRENCY";
      
      public static const TYPE_RENTCOLLECTOR:String = "TYPE_RENTCOLLECTOR";
      
      private static var _skinParts:Object = {
         "packList":false,
         "listHeaderLabel":false,
         "packGfx":false,
         "headerLabel":false,
         "oldPriceLabel":false,
         "purchaseButton":true,
         "purchaseLabel":false,
         "plusIcon":false,
         "buttonIcon":false,
         "priceLine":false,
         "runtimeLabel":false,
         "mainText":false,
         "packContentList":false,
         "packIconGfx":false,
         "extraText":false,
         "errorLabel":false,
         "priceLabel":false
      };
      
      public var purchaseButton:MultistateButton;
      
      public var packList:List;
      
      public var listHeaderLabel:LocaLabel;
      
      public var mainText:LocaLabel;
      
      public var headerLabel:LocaLabel;
      
      public var packGfx:BriskImageDynaLib;
      
      public var packIconGfx:BriskImageDynaLib;
      
      public var purchaseLabel:LocaLabel;
      
      public var packContentList:List;
      
      public var errorLabel:LocaLabel;
      
      public var plusIcon:BriskImageDynaLib;
      
      public var priceLabel:LocaLabel;
      
      public var oldPriceLabel:LocaLabel;
      
      public var priceLine:Rect;
      
      public var buttonIcon:BriskImageDynaLib;
      
      public var extraText:LocaLabel;
      
      public var runtimeLabel:LocaLabel;
      
      private var _data:CityTreasuryCategoryVo;
      
      private var _isDirty:Boolean;
      
      private var _currentSelectedPackIndex:int = -1;
      
      public function CityTreasuryContentComponent()
      {
         super();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.purchaseButton.enabled = true;
            this.purchaseButton.useConfirmation = false;
            if(this._data.contentVo is CityTreasuryRealCurrencyPackVo)
            {
               this.handleRealCurrencyPackVo();
            }
            if(this._data.contentVo is CityTreasuryInternalPackVo)
            {
               this.purchaseButton.useConfirmation = true;
               this.handleInternalPackVo();
            }
            if(this._data.contentVo is CityTreasuryCashForActionVo)
            {
               this.handleCashForActionVo();
            }
            if(this._data.contentVo is CityTreasuryExternalPackVo)
            {
               this.handleExternalPackVo();
            }
            if(this._data.contentVo is CityTreasuryRentCollectorVo)
            {
               this.handleRentCollectorVo();
            }
            this.purchaseButton.removeEventListener(MouseEvent.CLICK,this.handlePurchaseButtonClick);
            this.purchaseButton.addEventListener(MouseEvent.CLICK,this.handlePurchaseButtonClick);
            if(this._data.contentVo is CityTreasuryBonusCodeVo)
            {
               this.handleBonusCodeVo();
            }
         }
      }
      
      private function handleBonusCodeVo() : void
      {
         var _loc1_:CityTreasuryBonusCodeVo = this._data.contentVo as CityTreasuryBonusCodeVo;
         if(this.headerLabel)
         {
            this.headerLabel.text = _loc1_.headerLabel;
         }
         if(this.mainText)
         {
            this.mainText.text = _loc1_.mainText;
         }
         if(this.packGfx)
         {
            this.packGfx.briskDynaVo = _loc1_.packGfx;
         }
         if(this.errorLabel)
         {
            this.errorLabel.text = _loc1_.errorLabel;
         }
         this.purchaseButton.label = _loc1_.buttonLabel;
         this.purchaseButton.toolTip = _loc1_.buttonTooltip;
         this.purchaseButton.removeEventListener(MouseEvent.CLICK,this.handlePurchaseButtonClick);
      }
      
      private function handleRentCollectorVo() : void
      {
         var _loc1_:CityTreasuryRentCollectorVo = this._data.contentVo as CityTreasuryRentCollectorVo;
         if(this.headerLabel)
         {
            this.headerLabel.text = _loc1_.headerText;
         }
         if(this.packGfx)
         {
            this.packGfx.briskDynaVo = _loc1_.packGfx;
         }
         if(this.mainText)
         {
            this.mainText.text = _loc1_.topText;
         }
         if(this.purchaseLabel)
         {
            this.purchaseLabel.text = _loc1_.purchaseLabel;
         }
         if(this.extraText)
         {
            this.extraText.text = _loc1_.bottomText;
         }
         if(this.runtimeLabel)
         {
            this.runtimeLabel.text = _loc1_.runtimeText;
         }
         if(this.packIconGfx)
         {
            if(_loc1_.bigPackIconGfx)
            {
               this.packIconGfx.briskDynaVo = _loc1_.bigPackIconGfx;
               this.packIconGfx.visible = this.packIconGfx.includeInLayout = true;
            }
            else
            {
               this.packIconGfx.visible = this.packIconGfx.includeInLayout = false;
            }
         }
         if(this.buttonIcon)
         {
            if(_loc1_.smallPackIconGfx)
            {
               this.buttonIcon.briskDynaVo = _loc1_.smallPackIconGfx;
               this.buttonIcon.visible = this.buttonIcon.includeInLayout = true;
            }
            else
            {
               this.buttonIcon.visible = this.buttonIcon.includeInLayout = false;
            }
         }
         if(this.priceLabel)
         {
            if(_loc1_.hasDiscount)
            {
               this.priceLabel.text = _loc1_.discountLabel;
               this.priceLabel.visible = this.priceLabel.includeInLayout = true;
               if(this.priceLine)
               {
                  this.priceLine.visible = this.priceLine.includeInLayout = true;
               }
            }
            else
            {
               this.priceLabel.visible = this.priceLabel.includeInLayout = false;
               if(this.priceLine)
               {
                  this.priceLine.visible = this.priceLine.includeInLayout = false;
               }
            }
         }
         this.purchaseButton.label = _loc1_.buttonLabel;
         this.purchaseButton.toolTip = _loc1_.buttonTooltip;
      }
      
      private function handleExternalPackVo() : void
      {
         var _loc1_:CityTreasuryExternalPackVo = this._data.contentVo as CityTreasuryExternalPackVo;
         if(this.headerLabel)
         {
            this.headerLabel.text = _loc1_.packName;
         }
         if(this.mainText)
         {
            this.mainText.text = _loc1_.packDescription;
         }
         if(this.packGfx)
         {
            if(_loc1_.packGfx)
            {
               this.packGfx.briskDynaVo = _loc1_.packGfx;
            }
         }
         if(this.packIconGfx)
         {
            if(_loc1_.bigPackIconGfx)
            {
               this.packIconGfx.briskDynaVo = _loc1_.bigPackIconGfx;
               this.packIconGfx.visible = this.packIconGfx.includeInLayout = true;
            }
            else
            {
               this.packIconGfx.visible = this.packIconGfx.includeInLayout = false;
            }
         }
         if(this.packContentList)
         {
            this.packContentList.dataProvider = _loc1_.packContentData;
         }
         if(this.purchaseLabel)
         {
            this.purchaseLabel.text = _loc1_.purchaseLabel;
         }
         this.purchaseButton.label = _loc1_.buttonLabel;
         this.purchaseButton.toolTip = _loc1_.buttonTooltip;
         if(this.buttonIcon)
         {
            if(_loc1_.smallPackIconGfx)
            {
               this.buttonIcon.briskDynaVo = _loc1_.smallPackIconGfx;
               this.buttonIcon.visible = this.buttonIcon.includeInLayout = true;
            }
            else
            {
               this.buttonIcon.visible = this.buttonIcon.includeInLayout = false;
            }
         }
         if(this.priceLabel)
         {
            if(_loc1_.hasDiscount)
            {
               this.priceLabel.text = _loc1_.priceLabel;
               this.priceLabel.visible = this.priceLabel.includeInLayout = true;
               if(this.priceLine)
               {
                  this.priceLine.visible = this.priceLine.includeInLayout = true;
               }
            }
            else
            {
               this.priceLabel.visible = this.priceLabel.includeInLayout = false;
               if(this.priceLine)
               {
                  this.priceLine.visible = this.priceLine.includeInLayout = false;
               }
            }
         }
      }
      
      private function handleCashForActionVo() : void
      {
         var _loc1_:CityTreasuryCashForActionVo = this._data.contentVo as CityTreasuryCashForActionVo;
         if(this.headerLabel)
         {
            this.headerLabel.text = _loc1_.headerLabel;
         }
         if(this.mainText)
         {
            this.mainText.text = _loc1_.mainText;
         }
         if(this.packGfx)
         {
            this.packGfx.briskDynaVo = _loc1_.packGfx;
         }
         this.purchaseButton.label = _loc1_.buttonLabel;
         this.purchaseButton.toolTip = _loc1_.buttonTooltip;
      }
      
      private function handleInternalPackVo() : void
      {
         var _loc1_:CityTreasuryInternalPackVo = this._data.contentVo as CityTreasuryInternalPackVo;
         if(this.packList)
         {
            this.packList.removeEventListener(IndexChangeEvent.CHANGE,this.packListChanged);
            this.packList.addEventListener(IndexChangeEvent.CHANGE,this.packListChanged);
            this.packList.dataProvider = _loc1_.packsAsListCollection;
            if(this._currentSelectedPackIndex == -1)
            {
               this._currentSelectedPackIndex = this._data.preSelectedPackIndex;
            }
            this.selectPack(this._currentSelectedPackIndex);
         }
      }
      
      private function handleRealCurrencyPackVo() : void
      {
         var _loc1_:CityTreasuryRealCurrencyPackVo = this._data.contentVo as CityTreasuryRealCurrencyPackVo;
         if(this.headerLabel)
         {
            this.headerLabel.text = _loc1_.headerLabel;
         }
         if(this.listHeaderLabel)
         {
            this.listHeaderLabel.text = _loc1_.packListHeader;
         }
         this.purchaseButton.label = _loc1_.buttonLabel;
         this.purchaseButton.toolTip = _loc1_.buttonTooltip;
         if(this.packList)
         {
            this.packList.removeEventListener(IndexChangeEvent.CHANGE,this.packListChanged);
            this.packList.addEventListener(IndexChangeEvent.CHANGE,this.packListChanged);
            this.packList.dataProvider = _loc1_.packsAsListCollection;
            if(this._currentSelectedPackIndex == -1)
            {
               this._currentSelectedPackIndex = this._data.preSelectedPackIndex;
            }
            this.selectPack(this._currentSelectedPackIndex);
         }
      }
      
      private function handlePackListReady(param1:FlexEvent) : void
      {
         this.packList.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handlePackListReady);
         if(this._data.contentVo is CityTreasuryInternalPackVo)
         {
            this.selectPack(this._currentSelectedPackIndex);
         }
      }
      
      private function packListChanged(param1:IndexChangeEvent) : void
      {
         dispatchEvent(param1);
         this.selectPack(param1.newIndex);
      }
      
      private function selectPack(param1:int) : void
      {
         if(this.packList)
         {
            if(this._data.contentVo is CityTreasuryRealCurrencyPackVo)
            {
               this.packList.selectedIndex = param1;
               this._currentSelectedPackIndex = param1;
               this.setRealCurrencyPackData();
            }
            else if(this._data.contentVo is CityTreasuryInternalPackVo)
            {
               this.packList.selectedIndex = param1;
               this._currentSelectedPackIndex = param1;
               this.setInternalPackData();
            }
         }
      }
      
      private function setInternalPackData() : void
      {
         var _loc1_:CityTreasuryInternalPackItemVo = null;
         if(this._data.skinStyle == TYPE_INTERNAL_PACK && this._currentSelectedPackIndex != -1)
         {
            _loc1_ = (this._data.contentVo as CityTreasuryInternalPackVo).packsAsListCollection.source[this._currentSelectedPackIndex];
            if(_loc1_)
            {
               if(this.packGfx)
               {
                  this.packGfx.briskDynaVo = _loc1_.bigPackGfx;
               }
               if(this.packIconGfx)
               {
                  if(_loc1_.bigPackIconGfx)
                  {
                     this.packIconGfx.briskDynaVo = _loc1_.bigPackIconGfx;
                     this.packIconGfx.visible = this.packIconGfx.includeInLayout = true;
                  }
                  else
                  {
                     this.packIconGfx.visible = this.packIconGfx.includeInLayout = false;
                  }
               }
               if(this.headerLabel)
               {
                  this.headerLabel.text = _loc1_.packName;
               }
               if(this.listHeaderLabel)
               {
                  if(this._data.contentVo is CityTreasuryInternalPackVo)
                  {
                     this.listHeaderLabel.text = (this._data.contentVo as CityTreasuryInternalPackVo).packListHeader;
                  }
               }
               if(this.mainText)
               {
                  this.mainText.text = _loc1_.packDescriptionText;
               }
               if(this.priceLabel)
               {
                  this.priceLabel.text = _loc1_.price.toString();
               }
               if(this.plusIcon)
               {
                  this.plusIcon.visible = _loc1_.price > this._data.currentRCStock;
                  if(this.plusIcon.visible)
                  {
                     this.purchaseButton.toolTip = _loc1_.buttonNotAffordableTooltip;
                  }
                  else
                  {
                     this.purchaseButton.toolTip = _loc1_.buttonAffordableTooltip;
                  }
               }
               this.purchaseButton.label = LocaUtils.getString("rcl.booklayer.goodrebuy","rcl.booklayer.goodrebuy.button.text.capital");
               this.purchaseButton.priceToConfirm = _loc1_.price;
            }
         }
      }
      
      private function setRealCurrencyPackData() : void
      {
         var _loc1_:CityTreasuryRealCurrencyPackItemVo = null;
         if(this._data.skinStyle == TYPE_REAL_CURRENCY && this._currentSelectedPackIndex != -1)
         {
            _loc1_ = (this._data.contentVo as CityTreasuryRealCurrencyPackVo).packsAsListCollection.source[this._currentSelectedPackIndex];
            if(_loc1_)
            {
               if(this.packGfx)
               {
                  this.packGfx.briskDynaVo = _loc1_.bigPackGfx;
               }
               if(this.packIconGfx)
               {
                  if(_loc1_.bigPackIconGfx)
                  {
                     this.packIconGfx.briskDynaVo = _loc1_.bigPackIconGfx;
                     this.packIconGfx.visible = this.packIconGfx.includeInLayout = true;
                  }
                  else
                  {
                     this.packIconGfx.visible = this.packIconGfx.includeInLayout = false;
                  }
               }
               if(this.headerLabel)
               {
                  this.headerLabel.text = _loc1_.packName;
               }
               if(this.mainText)
               {
                  this.mainText.text = _loc1_.mainText;
               }
               if(this.priceLabel)
               {
                  this.priceLabel.text = _loc1_.priceLabel;
                  this.priceLabel.visible = this.priceLabel.includeInLayout = true;
               }
               if(Boolean(this.oldPriceLabel) && _loc1_.hasDiscount)
               {
                  if(this.priceLabel)
                  {
                     this.oldPriceLabel.text = this.priceLabel.text;
                     this.oldPriceLabel.visible = this.oldPriceLabel.includeInLayout = true;
                     this.priceLabel.text = _loc1_.discountPriceLabel;
                     if(this.priceLine)
                     {
                        this.priceLine.visible = this.priceLine.includeInLayout = true;
                     }
                  }
               }
               else
               {
                  this.oldPriceLabel.visible = this.oldPriceLabel.includeInLayout = false;
                  if(this.priceLine)
                  {
                     this.priceLine.visible = this.priceLine.includeInLayout = false;
                  }
               }
               this.purchaseButton.label = LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.button.text.capital");
            }
         }
      }
      
      private function handlePurchaseButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:CityTreasuryInternalPackItemVo = null;
         var _loc3_:ItemPurchaseEvent = null;
         var _loc4_:ConfigPaymentPackDTO = null;
         var _loc5_:CityTreasuryInternalPackItemVo = null;
         if(this._data.contentVo is CityTreasuryInternalPackVo && !(this._data.contentVo is CityTreasuryRealCurrencyPackVo))
         {
            if(this._currentSelectedPackIndex != -1)
            {
               _loc2_ = (this._data.contentVo as CityTreasuryInternalPackVo).packsAsListCollection.source[this._currentSelectedPackIndex];
               if(_loc2_)
               {
                  if(this._data.currentRCStock >= _loc2_.price)
                  {
                     this.purchaseButton.enabled = false;
                     _loc3_ = new ItemPurchaseEvent(ItemPurchaseEvent.PURCHASE_ITEM_PACK,true);
                     _loc3_.itemPack = _loc2_.paymentPack;
                     _loc3_.dropContainer = this.packGfx;
                     dispatchEvent(_loc3_);
                  }
                  else
                  {
                     dispatchEvent(new CityTreasuryEvent(CityTreasuryEvent.USER_CANT_AFFORD,true,true));
                  }
               }
            }
         }
         else if(this._data.contentVo is CityTreasuryRealCurrencyPackVo)
         {
            _loc4_ = null;
            if(this._currentSelectedPackIndex != -1)
            {
               _loc5_ = (this._data.contentVo as CityTreasuryRealCurrencyPackVo).packsAsListCollection.source[this._currentSelectedPackIndex];
               _loc4_ = _loc5_.paymentPack;
            }
            dispatchEvent(new CityTreasuryEvent(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,true,true,this._data.skinStyle,_loc4_));
         }
         else if(this._data.contentVo is CityTreasuryExternalPackVo)
         {
            dispatchEvent(new CityTreasuryEvent(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,true,true,this._data.skinStyle,(this._data.contentVo as CityTreasuryExternalPackVo).pack));
         }
         else if(this._data.contentVo is CityTreasuryRentCollectorVo)
         {
            dispatchEvent(new CityTreasuryEvent(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,true,true,this._data.skinStyle,(this._data.contentVo as CityTreasuryRentCollectorVo).pack));
         }
         else
         {
            dispatchEvent(new CityTreasuryEvent(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,true,true,this._data.skinStyle));
         }
      }
      
      public function set data(param1:CityTreasuryCategoryVo) : void
      {
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._data = param1;
            this._isDirty = true;
            this._currentSelectedPackIndex = -1;
            this.determineSkin();
            invalidateProperties();
         }
      }
      
      private function determineSkin() : void
      {
         if(this._data)
         {
            switch(this._data.skinStyle)
            {
               case TYPE_INTERNAL_PACK:
                  setStyle("skinClass",CityTreasuryInternalPackSkin);
                  break;
               case TYPE_REAL_CURRENCY:
                  setStyle("skinClass",CityTreasuryRealCurrencySkin);
                  break;
               case TYPE_EXTERNAL_PACK:
                  setStyle("skinClass",CityTreasuryExternalPackSkin);
                  break;
               case TYPE_BONUS_CODE:
                  setStyle("skinClass",CityTreasuryBonusCodeSkin);
                  break;
               case TYPE_CASH_FOR_ACTION:
                  setStyle("skinClass",CityTreasuryCashForActionSkin);
                  break;
               case TYPE_RENTCOLLECTOR:
                  setStyle("skinClass",CityTreasuryRentCollectorSkin);
            }
         }
      }
   }
}

