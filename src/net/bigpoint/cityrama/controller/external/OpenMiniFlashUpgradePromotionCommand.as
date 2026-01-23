package net.bigpoint.cityrama.controller.external
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.FlashUpgradePromotionMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.FlashUpgradePromotionMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMiniFlashUpgradePromotionCommand extends SimpleCommand
   {
      
      public function OpenMiniFlashUpgradePromotionCommand()
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
         if(!(_loc3_ && Boolean(this)))
         {
            facade.removeCommand(param1.getName());
         }
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(_loc4_)
         {
            _loc2_.modal = true;
            if(_loc4_ || _loc3_)
            {
               _loc2_.viewClass = FlashUpgradePromotionMiniLayer;
               if(_loc4_)
               {
                  _loc2_.mediatorClass = FlashUpgradePromotionMiniLayerMediator;
                  if(_loc4_ || Boolean(this))
                  {
                     _loc2_.mediatorName = FlashUpgradePromotionMiniLayerMediator.NAME;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr009f:
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr009f);
               }
               addr00aa:
               return;
            }
         }
         §§goto(addr009f);
      }
   }
}

