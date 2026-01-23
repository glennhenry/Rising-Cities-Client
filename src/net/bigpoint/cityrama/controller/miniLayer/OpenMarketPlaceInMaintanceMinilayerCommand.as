package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.MarketMaintanceMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.MarketMaintanceMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMarketPlaceInMaintanceMinilayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenMarketPlaceInMaintanceMinilayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = MarketMaintanceMiniLayer;
         _loc2_.mediatorClass = MarketMaintanceMiniLayerMediator;
         _loc2_.mediatorName = MarketMaintanceMiniLayerMediator.NAME;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
   }
}

