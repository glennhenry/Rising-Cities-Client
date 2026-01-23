package net.bigpoint.cityrama.model.cityTreasury
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.cityTreasury.vo.CityTreasuryCategoryVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.CityTreasuryTabVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.ICityTreasuryContentVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.TreasuryIconOverrideVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryBonusCodeVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryCashForActionVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryExternalPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryInternalPackItemVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryInternalPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRealCurrencyPackItemVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRealCurrencyPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRentCollectorVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.ExternalPaymentPackInfoVo;
   import net.bigpoint.cityrama.model.common.vo.CategoryMenuListVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.ServerEventTypeConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.CityImprovementProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentUpsellDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CityTreasuryProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "CityTreasuryProxy";
      
      public static const PAYMENT_CATEGORY_STARTER:String = "cat=4";
      
      public static const PAYMENT_CATEGORY_CASH_FOR_ACTION:String = "cfa=1";
      
      public static const PAYMENT_CATEGORY_DEFAULT:String = "cat=101";
      
      public static const PAYMENT_CATEGORY_REAL_CURRENCY:String = "cat=1";
      
      public static const PAYMENT_CATEGORY_EXTERNAL:String = "cat=6";
      
      private static const SPECIAL_CAT_CASH_FOR_ACTION:String = "SPECIAL_CAT_CASH_FOR_ACTION";
      
      private static const SPECIAL_CAT_BONUS_CODE:String = "SPECIAL_CAT_BONUS_CODE";
      
      private static const UPSELL_ICON_CONSTANT:String = "upsell";
      
      private static const BONUSDAY_ICON_CONSTANT:String = "bonusDay";
      
      private static const RENTCOLLECTOR_SALE_ICON_CONSTANT:String = "upsell";
      
      private static const UPSELL_ICON_PRIORITY:int = 100;
      
      private static const BONUSDAYUPSELL_ICON_PRIORITY:int = 200;
      
      private static const RENTCOLLECTOR_SALE_ICON_PRIORITY:int = 300;
      
      public static const resourceCategories:Vector.<String> = new <String>[ServerResConst.RESOURCE_REALCURRENCY,ServerResConst.RESOURCE_VIRTUALCURRENCY,ServerResConst.RESOURCE_PRODUCTIONPOINTS,ServerResConst.RESOURCE_EDUCATIONPOINTS];
      
      public static const goodCategories:Vector.<String> = new <String>[ServerTagConstants.CLIENT_GOOD_GRANITE,ServerTagConstants.GOOD_KEY,ServerTagConstants.GOOD_DEXTRO,ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN];
      
      public static const specialCategories:Vector.<String> = new <String>[SPECIAL_CAT_CASH_FOR_ACTION,SPECIAL_CAT_BONUS_CODE,ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR];
      
      public static const starterPackCategories:Vector.<String> = new <String>[ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER,ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT,ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION,ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID,ServerTagConstants.CLIENT_PAYMENT_PACK_GAMBLING];
      
      private var _cP:GameConfigProxy;
      
      private var _pRP:PlayerResourceProxy;
      
      private var _fP:FeatureProxy;
      
      private var _pP:PlayerProxy;
      
      private var _tP:TimerProxy;
      
      private var _starterPackPaymentHelper:PaymentRequestHelper;
      
      private var _realCurrencyPackPaymentHelper:PaymentRequestHelper;
      
      private var _upsellPackPaymentHelper:PaymentRequestHelper;
      
      private var _rentCollectorPaymentHelper:PaymentRequestHelper;
      
      private var _treasuryIcons:Vector.<TreasuryIconOverrideVo>;
      
      private var _upsellEnabled:Boolean;
      
      public function CityTreasuryProxy()
      {
         super(NAME);
         var _loc1_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         if(_loc1_)
         {
            this._upsellEnabled = _loc1_.upsellingEnabled;
         }
      }
      
      private static function getTabIndexOfPack(param1:ConfigPaymentPackDTO) : int
      {
         var _loc2_:ConfigTagDTO = null;
         for each(_loc2_ in param1.configTags)
         {
            switch(_loc2_.tagName)
            {
               case ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK:
                  return CityTreasuryTabProxy.CURRENCY_TAB_INDEX;
               case ServerTagConstants.CLIENT_ITEM_REBUY_PACK:
                  return CityTreasuryTabProxy.GOODS_TAB_INDEX;
               case ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_GAMBLING:
                  return CityTreasuryTabProxy.PACKS_TAB_INDEX;
               case ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR:
                  return CityTreasuryTabProxy.SPECIALS_TAB_INDEX;
            }
         }
         return -1;
      }
      
      private static function getTypeNameOfPack(param1:ConfigPaymentPackDTO) : String
      {
         var _loc2_:ConfigTagDTO = null;
         for each(_loc2_ in param1.configTags)
         {
            switch(_loc2_.tagName)
            {
               case ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK:
                  return ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK;
               case ServerTagConstants.CLIENT_ITEM_REBUY_PACK:
                  return ServerTagConstants.CLIENT_ITEM_REBUY_PACK;
               case ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_GAMBLING:
                  return _loc2_.tagName;
            }
         }
         return "";
      }
      
      private static function getCategoryIndexOfPack(param1:ConfigPaymentPackDTO) : int
      {
         var _loc2_:ConfigTagDTO = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1.type == ServerPaymentPackConst.CURRENCY)
         {
            for each(_loc2_ in param1.configTags)
            {
               if(_loc2_.tagName == ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK)
               {
                  return 0;
               }
            }
         }
         for each(_loc2_ in param1.configTags)
         {
            _loc3_ = int(starterPackCategories.indexOf(_loc2_.tagName));
            if(_loc3_ != -1)
            {
               return _loc3_;
            }
         }
         if(Boolean(param1.goods) && param1.goods.length > 0)
         {
            for each(_loc2_ in param1.goods[0].goodConfig.tagConfigs)
            {
               _loc4_ = int(goodCategories.indexOf(_loc2_.tagName));
               if(_loc4_ != -1)
               {
                  return _loc4_;
               }
            }
         }
         else if(Boolean(param1.resources) && param1.resources.length > 0)
         {
            _loc5_ = int(resourceCategories.indexOf(param1.resources[0].resourceConfig.type));
            if(_loc5_ != -1)
            {
               return _loc5_;
            }
         }
         return -1;
      }
      
      private static function getCategoryNameOfPack(param1:ConfigPaymentPackDTO) : String
      {
         var _loc2_:ConfigTagDTO = null;
         if(param1.type == ServerPaymentPackConst.CURRENCY)
         {
            for each(_loc2_ in param1.configTags)
            {
               if(_loc2_.tagName == ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK)
               {
                  return ServerResConst.RESOURCE_REALCURRENCY;
               }
            }
         }
         for each(_loc2_ in param1.configTags)
         {
            if(starterPackCategories.indexOf(_loc2_.tagName) != -1)
            {
               return _loc2_.tagName;
            }
         }
         if(Boolean(param1.goods) && param1.goods.length > 0)
         {
            for each(_loc2_ in param1.goods[0].goodConfig.tagConfigs)
            {
               if(goodCategories.indexOf(_loc2_.tagName) != -1)
               {
                  return _loc2_.tagName;
               }
            }
         }
         else if(Boolean(param1.resources) && param1.resources.length > 0)
         {
            if(resourceCategories.indexOf(param1.resources[0].resourceConfig.type) != -1)
            {
               return param1.resources[0].resourceConfig.type;
            }
         }
         return "";
      }
      
      public static function configToCategory(param1:ConfigPaymentPackDTO) : String
      {
         var _loc2_:ConfigTagDTO = null;
         if(param1.type == ServerPaymentPackConst.CURRENCY)
         {
            for each(_loc2_ in param1.configTags)
            {
               if(_loc2_.tagName == ServerResConst.RESOURCE_REALCURRENCY)
               {
                  return CityTreasuryProxy.PAYMENT_CATEGORY_REAL_CURRENCY;
               }
            }
         }
         for each(_loc2_ in param1.configTags)
         {
            switch(_loc2_.tagName)
            {
               case ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK:
                  return CityTreasuryProxy.PAYMENT_CATEGORY_REAL_CURRENCY;
               case ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_GAMBLING:
                  return CityTreasuryProxy.PAYMENT_CATEGORY_STARTER;
               case ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR:
                  return CityTreasuryProxy.PAYMENT_CATEGORY_EXTERNAL;
            }
         }
         return "";
      }
      
      override public function onRegister() : void
      {
         var _loc4_:ConfigPaymentPackDTO = null;
         var _loc5_:ConfigPaymentPackUpsellingDTO = null;
         super.onRegister();
         var _loc1_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         var _loc2_:String = _loc1_.paymentURL;
         this._starterPackPaymentHelper = new PaymentRequestHelper();
         this._starterPackPaymentHelper.requestPacksFromPayment(this.allStarterPacks,PAYMENT_CATEGORY_STARTER,_loc2_);
         this._realCurrencyPackPaymentHelper = new PaymentRequestHelper();
         this._realCurrencyPackPaymentHelper.requestPacksFromPayment(this.allRealCurrencyPacks,PAYMENT_CATEGORY_REAL_CURRENCY,_loc2_);
         this._rentCollectorPaymentHelper = new PaymentRequestHelper();
         this._rentCollectorPaymentHelper.requestPacksFromPayment(this.allExternalRentCollectorPacks,PAYMENT_CATEGORY_EXTERNAL,_loc2_);
         this._upsellPackPaymentHelper = new PaymentRequestHelper();
         var _loc3_:Vector.<ConfigPaymentPackUpsellingDTO> = new Vector.<ConfigPaymentPackUpsellingDTO>();
         for each(_loc4_ in this.configProxy.config.paymentPacks)
         {
            for each(_loc5_ in _loc4_.upsellPackages)
            {
               _loc3_.push(_loc5_);
            }
         }
         this._upsellPackPaymentHelper.requestUpsellPacksFromPayment(_loc3_,PAYMENT_CATEGORY_DEFAULT,_loc2_);
      }
      
      public function getCityTreasuryContentVo(param1:int, param2:int = 0, param3:int = 0, param4:String = "") : CityTreasuryTabVo
      {
         switch(param1)
         {
            case CityTreasuryTabProxy.CURRENCY_TAB_INDEX:
               return this.createCurrencyTabVo(new CityTreasuryTabVo(param2,param3));
            case CityTreasuryTabProxy.GOODS_TAB_INDEX:
               return this.createGoodContentVo(new CityTreasuryTabVo(param2,param3));
            case CityTreasuryTabProxy.PACKS_TAB_INDEX:
               return this.createPackContentVo(new CityTreasuryTabVo(param2,param3));
            case CityTreasuryTabProxy.SPECIALS_TAB_INDEX:
               return this.createSpecialContentVo(new CityTreasuryTabVo(param2,param3),param4);
            default:
               return null;
         }
      }
      
      public function getCategoryIndexByTabAndCategory(param1:int, param2:String) : int
      {
         switch(param1)
         {
            case CityTreasuryTabProxy.CURRENCY_TAB_INDEX:
               return Math.max(resourceCategories.indexOf(param2),0);
            case CityTreasuryTabProxy.GOODS_TAB_INDEX:
               return Math.max(goodCategories.indexOf(param2),0);
            case CityTreasuryTabProxy.PACKS_TAB_INDEX:
               return Math.max(starterPackCategories.indexOf(param2),0);
            case CityTreasuryTabProxy.SPECIALS_TAB_INDEX:
               return Math.max(specialCategories.indexOf(param2),0);
            default:
               return 0;
         }
      }
      
      public function getFirstInternalPackIndexByCategoryAndContent(param1:String, param2:String) : int
      {
         var _loc3_:Vector.<ConfigPaymentPackDTO> = null;
         var _loc4_:ConfigPaymentPackDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:ConfigOutputDTO = null;
         if(resourceCategories.indexOf(param1) != -1)
         {
            _loc3_ = this.gatherPacks(ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK);
         }
         else if(goodCategories.indexOf(param1) != -1)
         {
            _loc3_ = this.gatherPacks(ServerTagConstants.CLIENT_ITEM_REBUY_PACK);
         }
         if(_loc3_.length > 0)
         {
            _loc3_ = this.getPacksByCategory(_loc3_,param1);
            for each(_loc4_ in _loc3_)
            {
               for each(_loc5_ in _loc4_.goods)
               {
                  if(_loc5_.goodConfig)
                  {
                     if(_loc5_.goodConfig.isTaggedGoodByTagName(param2))
                     {
                        return _loc3_.indexOf(_loc4_);
                     }
                  }
               }
               for each(_loc6_ in _loc4_.resources)
               {
                  if(_loc6_.resourceConfig)
                  {
                     if(_loc6_.resourceConfig.type == param2)
                     {
                        return _loc3_.indexOf(_loc4_);
                     }
                  }
               }
            }
         }
         return 0;
      }
      
      private function createCurrencyTabVo(param1:CityTreasuryTabVo) : CityTreasuryTabVo
      {
         var _loc4_:CityTreasuryCategoryVo = null;
         var _loc5_:CategoryMenuListVo = null;
         var _loc6_:ICityTreasuryContentVo = null;
         var _loc7_:CityTreasuryInternalPackVo = null;
         var _loc8_:CityTreasuryRealCurrencyPackVo = null;
         var _loc10_:String = null;
         var _loc11_:* = null;
         var _loc2_:Vector.<ConfigPaymentPackDTO> = this.gatherPacks(ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK);
         var _loc3_:Vector.<CityTreasuryCategoryVo> = new Vector.<CityTreasuryCategoryVo>();
         var _loc9_:int = 0;
         for each(_loc10_ in resourceCategories)
         {
            _loc4_ = new CityTreasuryCategoryVo();
            _loc4_.currentRCStock = this.resourceProxy.realCurrency;
            _loc5_ = new CategoryMenuListVo();
            _loc11_ = this.getIcon(CityTreasuryTabProxy.CURRENCY_TAB_INDEX,_loc9_);
            if(_loc11_)
            {
               _loc11_ += "_small";
            }
            switch(_loc10_)
            {
               case ServerResConst.RESOURCE_REALCURRENCY:
                  if(_loc11_ == null)
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_realCurrency");
                  }
                  else
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc11_);
                  }
                  _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.realcurrency.categoryentry");
                  _loc8_ = new CityTreasuryRealCurrencyPackVo();
                  _loc8_.packs = this.getRealCurrencyPacks(_loc2_,CityTreasuryTabProxy.CURRENCY_TAB_INDEX,_loc9_,_loc10_);
                  _loc6_ = _loc8_;
                  break;
               case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                  if(_loc11_ == null)
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_virtualCurrency");
                  }
                  else
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc11_);
                  }
                  _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.virtualcurrency.categoryentry");
                  _loc7_ = new CityTreasuryInternalPackVo();
                  _loc7_.categoryId = _loc10_;
                  _loc7_.packs = this.getInternalPacks(_loc2_,CityTreasuryTabProxy.CURRENCY_TAB_INDEX,_loc9_,_loc10_);
                  _loc6_ = _loc7_;
                  break;
               case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                  if(_loc11_ == null)
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_productionPoints");
                  }
                  else
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc11_);
                  }
                  _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.productionpoints.categoryentry");
                  _loc7_ = new CityTreasuryInternalPackVo();
                  _loc7_.categoryId = _loc10_;
                  _loc7_.packs = this.getInternalPacks(_loc2_,CityTreasuryTabProxy.CURRENCY_TAB_INDEX,_loc9_,_loc10_);
                  _loc6_ = _loc7_;
                  break;
               case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                  if(_loc11_ == null)
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_educationPoints");
                  }
                  else
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc11_);
                  }
                  _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.educationpoints.categoryentry");
                  _loc5_.disabled = !this.featureProxy.isResourceUnlocked(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                  _loc7_ = new CityTreasuryInternalPackVo();
                  _loc7_.categoryId = _loc10_;
                  _loc7_.packs = this.getInternalPacks(_loc2_,CityTreasuryTabProxy.CURRENCY_TAB_INDEX,_loc9_,_loc10_);
                  _loc6_ = _loc7_;
            }
            _loc4_.categoryMenu = _loc5_;
            _loc4_.contentVo = _loc6_;
            _loc3_.push(_loc4_);
            _loc9_++;
         }
         param1.categories = _loc3_;
         param1.flavourText = LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.layer.flavor");
         return param1;
      }
      
      private function createGoodContentVo(param1:CityTreasuryTabVo) : CityTreasuryTabVo
      {
         var _loc4_:CityTreasuryCategoryVo = null;
         var _loc5_:CategoryMenuListVo = null;
         var _loc6_:CityTreasuryInternalPackVo = null;
         var _loc8_:String = null;
         var _loc9_:* = null;
         var _loc2_:Vector.<ConfigPaymentPackDTO> = this.gatherPacks(ServerTagConstants.CLIENT_ITEM_REBUY_PACK);
         var _loc3_:Vector.<CityTreasuryCategoryVo> = new Vector.<CityTreasuryCategoryVo>();
         var _loc7_:int = 0;
         for each(_loc8_ in goodCategories)
         {
            _loc4_ = new CityTreasuryCategoryVo();
            _loc4_.currentRCStock = this.resourceProxy.realCurrency;
            _loc5_ = new CategoryMenuListVo();
            _loc6_ = new CityTreasuryInternalPackVo();
            _loc6_.categoryId = _loc8_;
            _loc6_.packs = this.getInternalPacks(_loc2_,CityTreasuryTabProxy.GOODS_TAB_INDEX,_loc7_,_loc8_);
            _loc9_ = this.getIcon(CityTreasuryTabProxy.GOODS_TAB_INDEX,_loc7_);
            _loc7_++;
            if(_loc9_)
            {
               _loc9_ += "_small";
            }
            switch(_loc8_)
            {
               case ServerTagConstants.GOOD_KEY:
                  if(_loc9_ == null)
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_key");
                  }
                  else
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                  }
                  _loc5_.categoryName = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname.60021");
                  _loc5_.disabled = !this.featureProxy.residentChangeUnlocked;
                  break;
               case ServerTagConstants.GOOD_DEXTRO:
                  if(_loc9_ == null)
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_dextro");
                  }
                  else
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                  }
                  _loc5_.categoryName = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname.60027");
                  break;
               case ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN:
                  if(_loc9_ == null)
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_wheel_token");
                  }
                  else
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                  }
                  _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.goodrebuy","rcl.booklayer.goodrebuy.category.wheelToken");
                  break;
               case ServerTagConstants.CLIENT_GOOD_GRANITE:
                  if(_loc9_ == null)
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_granite");
                  }
                  else
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                  }
                  _loc5_.categoryName = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname.60006");
            }
            _loc4_.categoryMenu = _loc5_;
            _loc4_.contentVo = _loc6_;
            _loc3_.push(_loc4_);
         }
         param1.categories = _loc3_;
         param1.flavourText = LocaUtils.getString("rcl.booklayer.goodrebuy","rcl.booklayer.goodrebuy.layer.flavor");
         return param1;
      }
      
      private function createPackContentVo(param1:CityTreasuryTabVo) : CityTreasuryTabVo
      {
         var _loc3_:CityTreasuryCategoryVo = null;
         var _loc4_:CategoryMenuListVo = null;
         var _loc5_:CityTreasuryExternalPackVo = null;
         var _loc8_:String = null;
         var _loc9_:* = null;
         var _loc2_:Vector.<CityTreasuryCategoryVo> = new Vector.<CityTreasuryCategoryVo>();
         var _loc7_:int = 0;
         for each(_loc8_ in starterPackCategories)
         {
            _loc3_ = new CityTreasuryCategoryVo();
            _loc3_.currentRCStock = this.resourceProxy.realCurrency;
            _loc4_ = new CategoryMenuListVo();
            _loc5_ = new CityTreasuryExternalPackVo();
            _loc9_ = this.getIcon(CityTreasuryTabProxy.PACKS_TAB_INDEX,_loc7_);
            _loc7_++;
            if(this.gatherPacks(_loc8_).length > 0)
            {
               _loc5_.pack = this.gatherPacks(_loc8_)[0];
               var _loc6_:ExternalPaymentPackInfoVo = this._starterPackPaymentHelper.paymentDictionary[_loc5_.pack.id];
               if(_loc6_)
               {
                  _loc5_.price = null.price;
                  _loc5_.currency = null.currencyAsSymbol;
               }
               _loc5_.icon = _loc9_;
               var _loc10_:PlayerPaymentUpsellDTO = this.playerProxy.player.playerPaymentPackInfo.upsellPaymentPack;
               if((Boolean(_loc10_)) && this.upsellingActive(null))
               {
                  if(null.id == _loc5_.pack.id)
                  {
                     var _loc11_:String = "";
                     for each(var _loc12_ in _loc5_.pack.upsellPackages)
                     {
                        if(_loc12_.category == null.type)
                        {
                           _loc11_ = null.key;
                           break;
                        }
                     }
                     if(Boolean(this._upsellPackPaymentHelper.paymentDictionary) && Boolean(this._upsellPackPaymentHelper.paymentDictionary[null]))
                     {
                        _loc5_.discountedPrice = this._upsellPackPaymentHelper.paymentDictionary[null].price;
                     }
                  }
               }
            }
            if(_loc9_)
            {
               _loc9_ += "_small";
            }
            switch(_loc8_)
            {
               case ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER:
                  if(_loc9_ == null)
                  {
                     _loc4_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_starterPack");
                  }
                  else
                  {
                     _loc4_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                  }
                  _loc4_.categoryName = LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.starter.categoryentry");
                  break;
               case ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT:
                  if(_loc9_ == null)
                  {
                     _loc4_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_studentPack");
                  }
                  else
                  {
                     _loc4_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                  }
                  _loc4_.categoryName = LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.student.categoryentry");
                  break;
               case ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION:
                  if(_loc9_ == null)
                  {
                     _loc4_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_productionPack");
                  }
                  else
                  {
                     _loc4_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                  }
                  _loc4_.categoryName = LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.production.categoryentry");
                  break;
               case ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID:
                  if(_loc9_ == null)
                  {
                     _loc4_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_emergencyPack");
                  }
                  else
                  {
                     _loc4_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                  }
                  _loc4_.categoryName = LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.emergency.categoryentry");
                  break;
               case ServerTagConstants.CLIENT_PAYMENT_PACK_GAMBLING:
                  if(_loc9_ == null)
                  {
                     _loc4_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_gamblingPack");
                  }
                  else
                  {
                     _loc4_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc9_);
                  }
                  _loc4_.categoryName = LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.gambling.categoryentry");
            }
            _loc3_.categoryMenu = _loc4_;
            _loc3_.contentVo = _loc5_;
            _loc2_.push(_loc3_);
         }
         param1.categories = _loc2_;
         param1.flavourText = LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.layer.flavor");
         return param1;
      }
      
      private function createSpecialContentVo(param1:CityTreasuryTabVo, param2:String = "") : CityTreasuryTabVo
      {
         var _loc4_:CityTreasuryCategoryVo = null;
         var _loc5_:CategoryMenuListVo = null;
         var _loc6_:ICityTreasuryContentVo = null;
         var _loc7_:* = null;
         var _loc9_:String = null;
         var _loc10_:ExternalPaymentPackInfoVo = null;
         var _loc3_:Vector.<CityTreasuryCategoryVo> = new Vector.<CityTreasuryCategoryVo>();
         var _loc8_:uint = 0;
         for each(_loc9_ in specialCategories)
         {
            _loc4_ = new CityTreasuryCategoryVo();
            _loc4_.currentRCStock = this.resourceProxy.realCurrency;
            _loc5_ = new CategoryMenuListVo();
            _loc7_ = this.getIcon(CityTreasuryTabProxy.SPECIALS_TAB_INDEX,_loc8_);
            _loc8_++;
            if(Boolean(_loc7_) && _loc9_ != ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR)
            {
               _loc7_ += "_small";
            }
            switch(_loc9_)
            {
               case SPECIAL_CAT_CASH_FOR_ACTION:
                  if(_loc7_ == null)
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_cashForAction");
                  }
                  else
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc7_);
                  }
                  _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.cfa.categoryentry");
                  _loc6_ = new CityTreasuryCashForActionVo();
                  break;
               case SPECIAL_CAT_BONUS_CODE:
                  if(_loc7_ == null)
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_bonusCode");
                  }
                  else
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc7_);
                  }
                  _loc5_.categoryName = LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.bonuscode.categoryentry");
                  _loc6_ = new CityTreasuryBonusCodeVo();
                  (_loc6_ as CityTreasuryBonusCodeVo).errorLabel = param2;
                  break;
               case ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR:
                  if(_loc7_ == null)
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_goodRebuyPopup","cat_icon_rentCollector");
                  }
                  else
                  {
                     _loc5_.categoryIcon = new BriskDynaVo("gui_popups_paperPopup",_loc7_ + "_small");
                  }
                  _loc5_.categoryName = LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name");
                  _loc6_ = new CityTreasuryRentCollectorVo();
                  if(this.allExternalRentCollectorPacks.length)
                  {
                     CityTreasuryRentCollectorVo(_loc6_).pack = this.allExternalRentCollectorPacks[0];
                     _loc10_ = this._rentCollectorPaymentHelper.paymentDictionary[CityTreasuryRentCollectorVo(_loc6_).pack.id];
                     if(_loc10_)
                     {
                        CityTreasuryRentCollectorVo(_loc6_).price = _loc10_.price;
                        CityTreasuryRentCollectorVo(_loc6_).currency = _loc10_.currencyAsSymbol;
                     }
                     CityTreasuryRentCollectorVo(_loc6_).icon = _loc7_;
                  }
            }
            _loc4_.categoryMenu = _loc5_;
            _loc4_.contentVo = _loc6_;
            _loc3_.push(_loc4_);
         }
         param1.categories = _loc3_;
         param1.flavourText = LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.layer.flavor");
         return param1;
      }
      
      private function gatherPacks(param1:String) : Vector.<ConfigPaymentPackDTO>
      {
         var _loc3_:ConfigPaymentPackDTO = null;
         var _loc4_:ConfigTagDTO = null;
         var _loc2_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         for each(_loc3_ in this.configProxy.config.paymentPacks)
         {
            for each(_loc4_ in _loc3_.configTags)
            {
               if(_loc4_.tagName == param1)
               {
                  _loc2_.push(_loc3_);
               }
            }
         }
         return _loc2_;
      }
      
      private function gatherPacksByTabAndCategory(param1:String, param2:String) : Vector.<ConfigPaymentPackDTO>
      {
         var _loc6_:ConfigPaymentPackDTO = null;
         var _loc7_:ConfigTagDTO = null;
         var _loc8_:ConfigTagDTO = null;
         var _loc3_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         var _loc4_:* = goodCategories.indexOf(param2) != -1;
         var _loc5_:* = resourceCategories.indexOf(param2) != -1;
         for each(_loc6_ in this.configProxy.config.paymentPacks)
         {
            for each(_loc7_ in _loc6_.configTags)
            {
               if(_loc7_.tagName == param1)
               {
                  if(_loc4_)
                  {
                     if(_loc6_.goods.length > 0)
                     {
                        if(Boolean(_loc6_.goods[0]) && Boolean(_loc6_.goods[0].goodConfig))
                        {
                           for each(_loc8_ in _loc6_.goods[0].goodConfig.tagConfigs)
                           {
                              if(_loc8_.tagName == param2)
                              {
                                 _loc3_.push(_loc6_);
                                 break;
                              }
                           }
                        }
                     }
                     break;
                  }
                  if(_loc5_)
                  {
                     if(param2 == ServerResConst.RESOURCE_REALCURRENCY)
                     {
                        if(_loc6_.type == ServerPaymentPackConst.CURRENCY)
                        {
                           _loc3_.push(_loc6_);
                        }
                        break;
                     }
                     if(_loc6_.resources.length > 0)
                     {
                        if(Boolean(_loc6_.resources[0]) && Boolean(_loc6_.resources[0].resourceConfig))
                        {
                           if(_loc6_.resources[0].resourceConfig.type == param2)
                           {
                              _loc3_.push(_loc6_);
                           }
                        }
                     }
                  }
                  break;
               }
            }
         }
         return _loc3_;
      }
      
      private function getPacksByCategory(param1:Vector.<ConfigPaymentPackDTO>, param2:String) : Vector.<ConfigPaymentPackDTO>
      {
         var _loc4_:ConfigPaymentPackDTO = null;
         var _loc5_:ConfigTagDTO = null;
         var _loc3_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         for each(_loc4_ in param1)
         {
            if(param2 == ServerResConst.RESOURCE_REALCURRENCY)
            {
               if(_loc4_.type == ServerPaymentPackConst.CURRENCY)
               {
                  _loc3_.push(_loc4_);
               }
            }
            else if(goodCategories.indexOf(param2) != -1)
            {
               if(_loc4_.goods.length > 0)
               {
                  if(Boolean(_loc4_.goods[0]) && Boolean(_loc4_.goods[0].goodConfig))
                  {
                     for each(_loc5_ in _loc4_.goods[0].goodConfig.tagConfigs)
                     {
                        if(_loc5_.tagName == param2)
                        {
                           _loc3_.push(_loc4_);
                           break;
                        }
                     }
                  }
               }
            }
            else if(resourceCategories.indexOf(param2) != -1)
            {
               if(_loc4_.resources.length > 0)
               {
                  if(Boolean(_loc4_.resources[0]) && Boolean(_loc4_.resources[0].resourceConfig))
                  {
                     if(_loc4_.resources[0].resourceConfig.type == param2)
                     {
                        _loc3_.push(_loc4_);
                     }
                  }
               }
            }
         }
         _loc3_.sort(this.sortOnGfxId);
         return _loc3_;
      }
      
      private function sortOnGfxId(param1:ConfigPaymentPackDTO, param2:ConfigPaymentPackDTO) : int
      {
         if(param1.gfxId > param2.gfxId)
         {
            return 1;
         }
         if(param1.gfxId < param2.gfxId)
         {
            return -1;
         }
         return 0;
      }
      
      private function getInternalPacks(param1:Vector.<ConfigPaymentPackDTO>, param2:int, param3:int, param4:String) : Vector.<CityTreasuryInternalPackItemVo>
      {
         var _loc9_:ConfigPaymentPackDTO = null;
         var _loc10_:CityTreasuryInternalPackItemVo = null;
         var _loc5_:Vector.<CityTreasuryInternalPackItemVo> = new Vector.<CityTreasuryInternalPackItemVo>();
         var _loc6_:PlayerPaymentUpsellDTO = this.playerProxy.player.playerPaymentPackInfo.upsellPaymentPack;
         var _loc7_:Vector.<ConfigPaymentPackDTO> = this.getPacksByCategory(param1,param4);
         var _loc8_:int = 0;
         for each(_loc9_ in _loc7_)
         {
            _loc10_ = new CityTreasuryInternalPackItemVo(_loc9_);
            _loc10_.icon = this.getIcon(param2,param3,_loc8_);
            if(_loc6_ && _loc6_.id == _loc9_.id && this.upsellingActive(_loc6_))
            {
               _loc10_.hasDiscount = true;
            }
            _loc5_.push(_loc10_);
            _loc8_++;
         }
         return _loc5_;
      }
      
      private function getRealCurrencyPacks(param1:Vector.<ConfigPaymentPackDTO>, param2:int, param3:int, param4:String) : Vector.<CityTreasuryRealCurrencyPackItemVo>
      {
         var _loc9_:ConfigPaymentPackDTO = null;
         var _loc10_:CityTreasuryRealCurrencyPackItemVo = null;
         var _loc11_:ExternalPaymentPackInfoVo = null;
         var _loc12_:String = null;
         var _loc13_:ConfigPaymentPackUpsellingDTO = null;
         var _loc5_:Vector.<CityTreasuryRealCurrencyPackItemVo> = new Vector.<CityTreasuryRealCurrencyPackItemVo>();
         var _loc6_:PlayerPaymentUpsellDTO = this.playerProxy.player.playerPaymentPackInfo.upsellPaymentPack;
         var _loc7_:Vector.<ConfigPaymentPackDTO> = this.getPacksByCategory(param1,param4);
         var _loc8_:int = 0;
         for each(_loc9_ in _loc7_)
         {
            _loc10_ = new CityTreasuryRealCurrencyPackItemVo(_loc9_);
            _loc10_.icon = this.getIcon(param2,param3,_loc8_);
            if(Boolean(this._realCurrencyPackPaymentHelper.paymentDictionary) && Boolean(this._realCurrencyPackPaymentHelper.paymentDictionary[_loc9_.id]))
            {
               _loc11_ = this._realCurrencyPackPaymentHelper.paymentDictionary[_loc9_.id];
               _loc10_.priceExternal = _loc11_.price;
               _loc10_.currency = _loc11_.currencyAsSymbol;
               _loc10_.packContentAmount = _loc11_.amount;
            }
            if(this._upsellEnabled && _loc6_ && _loc6_.id == _loc9_.id && this.upsellingActive(_loc6_))
            {
               _loc12_ = "";
               for each(_loc13_ in _loc9_.upsellPackages)
               {
                  if(_loc13_.category == _loc6_.type)
                  {
                     _loc12_ = _loc13_.key;
                     break;
                  }
               }
               if(Boolean(this._upsellPackPaymentHelper.paymentDictionary) && Boolean(this._upsellPackPaymentHelper.paymentDictionary[_loc12_]))
               {
                  _loc10_.discountedPriceExternal = this._upsellPackPaymentHelper.paymentDictionary[_loc12_].price;
               }
            }
            _loc5_.push(_loc10_);
            _loc8_++;
         }
         return _loc5_;
      }
      
      private function get allStarterPacks() : Vector.<ConfigPaymentPackDTO>
      {
         var _loc2_:ConfigPaymentPackDTO = null;
         var _loc3_:ConfigTagDTO = null;
         var _loc4_:String = null;
         var _loc1_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         for each(_loc2_ in this.configProxy.config.paymentPacks)
         {
            for each(_loc3_ in _loc2_.configTags)
            {
               for each(_loc4_ in starterPackCategories)
               {
                  if(_loc3_.tagName == _loc4_)
                  {
                     _loc1_.push(_loc2_);
                     break;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function get allRealCurrencyPacks() : Vector.<ConfigPaymentPackDTO>
      {
         var _loc2_:ConfigPaymentPackDTO = null;
         var _loc3_:ConfigTagDTO = null;
         var _loc1_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         for each(_loc2_ in this.configProxy.config.paymentPacks)
         {
            for each(_loc3_ in _loc2_.configTags)
            {
               if(_loc3_.tagName == ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK)
               {
                  if(_loc2_.type == ServerPaymentPackConst.CURRENCY)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function get allExternalRentCollectorPacks() : Vector.<ConfigPaymentPackDTO>
      {
         var _loc2_:ConfigPaymentPackDTO = null;
         var _loc3_:ConfigTagDTO = null;
         var _loc1_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         for each(_loc2_ in this.configProxy.config.paymentPacks)
         {
            if(_loc2_.type == ServerPaymentPackConst.EXTERNAL)
            {
               for each(_loc3_ in _loc2_.configTags)
               {
                  if(_loc3_.tagName == ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function get realCurrencyPackInfoDictionary() : Dictionary
      {
         return this._realCurrencyPackPaymentHelper.paymentDictionary;
      }
      
      public function get upsellPackInfoDictionary() : Dictionary
      {
         return this._upsellPackPaymentHelper.paymentDictionary;
      }
      
      public function get rentCollectorPackInfoDictionary() : Dictionary
      {
         return this._rentCollectorPaymentHelper.paymentDictionary;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(!this._cP)
         {
            this._cP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._cP;
      }
      
      private function get resourceProxy() : PlayerResourceProxy
      {
         if(!this._pRP)
         {
            this._pRP = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         }
         return this._pRP;
      }
      
      private function get featureProxy() : FeatureProxy
      {
         if(!this._fP)
         {
            this._fP = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         }
         return this._fP;
      }
      
      private function get playerProxy() : PlayerProxy
      {
         if(!this._pP)
         {
            this._pP = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         }
         return this._pP;
      }
      
      private function get timerProxy() : TimerProxy
      {
         if(!this._tP)
         {
            this._tP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         }
         return this._tP;
      }
      
      public function isUpsellRunning() : Boolean
      {
         var _loc1_:PlayerPaymentUpsellDTO = this.playerProxy.player.playerPaymentPackInfo.upsellPaymentPack;
         if(this.upsellingActive(_loc1_))
         {
            return true;
         }
         this.cleanTreasuryIcons();
         return false;
      }
      
      private function upsellingActive(param1:PlayerPaymentUpsellDTO) : Boolean
      {
         return !(param1 == null || this.timerProxy.currentTimeStamp < param1.startTime || this.timerProxy.currentTimeStamp > param1.startTime + param1.duration);
      }
      
      private function collectTreasuryIconOverrides() : void
      {
         this._treasuryIcons = new Vector.<TreasuryIconOverrideVo>();
         this.collectTreasuryIconsFromUpsell();
         this.collectTreasuryIconsFromBonusDay();
         this.collectTreasuryIconsFromRentCollectorSale();
      }
      
      private function collectTreasuryIconsFromUpsell() : void
      {
         if(!this._upsellEnabled)
         {
            return;
         }
         var _loc1_:PlayerPaymentUpsellDTO = this.playerProxy.player.playerPaymentPackInfo.upsellPaymentPack;
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:ConfigPaymentPackDTO = this.configProxy.config.paymentPacks[_loc1_.id];
         if(this.timerProxy.currentTimeStamp < _loc1_.startTime || this.timerProxy.currentTimeStamp > _loc1_.startTime + _loc1_.duration)
         {
            return;
         }
         var _loc3_:int = getTabIndexOfPack(_loc2_);
         var _loc4_:int = getCategoryIndexOfPack(_loc2_);
         var _loc5_:String = getCategoryNameOfPack(_loc2_);
         var _loc6_:Vector.<ConfigPaymentPackDTO> = this.gatherPacksByTabAndCategory(getTypeNameOfPack(_loc2_),_loc5_);
         if(_loc6_ != null)
         {
            var _loc7_:int = int(_loc6_.indexOf(_loc2_));
         }
         this._treasuryIcons.push(new TreasuryIconOverrideVo(_loc3_,_loc4_,-1,UPSELL_ICON_CONSTANT,UPSELL_ICON_PRIORITY));
      }
      
      private function collectTreasuryIconsFromBonusDay() : void
      {
         var _loc4_:ConfigEventDTO = null;
         var _loc1_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc3_:Boolean = false;
         for each(_loc4_ in _loc2_.listOfRunningGlobalEvents)
         {
            if(_loc4_.eventType == ServerEventTypeConst.BONUSDAY)
            {
               _loc3_ = true;
               break;
            }
         }
         if(!_loc3_ || _loc1_ == null || _loc1_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
         {
            return;
         }
         var _loc5_:int = CityTreasuryTabProxy.CURRENCY_TAB_INDEX;
         var _loc6_:int = int(resourceCategories.indexOf(ServerResConst.RESOURCE_REALCURRENCY));
         var _loc7_:int = 0;
         while(_loc7_ < this.allRealCurrencyPacks.length)
         {
            this._treasuryIcons.push(new TreasuryIconOverrideVo(_loc5_,_loc6_,_loc7_,BONUSDAY_ICON_CONSTANT,BONUSDAYUPSELL_ICON_PRIORITY));
            _loc7_++;
         }
         _loc5_ = CityTreasuryTabProxy.PACKS_TAB_INDEX;
         _loc7_ = -1;
         _loc6_ = 0;
         while(_loc6_ < starterPackCategories.length)
         {
            this._treasuryIcons.push(new TreasuryIconOverrideVo(_loc5_,_loc6_,_loc7_,BONUSDAY_ICON_CONSTANT,BONUSDAYUPSELL_ICON_PRIORITY));
            _loc6_++;
         }
         _loc5_ = CityTreasuryTabProxy.SPECIALS_TAB_INDEX;
         _loc6_ = int(specialCategories.indexOf(ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR));
         _loc7_ = 0;
         while(_loc7_ < this.allExternalRentCollectorPacks.length)
         {
            this._treasuryIcons.push(new TreasuryIconOverrideVo(_loc5_,_loc6_,_loc7_,BONUSDAY_ICON_CONSTANT,BONUSDAYUPSELL_ICON_PRIORITY));
            _loc7_++;
         }
      }
      
      private function collectTreasuryIconsFromRentCollectorSale() : void
      {
         var _loc3_:ConfigEventDTO = null;
         var _loc1_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc2_:Boolean = false;
         for each(_loc3_ in _loc1_.listOfRunningGlobalEvents)
         {
            if(_loc3_.eventType == ServerEventTypeConst.RENTCOLLECTOR)
            {
               _loc2_ = true;
               break;
            }
         }
         if(!_loc2_)
         {
            return;
         }
         this._treasuryIcons.push(new TreasuryIconOverrideVo(CityTreasuryTabProxy.SPECIALS_TAB_INDEX,specialCategories.indexOf(ServerTagConstants.CLIENT_PAYMENT_PACK_RENT_COLLECTOR),0,RENTCOLLECTOR_SALE_ICON_CONSTANT,RENTCOLLECTOR_SALE_ICON_PRIORITY));
      }
      
      public function getIndexOfPaymentPack(param1:ConfigPaymentPackDTO) : int
      {
         var _loc2_:String = getCategoryNameOfPack(param1);
         var _loc3_:Vector.<ConfigPaymentPackDTO> = this.gatherPacksByTabAndCategory(getTypeNameOfPack(param1),_loc2_);
         if(_loc3_ != null && _loc3_.length > 0)
         {
            return _loc3_.indexOf(param1);
         }
         return -1;
      }
      
      public function getIcon(param1:int, param2:int = -1, param3:int = -1) : String
      {
         var _loc5_:TreasuryIconOverrideVo = null;
         var _loc6_:Boolean = false;
         if(this._treasuryIcons == null)
         {
            this.collectTreasuryIconOverrides();
         }
         var _loc4_:TreasuryIconOverrideVo = null;
         for each(_loc5_ in this._treasuryIcons)
         {
            _loc6_ = false;
            if(_loc5_.tab == param1)
            {
               if(param2 != -1)
               {
                  if(_loc5_.cat == param2)
                  {
                     if(param3 != -1)
                     {
                        if(_loc5_.index == param3)
                        {
                           _loc6_ = true;
                        }
                     }
                     else
                     {
                        _loc6_ = true;
                     }
                  }
               }
               else
               {
                  _loc6_ = true;
               }
               if(_loc6_)
               {
                  if(_loc4_ == null || _loc5_.prio > _loc4_.prio)
                  {
                     _loc4_ = _loc5_;
                  }
               }
            }
         }
         if(_loc4_)
         {
            return _loc4_.icon;
         }
         return null;
      }
      
      public function cleanTreasuryIcons() : void
      {
         this._treasuryIcons = null;
      }
      
      public function get upsellEnabled() : Boolean
      {
         return this._upsellEnabled;
      }
      
      public function set upsellEnabled(param1:Boolean) : void
      {
         if(this._upsellEnabled != param1)
         {
            this.cleanTreasuryIcons();
         }
         this._upsellEnabled = param1;
      }
   }
}

