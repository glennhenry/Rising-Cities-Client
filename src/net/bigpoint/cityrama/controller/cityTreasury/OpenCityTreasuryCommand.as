package net.bigpoint.cityrama.controller.cityTreasury
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryMediator;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCityTreasuryCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCityTreasuryCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:CityTreasuryMediator = null;
         var _loc5_:PopupSettingsVo = null;
         var _loc2_:Object = param1.getBody() as Object;
         if(!_loc2_)
         {
            _loc2_ = new Object();
         }
         var _loc3_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         _loc3_.isUpsellRunning();
         if(facade.hasMediator(CityTreasuryMediator.NAME))
         {
            _loc4_ = facade.retrieveMediator(CityTreasuryMediator.NAME) as CityTreasuryMediator;
            _loc4_.updateData(_loc2_);
         }
         else
         {
            _loc5_ = new PopupSettingsVo(PopupSettingsVo.FEATURE_POPUP);
            _loc5_.modal = true;
            _loc5_.viewClass = CityTreasuryLayer;
            _loc5_.mediatorClass = CityTreasuryMediator;
            _loc5_.mediatorName = CityTreasuryMediator.NAME;
            _loc5_.data = _loc2_;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
         }
      }
   }
}

