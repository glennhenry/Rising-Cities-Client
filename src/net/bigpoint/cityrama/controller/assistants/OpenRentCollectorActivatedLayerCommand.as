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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
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
         if(_loc5_)
         {
            _loc3_.modal = true;
            if(_loc5_ || Boolean(this))
            {
               addr0059:
               _loc3_.viewClass = RentCollectorActivatedLayer;
               if(_loc5_ || Boolean(param1))
               {
                  _loc3_.mediatorClass = RentCollectorActivatedLayerMediator;
                  if(_loc5_ || Boolean(param1))
                  {
                     addr0090:
                     _loc3_.mediatorName = RentCollectorActivatedLayerMediator.NAME;
                     if(!_loc4_)
                     {
                        _loc3_.data = _loc2_.rentCollectorActivatedVo;
                        if(!_loc4_)
                        {
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                        }
                     }
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr0090);
            }
            addr00b8:
            return;
         }
         §§goto(addr0059);
      }
   }
}

