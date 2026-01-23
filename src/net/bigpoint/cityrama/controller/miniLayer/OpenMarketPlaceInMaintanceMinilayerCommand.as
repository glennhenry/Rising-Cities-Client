package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.MarketMaintanceMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.MarketMaintanceMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMarketPlaceInMaintanceMinilayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenMarketPlaceInMaintanceMinilayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
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
         if(_loc4_)
         {
            _loc2_.modal = true;
            if(_loc4_)
            {
               _loc2_.viewClass = MarketMaintanceMiniLayer;
               if(_loc4_)
               {
                  addr0057:
                  _loc2_.mediatorClass = MarketMaintanceMiniLayerMediator;
                  if(_loc4_)
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0073);
               }
               addr0064:
               _loc2_.mediatorName = MarketMaintanceMiniLayerMediator.NAME;
               if(_loc4_)
               {
                  addr0073:
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr0057);
      }
   }
}

