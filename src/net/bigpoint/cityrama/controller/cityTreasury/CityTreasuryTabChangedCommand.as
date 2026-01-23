package net.bigpoint.cityrama.controller.cityTreasury
{
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryCurrencyTabMediator;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryGoodsTabMediator;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryPackTabMediator;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasurySpecialTabMediator;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CityTreasuryTabChangedCommand extends SimpleCommand implements ICommand
   {
      
      public function CityTreasuryTabChangedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:CityTreasuryLayer = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:CityTreasuryCurrencyTabMediator = null;
         var _loc8_:CityTreasuryGoodsTabMediator = null;
         var _loc9_:CityTreasurySpecialTabMediator = null;
         var _loc10_:CityTreasuryPackTabMediator = null;
         var _loc2_:Object = param1.getBody() as Object;
         var _loc3_:CityTreasuryTabProxy = facade.retrieveProxy(CityTreasuryTabProxy.NAME) as CityTreasuryTabProxy;
         if(_loc2_.container)
         {
            _loc4_ = _loc2_.container as CityTreasuryLayer;
            _loc5_ = int(_loc2_.category);
            _loc6_ = int(_loc2_.pack);
            _loc7_ = facade.retrieveMediator(CityTreasuryCurrencyTabMediator.NAME) as CityTreasuryCurrencyTabMediator;
            _loc8_ = facade.retrieveMediator(CityTreasuryGoodsTabMediator.NAME) as CityTreasuryGoodsTabMediator;
            _loc9_ = facade.retrieveMediator(CityTreasurySpecialTabMediator.NAME) as CityTreasurySpecialTabMediator;
            _loc10_ = facade.retrieveMediator(CityTreasuryPackTabMediator.NAME) as CityTreasuryPackTabMediator;
            if(_loc4_)
            {
               switch(_loc3_.currentTabIndex)
               {
                  case CityTreasuryTabProxy.CURRENCY_TAB_INDEX:
                     this.removeAllOtherMediators(CityTreasuryCurrencyTabMediator.NAME);
                     if(!_loc7_)
                     {
                        _loc7_ = new CityTreasuryCurrencyTabMediator(_loc4_);
                        facade.registerMediator(_loc7_);
                     }
                     _loc7_.init(_loc5_,_loc6_);
                     break;
                  case CityTreasuryTabProxy.GOODS_TAB_INDEX:
                     this.removeAllOtherMediators(CityTreasuryGoodsTabMediator.NAME);
                     if(!_loc8_)
                     {
                        _loc8_ = new CityTreasuryGoodsTabMediator(_loc4_);
                        facade.registerMediator(_loc8_);
                     }
                     _loc8_.init(_loc5_,_loc6_);
                     break;
                  case CityTreasuryTabProxy.PACKS_TAB_INDEX:
                     this.removeAllOtherMediators(CityTreasuryPackTabMediator.NAME);
                     if(!_loc10_)
                     {
                        _loc10_ = new CityTreasuryPackTabMediator(_loc4_);
                        facade.registerMediator(_loc10_);
                     }
                     _loc10_.init(_loc5_);
                     break;
                  case CityTreasuryTabProxy.SPECIALS_TAB_INDEX:
                     this.removeAllOtherMediators(CityTreasurySpecialTabMediator.NAME);
                     if(!_loc9_)
                     {
                        _loc9_ = new CityTreasurySpecialTabMediator(_loc4_);
                        facade.registerMediator(_loc9_);
                     }
                     _loc9_.init(_loc5_);
               }
            }
         }
      }
      
      private function removeAllOtherMediators(param1:String) : void
      {
         if(param1 != CityTreasuryCurrencyTabMediator.NAME)
         {
            facade.removeMediator(CityTreasuryCurrencyTabMediator.NAME);
         }
         if(param1 != CityTreasuryGoodsTabMediator.NAME)
         {
            facade.removeMediator(CityTreasuryGoodsTabMediator.NAME);
         }
         if(param1 != CityTreasurySpecialTabMediator.NAME)
         {
            facade.removeMediator(CityTreasurySpecialTabMediator.NAME);
         }
         if(param1 != CityTreasuryPackTabMediator.NAME)
         {
            facade.removeMediator(CityTreasuryPackTabMediator.NAME);
         }
      }
   }
}

