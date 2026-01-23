package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.PlacementImpossibleMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.PlacementImpossibleMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenPlacementMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenPlacementMiniLayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Boolean = param1.getBody() as Boolean;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(_loc4_ || _loc2_)
         {
            _loc3_.modal = true;
            if(_loc4_ || _loc2_)
            {
               addr005a:
               _loc3_.viewClass = PlacementImpossibleMiniLayer;
               if(!_loc5_)
               {
                  _loc3_.mediatorClass = PlacementImpossibleMiniLayerMediator;
                  if(!_loc5_)
                  {
                     _loc3_.mediatorName = PlacementImpossibleMiniLayerMediator.NAME;
                     if(!_loc5_)
                     {
                        addr0092:
                        _loc3_.data = _loc2_;
                        if(!_loc5_)
                        {
                           addr009c:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr009c);
            }
            §§goto(addr0092);
         }
         §§goto(addr005a);
      }
   }
}

