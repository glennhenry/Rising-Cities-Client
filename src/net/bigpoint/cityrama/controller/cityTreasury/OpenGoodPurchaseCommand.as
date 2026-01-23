package net.bigpoint.cityrama.controller.cityTreasury
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryMediator;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenGoodPurchaseCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenGoodPurchaseCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:GameConfigProxy = null;
         var _loc8_:Number = NaN;
         var _loc9_:ConfigGoodDTO = null;
         var _loc10_:String = null;
         var _loc11_:CityTreasuryMediator = null;
         var _loc12_:PopupSettingsVo = null;
         var _loc2_:Object = param1.getBody();
         var _loc3_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         var _loc4_:int = 0;
         var _loc5_:uint = 0;
         if(_loc2_.goodConfigId)
         {
            _loc7_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
            _loc8_ = Number(_loc2_.goodConfigId);
            _loc9_ = _loc7_.goods[_loc8_];
            if(_loc9_)
            {
               if(_loc9_.isTaggedGoodByTagName(ServerTagConstants.GOOD_DEXTRO))
               {
                  _loc4_ = _loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.GOODS_TAB_INDEX,ServerTagConstants.GOOD_DEXTRO);
               }
               else if(_loc9_.isTaggedGoodByTagName(ServerTagConstants.GOOD_KEY))
               {
                  _loc4_ = _loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.GOODS_TAB_INDEX,ServerTagConstants.GOOD_KEY);
               }
               else if(_loc9_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN))
               {
                  _loc4_ = _loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.GOODS_TAB_INDEX,ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN);
                  if(_loc9_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN))
                  {
                     _loc5_ = uint(_loc3_.getFirstInternalPackIndexByCategoryAndContent(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN,ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN));
                  }
                  else if(_loc9_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN))
                  {
                     _loc5_ = uint(_loc3_.getFirstInternalPackIndexByCategoryAndContent(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN,ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN));
                  }
               }
               else if(_loc9_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_GOOD_GRANITE))
               {
                  _loc4_ = _loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.GOODS_TAB_INDEX,ServerTagConstants.CLIENT_GOOD_GRANITE);
               }
            }
         }
         else if(_loc2_.cat)
         {
            _loc10_ = _loc2_.cat;
            if(_loc10_ == ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN || _loc10_ == ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN)
            {
               switch(_loc10_)
               {
                  case ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN:
                     _loc5_ = uint(_loc3_.getFirstInternalPackIndexByCategoryAndContent(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN,ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN));
                     break;
                  case ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN:
                     _loc5_ = uint(_loc3_.getFirstInternalPackIndexByCategoryAndContent(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN,ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN));
               }
               _loc4_ = _loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.GOODS_TAB_INDEX,ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN);
            }
            else
            {
               _loc4_ = _loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.GOODS_TAB_INDEX,_loc10_);
            }
         }
         var _loc6_:Object = {
            "index":CityTreasuryTabProxy.GOODS_TAB_INDEX,
            "cat":_loc4_,
            "pack":_loc5_
         };
         if(facade.hasMediator(CityTreasuryMediator.NAME))
         {
            _loc11_ = facade.retrieveMediator(CityTreasuryMediator.NAME) as CityTreasuryMediator;
            _loc11_.updateData(_loc6_);
         }
         else
         {
            _loc12_ = new PopupSettingsVo(PopupSettingsVo.FEATURE_POPUP);
            _loc12_.modal = true;
            _loc12_.viewClass = CityTreasuryLayer;
            _loc12_.mediatorClass = CityTreasuryMediator;
            _loc12_.mediatorName = CityTreasuryMediator.NAME;
            _loc12_.data = _loc6_;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc12_);
         }
      }
   }
}

