package net.bigpoint.cityrama.controller.assistants
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.assistants.AssistViewProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.assistants.RentCollectorActivatedLayerMediator;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorActivatedLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenRentCollectorActivatedLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenRentCollectorActivatedLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:AssistViewProxy = facade.retrieveProxy(AssistViewProxy.NAME) as AssistViewProxy;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = RentCollectorActivatedLayer;
         _loc3_.mediatorClass = RentCollectorActivatedLayerMediator;
         _loc3_.mediatorName = RentCollectorActivatedLayerMediator.NAME;
         _loc3_.data = _loc2_.rentCollectorActivatedVo;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

