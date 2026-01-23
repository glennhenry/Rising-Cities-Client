package net.bigpoint.cityrama.controller.cityTreasury
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryMediator;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCurrencyPurchaseCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCurrencyPurchaseCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:CityTreasuryMediator = null;
         var _loc7_:PopupSettingsVo = null;
         var _loc2_:String = param1.getBody() as String;
         var _loc3_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         var _loc4_:int = _loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.CURRENCY_TAB_INDEX,_loc2_);
         var _loc5_:Object = {
            "index":CityTreasuryTabProxy.CURRENCY_TAB_INDEX,
            "cat":_loc4_
         };
         if(facade.hasMediator(CityTreasuryMediator.NAME))
         {
            _loc6_ = facade.retrieveMediator(CityTreasuryMediator.NAME) as CityTreasuryMediator;
            _loc6_.updateData(_loc5_);
         }
         else
         {
            _loc7_ = new PopupSettingsVo(PopupSettingsVo.FEATURE_POPUP);
            _loc7_.modal = true;
            _loc7_.viewClass = CityTreasuryLayer;
            _loc7_.mediatorClass = CityTreasuryMediator;
            _loc7_.mediatorName = CityTreasuryMediator.NAME;
            _loc7_.noModeReset = true;
            _loc7_.data = _loc5_;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc7_);
         }
      }
   }
}

