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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:AssistViewProxy = facade.retrieveProxy(AssistViewProxy.NAME) as AssistViewProxy;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(!(_loc4_ && Boolean(this)))
         {
            _loc3_.modal = true;
            if(_loc5_)
            {
               _loc3_.viewClass = RentCollectorLayer;
               if(_loc5_)
               {
                  addr0065:
                  _loc3_.mediatorClass = RentCollectorLayerMediator;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     _loc3_.mediatorName = RentCollectorLayerMediator.NAME;
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        addr009f:
                        _loc3_.data = _loc2_.rentCollectorOffers;
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr00b4:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                        }
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr00b4);
            }
            §§goto(addr0065);
         }
         addr00bf:
      }
   }
}

