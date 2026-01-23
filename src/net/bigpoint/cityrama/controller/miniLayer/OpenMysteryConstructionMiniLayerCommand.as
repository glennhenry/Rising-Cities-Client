package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.MysteryConstructionMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.MysteryConstructionMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMysteryConstructionMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenMysteryConstructionMiniLayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
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
               _loc2_.viewClass = MysteryConstructionMiniLayer;
               if(_loc4_ || _loc3_)
               {
                  _loc2_.mediatorClass = MysteryConstructionMiniLayerMediator;
                  if(!_loc3_)
                  {
                     _loc2_.mediatorName = MysteryConstructionMiniLayerMediator.NAME;
                     if(_loc4_)
                     {
                        addr0079:
                        _loc2_.data = param1.getBody();
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr008d:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                        }
                        §§goto(addr0098);
                     }
                  }
                  §§goto(addr008d);
               }
               addr0098:
               return;
            }
            §§goto(addr0079);
         }
         §§goto(addr008d);
      }
   }
}

