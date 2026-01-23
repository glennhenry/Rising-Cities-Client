package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.components.ProductionCancelMinilayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenProductionCancelMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenProductionCancelMiniLayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
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
         if(_loc4_ || _loc3_)
         {
            _loc2_.modal = true;
            if(_loc4_)
            {
               _loc2_.viewClass = QueryMiniLayer;
               if(!(_loc3_ && _loc3_))
               {
                  _loc2_.mediatorClass = ProductionCancelMinilayerMediator;
                  if(_loc4_)
                  {
                     §§goto(addr0070);
                  }
                  §§goto(addr007e);
               }
               addr0070:
               _loc2_.mediatorName = ProductionCancelMinilayerMediator.NAME;
               if(!_loc3_)
               {
                  addr007e:
                  _loc2_.data = param1.getBody();
                  if(_loc4_)
                  {
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                  }
               }
               §§goto(addr0096);
            }
            §§goto(addr007e);
         }
         addr0096:
      }
   }
}

