package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ProfessionalUnspentSkillpointsMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ProfessionalUnspentSkillpointsMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenProfessionalUnspentSkillpointsMinilayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenProfessionalUnspentSkillpointsMinilayerCommand()
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
         if(_loc3_ || Boolean(this))
         {
            _loc2_.modal = true;
            if(!_loc4_)
            {
               _loc2_.viewClass = ProfessionalUnspentSkillpointsMiniLayer;
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.mediatorClass = ProfessionalUnspentSkillpointsMiniLayerMediator;
                  if(!_loc4_)
                  {
                     addr0072:
                     _loc2_.mediatorName = ProfessionalUnspentSkillpointsMiniLayerMediator.NAME;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                     }
                  }
               }
               §§goto(addr0094);
            }
            §§goto(addr0072);
         }
         addr0094:
      }
   }
}

