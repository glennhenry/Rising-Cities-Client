package net.bigpoint.cityrama.controller.residentSelection
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.residentSelection.ResidentSelectionMediator;
   import net.bigpoint.cityrama.view.residentSelection.ui.components.ResidentSelectionPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenResidentSwapCommand extends SimpleCommand
   {
      
      public function OpenResidentSwapCommand()
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
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:ResidentialFieldObject = param1.getBody() as ResidentialFieldObject;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(!_loc5_)
         {
            _loc3_.modal = true;
            if(_loc4_)
            {
               addr003f:
               _loc3_.viewClass = ResidentSelectionPopup;
               if(!(_loc5_ && Boolean(this)))
               {
                  addr0060:
                  _loc3_.mediatorClass = ResidentSelectionMediator;
                  if(_loc4_ || Boolean(this))
                  {
                     _loc3_.mediatorName = ResidentSelectionMediator.NAME;
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        addr0098:
                        _loc3_.data = MainLayerProxy(facade.retrieveProxy(MainLayerProxy.NAME)).getResidentSelectionVo(_loc2_,true);
                        if(!_loc5_)
                        {
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr0098);
            }
            §§goto(addr0060);
         }
         §§goto(addr003f);
      }
   }
}

