package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.miniLayer.ExpansionMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ExpansionMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenExpansionMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenExpansionMiniLayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:ExpansionFieldObject = ExpansionFieldObject(param1.getBody());
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(_loc4_ || Boolean(param1))
         {
            _loc3_.modal = true;
            if(!_loc5_)
            {
               _loc3_.viewClass = ExpansionMiniLayer;
               if(_loc4_)
               {
                  §§goto(addr0067);
               }
               §§goto(addr0081);
            }
            addr0067:
            _loc3_.mediatorClass = ExpansionMiniLayerMediator;
            if(_loc4_)
            {
               addr0081:
               _loc3_.mediatorName = ExpansionMiniLayerMediator.NAME;
               if(_loc4_)
               {
                  §§goto(addr0090);
               }
               §§goto(addr00a2);
            }
            addr0090:
            _loc3_.data = _loc2_;
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               addr00a2:
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
            }
            return;
         }
         §§goto(addr0081);
      }
   }
}

