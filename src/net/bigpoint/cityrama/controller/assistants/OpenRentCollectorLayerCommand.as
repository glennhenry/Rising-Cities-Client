package net.bigpoint.cityrama.controller.assistants
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.assistants.AssistViewProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.assistants.RentCollectorLayerMediator;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenRentCollectorLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenRentCollectorLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:AssistViewProxy = facade.retrieveProxy(AssistViewProxy.NAME) as AssistViewProxy;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = RentCollectorLayer;
         _loc3_.mediatorClass = RentCollectorLayerMediator;
         _loc3_.mediatorName = RentCollectorLayerMediator.NAME;
         _loc3_.data = _loc2_.rentCollectorOffers;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

