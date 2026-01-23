package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.CitysquareRewardPreviewMinilayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitysquareRewardPreviewMinilayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCitysquareRewardPreviewMinilayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCitysquareRewardPreviewMinilayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Object = param1.getBody();
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(!_loc4_)
         {
            _loc3_.modal = true;
            if(_loc5_ || Boolean(this))
            {
               _loc3_.viewClass = CitysquareRewardPreviewMinilayer;
               if(!_loc4_)
               {
                  _loc3_.mediatorClass = CitysquareRewardPreviewMinilayerMediator;
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     §§goto(addr007e);
                  }
                  §§goto(addr008d);
               }
               addr007e:
               _loc3_.mediatorName = CitysquareRewardPreviewMinilayerMediator.NAME;
               if(_loc5_)
               {
                  addr008d:
                  _loc3_.data = _loc2_;
                  if(_loc5_ || Boolean(param1))
                  {
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                  }
               }
               §§goto(addr00aa);
            }
            addr00aa:
            return;
         }
         §§goto(addr007e);
      }
   }
}

