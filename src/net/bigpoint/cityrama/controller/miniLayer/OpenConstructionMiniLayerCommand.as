package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ConstructionMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ConstructionMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenConstructionMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenConstructionMiniLayerCommand()
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(_loc4_ || Boolean(param1))
         {
            _loc2_.modal = true;
            if(_loc4_ || Boolean(_loc2_))
            {
               _loc2_.viewClass = ConstructionMiniLayer;
               if(_loc4_ || _loc3_)
               {
                  addr0062:
                  _loc2_.mediatorClass = ConstructionMiniLayerMediator;
                  if(!_loc3_)
                  {
                     _loc2_.mediatorName = ConstructionMiniLayerMediator.NAME;
                     if(!_loc3_)
                     {
                        _loc2_.data = param1.getBody();
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr009c:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                        }
                        §§goto(addr00a7);
                     }
                  }
                  §§goto(addr009c);
               }
               addr00a7:
               return;
            }
            §§goto(addr0062);
         }
         §§goto(addr009c);
      }
   }
}

