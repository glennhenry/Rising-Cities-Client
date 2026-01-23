package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.EvoucherFailureMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EvoucherFailureMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenEvoucherFailureMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenEvoucherFailureMiniLayerCommand()
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(!(_loc4_ && Boolean(param1)))
         {
            _loc2_.modal = true;
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.viewClass = EvoucherFailureMiniLayer;
               if(_loc3_ || _loc3_)
               {
                  _loc2_.mediatorClass = EvoucherFailureMiniLayerMediator;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0085:
                     _loc2_.mediatorName = EvoucherFailureMiniLayerMediator.NAME;
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        _loc2_.data = param1.getBody();
                        if(!_loc4_)
                        {
                           addr00a9:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr00b4);
               }
            }
            §§goto(addr0085);
         }
         addr00b4:
      }
   }
}

