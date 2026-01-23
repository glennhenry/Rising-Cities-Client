package net.bigpoint.cityrama.controller.residentialBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.residentialBook.ResidentialTabbedBookMediator;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenResidentialBookCommand extends SimpleCommand
   {
      
      public function OpenResidentialBookCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:Object = null;
         var _loc4_:PopupSettingsVo = null;
         var _loc2_:Object = param1.getBody();
         if(_loc2_.residential)
         {
            _loc3_ = new Object();
            _loc3_.residential = _loc2_.residential;
            if(_loc2_.index)
            {
               _loc3_.index = _loc2_.index;
            }
            _loc4_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
            _loc4_.modal = true;
            _loc4_.viewClass = ResidentialPopup;
            _loc4_.mediatorClass = ResidentialTabbedBookMediator;
            _loc4_.mediatorName = ResidentialTabbedBookMediator.NAME;
            _loc4_.data = _loc3_;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
         }
      }
   }
}

