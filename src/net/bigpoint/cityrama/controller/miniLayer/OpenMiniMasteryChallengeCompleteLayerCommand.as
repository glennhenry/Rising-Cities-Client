package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.mastery.MasteryChallengeCompletedMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.MasteryChallengeCompletedMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.MasteryChallengeCompletedMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMiniMasteryChallengeCompleteLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenMiniMasteryChallengeCompleteLayerCommand()
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
         if(!_loc3_)
         {
            _loc2_.modal = true;
            if(_loc4_)
            {
               _loc2_.viewClass = MasteryChallengeCompletedMiniLayer;
               if(!_loc3_)
               {
                  addr0049:
                  _loc2_.mediatorClass = MasteryChallengeCompletedMiniLayerMediator;
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr00a0);
               }
               addr005e:
               _loc2_.mediatorName = MasteryChallengeCompletedMiniLayerMediator.NAME;
               if(_loc4_)
               {
                  _loc2_.data = new MasteryChallengeCompletedMiniLayerVo(param1.getBody().masteryIndex,param1.getBody().rewards);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr00a0:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                  }
               }
               return;
            }
            §§goto(addr0049);
         }
         §§goto(addr00a0);
      }
   }
}

