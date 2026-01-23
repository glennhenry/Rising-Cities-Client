package net.bigpoint.cityrama.model.rewards
{
   import flash.utils.Dictionary;
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.level.vo.LevelUpVo;
   import net.bigpoint.cityrama.model.rewards.vo.RewardDataVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigRewardDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class RewardLayerProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "RewardLayerProxy";
      
      private var _configProxy:GameConfigProxy;
      
      private var _paymentPackDetails:Dictionary;
      
      public function RewardLayerProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._configProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         this._paymentPackDetails = new Dictionary();
      }
      
      public static function getRewardVoForLevelUp(param1:LevelUpVo) : RewardDataVo
      {
         var _loc2_:RewardDataVo = new RewardDataVo();
         _loc2_.styleName = "rewardLevel";
         _loc2_.rewardType = RewardDataVo.LEVELUP;
         _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.levelUp.button");
         _loc2_.title = LocaUtils.getString("rcl.booklayer.levelUp","rcl.booklayer.levelUp.title");
         _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.levelUp","rcl.booklayer.levelUp.congratText",[param1.level]);
         _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.level.button");
         _loc2_.receivedItems = param1.rewards;
         _loc2_.drops = param1.rewardDrops;
         return _loc2_;
      }
      
      public static function getRewardVoByOutputDTO(param1:ConfigOutputDTO, param2:String = "smallskin", param3:Boolean = false, param4:ConfigCityWheelBuffDTO = null) : RewardItemComponentVo
      {
         var _loc6_:BriskDynaVo = null;
         var _loc5_:Object = new Object();
         _loc5_.size = param2;
         _loc5_.useNew = param3;
         if(param1 is ConfigRewardDTO)
         {
            _loc5_.factor = (param1 as ConfigRewardDTO).doubled ? 2 : 1;
         }
         var _loc7_:uint = 1;
         if(param4)
         {
            _loc5_.buffGFX = param4.gfxId;
            _loc7_ = param4.multiplier;
         }
         _loc5_.price = param1.outputAmount / _loc7_;
         if(param1.resourceConfig)
         {
            _loc5_.type = RewardItemComponentVo.TYPE_RESOURCE;
            _loc5_.cid = param1.resourceConfig.id;
            switch(param1.resourceConfig.type)
            {
               case ServerResConst.RESOURCE_REALCURRENCY:
                  _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_RC;
                  switch(param2)
                  {
                     case RewardItemComponentVo.SIZE_SMALL:
                        _loc5_.itemIcon = "rc_icon_medium";
                        break;
                     case RewardItemComponentVo.SIZE_BIG:
                        _loc5_.itemIcon = "ressource_rc_big";
                  }
                  break;
               case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                  _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_VC;
                  switch(param2)
                  {
                     case RewardItemComponentVo.SIZE_SMALL:
                        _loc5_.itemIcon = "vc_icon_medium";
                        break;
                     case RewardItemComponentVo.SIZE_BIG:
                        _loc5_.itemIcon = "ressource_cc_big";
                  }
                  break;
               case ServerResConst.RESOURCE_EXPERIENCE:
                  _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_XP;
                  switch(param2)
                  {
                     case RewardItemComponentVo.SIZE_SMALL:
                        _loc5_.itemIcon = "xp_icon_medium";
                        break;
                     case RewardItemComponentVo.SIZE_BIG:
                        _loc5_.itemIcon = "ressource_xp_big";
                  }
                  break;
               case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                  _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_PP;
                  switch(param2)
                  {
                     case RewardItemComponentVo.SIZE_SMALL:
                        _loc5_.itemIcon = "pp_icon_medium";
                        break;
                     case RewardItemComponentVo.SIZE_BIG:
                        _loc5_.itemIcon = "ressource_pp_big";
                  }
                  break;
               case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                  _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_EP;
                  _loc5_.itemIcon = "ep_icon_medium";
                  switch(param2)
                  {
                     case RewardItemComponentVo.SIZE_SMALL:
                        _loc5_.itemIcon = "ep_icon_medium";
                        break;
                     case RewardItemComponentVo.SIZE_BIG:
                        _loc5_.itemIcon = "ressource_ep_big";
                  }
            }
            switch(param2)
            {
               case RewardItemComponentVo.SIZE_SMALL:
                  _loc5_.itemIconLib = "gui_resources_icons";
                  break;
               case RewardItemComponentVo.SIZE_BIG:
                  _loc5_.itemIconLib = "gui_popups_largeGoodIcons";
            }
         }
         else if(param1.goodConfig)
         {
            _loc5_.cid = param1.goodConfig.id;
            _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
            if(param1.goodConfig.isEventGood)
            {
               _loc5_.type = RewardItemComponentVo.TYPE_EVENT_GOOD;
            }
            else if(param1.goodConfig.isSpecialGood)
            {
               _loc5_.type = RewardItemComponentVo.TYPE_SPECIAL_GOOD;
            }
            else
            {
               _loc5_.type = RewardItemComponentVo.TYPE_NORMAL_GOOD;
            }
            switch(param2)
            {
               case RewardItemComponentVo.SIZE_SMALL:
                  _loc5_.itemIconLib = "gui_resources_icons";
                  _loc5_.itemIcon = "ressource_" + param1.goodConfig.gfxId + "_medium";
                  break;
               case RewardItemComponentVo.SIZE_BIG:
                  _loc5_.itemIconLib = "gui_popups_largeGoodIcons";
                  _loc5_.itemIcon = "large_" + param1.goodConfig.gfxId;
            }
         }
         else if(param1.playfieldItemConfig)
         {
            _loc5_.cid = param1.playfieldItemConfig.id;
            _loc5_.type = RewardItemComponentVo.TYPE_NORMAL_PERMISSION;
            _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_CONSTRUCTED;
            if(param1.playfieldItemConfig.specialHighlighting)
            {
               _loc5_.type = RewardItemComponentVo.TYPE_SPECIAL_PERMISSION;
            }
            _loc5_.itemIconLib = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(param1.playfieldItemConfig);
            switch(param2)
            {
               case RewardItemComponentVo.SIZE_SMALL:
                  _loc5_.itemIcon = "FieldItem_" + param1.playfieldItemConfig.gfxId + "_small";
                  break;
               case RewardItemComponentVo.SIZE_BIG:
                  _loc5_.itemIcon = "FieldItem_" + param1.playfieldItemConfig.gfxId + "_level1_big";
            }
         }
         else if(param1.improvementConfig)
         {
            _loc5_.cid = param1.improvementConfig.id;
            _loc5_.type = RewardItemComponentVo.TYPE_IMPROVEMENT;
            _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
            switch(param2)
            {
               case RewardItemComponentVo.SIZE_SMALL:
                  _loc6_ = ImprovementLayerProxy.improvementGfx(param1.improvementConfig);
                  break;
               case RewardItemComponentVo.SIZE_BIG:
                  _loc6_ = ImprovementLayerProxy.improvementGfx(param1.improvementConfig,ImprovementLayerProxy.SIZE_BIG);
            }
            _loc5_.itemIconLib = _loc6_.dynaLibName;
            _loc5_.itemIcon = _loc6_.dynaBmpName;
            _loc5_.quality = param1.improvementConfig.quality;
         }
         else if(param1.assistConfig)
         {
            if(param1.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
            {
               _loc5_.cid = param1.assistConfig.id;
               _loc5_.type = RewardItemComponentVo.TYPE_ASSIST;
               _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
               switch(param2)
               {
                  case RewardItemComponentVo.SIZE_SMALL:
                     _loc6_ = new BriskDynaVo("gui_popups_rentCollector","rentCollector_small_" + param1.assistConfig.gfxId);
                     break;
                  case RewardItemComponentVo.SIZE_BIG:
                     _loc6_ = new BriskDynaVo("gui_popups_rentCollector","rentCollector_big_" + param1.assistConfig.gfxId);
               }
               _loc5_.itemIconLib = _loc6_.dynaLibName;
               _loc5_.itemIcon = _loc6_.dynaBmpName;
            }
            else
            {
               _loc5_ = null;
            }
         }
         if(_loc5_)
         {
            return new RewardItemComponentVo(_loc5_);
         }
         return null;
      }
      
      public static function generateDropInfo(param1:ConfigOutputDTO) : DropInfoVo
      {
         if(param1.resourceConfig != null)
         {
            return new DropInfoVo(param1.resourceConfig.type);
         }
         if(param1.goodConfig != null)
         {
            return new DropInfoVo(ServerOutputConstants.GOOD,param1.goodConfig.gfxId);
         }
         if(param1.improvementConfig != null)
         {
            return new DropInfoVo(ServerImprovementConstants.IMPROVEMENT,0);
         }
         if(param1.assistConfig != null)
         {
            if(param1.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
            {
               return new DropInfoVo(param1.assistConfig.type);
            }
         }
         return null;
      }
      
      public static function sortRewardList(param1:ArrayCollection) : void
      {
         var _loc2_:SortField = new SortField();
         _loc2_.name = "sortint";
         _loc2_.numeric = true;
         var _loc3_:Sort = new Sort();
         _loc3_.fields = [_loc2_];
         param1.sort = _loc3_;
         param1.refresh();
      }
      
      public function getRewardForPaymentPack(param1:Number, param2:String) : RewardDataVo
      {
         var _loc3_:ConfigPaymentPackDTO = this._configProxy.config.paymentPacks[param1];
         if(_loc3_)
         {
            var _loc4_:RewardDataVo = this.fillUpDetails(_loc3_);
            if(_loc4_)
            {
               var _loc5_:ArrayCollection = new ArrayCollection();
               var _loc8_:Vector.<DropInfoVo> = new Vector.<DropInfoVo>();
               for each(var _loc6_ in _loc3_.resources)
               {
                  var _loc7_:RewardItemComponentVo = getRewardVoByOutputDTO(null,param2);
                  var _loc9_:DropInfoVo = null;
               }
               for each(_loc6_ in _loc3_.permissions)
               {
                  _loc7_ = getRewardVoByOutputDTO(null,param2);
                  _loc9_ = null;
               }
               for each(_loc6_ in _loc3_.goods)
               {
                  _loc7_ = getRewardVoByOutputDTO(null,param2);
                  _loc9_ = null;
               }
               for each(_loc6_ in _loc3_.improvements)
               {
                  _loc7_ = getRewardVoByOutputDTO(null,param2);
                  _loc9_ = null;
               }
               for each(_loc6_ in _loc3_.assists)
               {
                  if(Boolean(_loc6_.assistConfig) && null.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
                  {
                     _loc7_ = getRewardVoByOutputDTO(null,param2);
                     _loc9_ = null;
                  }
               }
               sortRewardList(null);
               null.receivedItems = null;
               null.drops = null;
               return null;
            }
         }
         return null;
      }
      
      private function fillUpDetails(param1:ConfigPaymentPackDTO) : RewardDataVo
      {
         var _loc2_:RewardDataVo = null;
         if(this._paymentPackDetails[param1.id])
         {
            return this._paymentPackDetails[param1.id];
         }
         _loc2_ = new RewardDataVo();
         switch(param1.type)
         {
            case ServerPaymentPackConst.STARTERPACK:
               _loc2_.styleName = "rewardStarter";
               _loc2_.rewardType = RewardDataVo.PAYMENTPACK;
               _loc2_.title = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.starterPack.title");
               _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.starterPack.flavour");
               _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.starterPack.button");
               _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.starter.button");
               break;
            case ServerPaymentPackConst.AID_PACK:
               _loc2_.styleName = "rewardStarter";
               _loc2_.rewardType = RewardDataVo.PAYMENTPACK;
               _loc2_.title = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.aid.title");
               _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.aid.flavour");
               _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.starterPack.button");
               _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.level.button");
               break;
            case ServerPaymentPackConst.PREMIUMPACK_A:
               _loc2_.styleName = "rewardStarter";
               _loc2_.rewardType = RewardDataVo.PAYMENTPACK;
               _loc2_.title = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.premium.title");
               _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.premium.flavour");
               _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.premium.button");
               _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.premium.button");
               break;
            case ServerPaymentPackConst.EVOUCHER:
               _loc2_.styleName = "rewardStarter";
               _loc2_.rewardType = RewardDataVo.EVOUCHER;
               _loc2_.title = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.evoucher.title");
               _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.evoucher.flavour");
               _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.starterPack.button");
               _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.starterPack.button");
               break;
            case ServerPaymentPackConst.EXPANSION_REFUND:
               _loc2_.styleName = "rewardStarter";
               _loc2_.rewardType = RewardDataVo.PAYMENTPACK;
               _loc2_.title = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.refund.title");
               _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.refund.flavour");
               _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.starterPack.button");
               _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.starterPack.button");
               break;
            default:
               _loc2_.styleName = "rewardStarter";
               _loc2_.rewardType = RewardDataVo.PAYMENTPACK;
               _loc2_.title = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.default.title.capital");
               _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.default.flavour");
               _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.default.button.capital");
               _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.default.button.tooltip");
         }
         return _loc2_;
      }
   }
}

