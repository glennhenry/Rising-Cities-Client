package net.bigpoint.cityrama.controller.error
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.FatalErrorMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.FatalErrorMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenFatalErrorMinilayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenFatalErrorMinilayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
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
         if(_loc3_)
         {
            _loc2_.modal = true;
            if(_loc3_ || Boolean(_loc2_))
            {
               _loc2_.viewClass = FatalErrorMiniLayer;
               if(_loc3_ || Boolean(this))
               {
                  _loc2_.mediatorClass = FatalErrorMiniLayerMediator;
                  if(!_loc4_)
                  {
                     _loc2_.mediatorName = FatalErrorMiniLayerMediator.NAME;
                     if(_loc3_)
                     {
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                     }
                  }
               }
            }
         }
      }
   }
}

