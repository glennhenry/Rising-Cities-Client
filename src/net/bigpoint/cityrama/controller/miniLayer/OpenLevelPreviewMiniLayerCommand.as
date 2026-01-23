package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.LevelPreviewMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.NextLevelMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenLevelPreviewMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenLevelPreviewMiniLayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(_loc5_)
         {
            _loc2_.modal = true;
            if(_loc5_ || Boolean(this))
            {
               _loc2_.viewClass = NextLevelMiniLayer;
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr005c);
               }
            }
            §§goto(addr0069);
         }
         addr005c:
         _loc2_.mediatorClass = LevelPreviewMiniLayerMediator;
         if(!_loc4_)
         {
            addr0069:
            _loc2_.mediatorName = LevelPreviewMiniLayerMediator.NAME;
         }
         var _loc3_:UserLevelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
         if(_loc5_ || Boolean(_loc2_))
         {
            if(!_loc3_.userIsMaxlevel)
            {
               if(_loc5_ || Boolean(this))
               {
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
               }
            }
         }
      }
   }
}

