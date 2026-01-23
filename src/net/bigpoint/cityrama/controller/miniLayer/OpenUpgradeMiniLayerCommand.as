package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.UpgradeQueryMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.UpgradeQueryMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenUpgradeMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenUpgradeMiniLayerCommand()
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(_loc3_ || Boolean(_loc2_))
         {
            _loc2_.modal = true;
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               _loc2_.viewClass = UpgradeQueryMiniLayer;
               if(!_loc4_)
               {
                  _loc2_.mediatorClass = UpgradeQueryMiniLayerMediator;
                  if(_loc3_)
                  {
                     _loc2_.mediatorName = UpgradeQueryMiniLayerMediator.NAME;
                     if(_loc3_)
                     {
                        addr007e:
                        _loc2_.data = param1.getBody();
                        if(_loc3_)
                        {
                           addr008a:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                        }
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr008a);
            }
            addr0095:
            return;
         }
         §§goto(addr008a);
      }
   }
}

