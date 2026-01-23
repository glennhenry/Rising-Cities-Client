package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.CitysquareDepositMinilayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitysquareDepositMinilayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCitysquareDepositMinilayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCitysquareDepositMinilayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:CitySquareDetailViewVo = CitySquareDetailViewVo(param1.getBody());
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = CitysquareDepositMinilayer;
         _loc3_.mediatorClass = CitysquareDepositMinilayerMediator;
         _loc3_.mediatorName = CitysquareDepositMinilayerMediator.NAME;
         _loc3_.data = _loc2_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

