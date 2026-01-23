package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyCleanupMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.EmergencyCleanupMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyCleanupMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenEmergencyCleanupMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenEmergencyCleanupMiniLayerCommand()
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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:EmergencyCleanupMiniLayerVo = null;
         var _loc5_:PopupSettingsVo = null;
         var _loc2_:EmergencyMiniLayerProxy = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
         var _loc3_:BillboardObjectVo = param1.getBody() as BillboardObjectVo;
         if(_loc7_ || Boolean(param1))
         {
            if(_loc3_)
            {
               addr0050:
               _loc4_ = _loc2_.getEmergencyCleanupVo(_loc3_);
               if(_loc4_)
               {
                  _loc5_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
                  _loc5_.modal = true;
                  if(_loc7_)
                  {
                     _loc5_.viewClass = EmergencyCleanupMiniLayer;
                     if(_loc7_ || Boolean(this))
                     {
                        §§goto(addr009c);
                     }
                     §§goto(addr00f6);
                  }
                  addr009c:
                  _loc5_.mediatorClass = EmergencyCleanupMiniLayerMediator;
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     _loc5_.mediatorName = EmergencyCleanupMiniLayerMediator.NAME;
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        _loc5_.data = _loc4_;
                        if(!_loc6_)
                        {
                           _loc5_.modal = true;
                           if(_loc7_ || Boolean(param1))
                           {
                              addr00f6:
                              facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
                           }
                        }
                        §§goto(addr0102);
                     }
                     §§goto(addr00f6);
                  }
                  §§goto(addr0102);
               }
            }
            addr0102:
            return;
         }
         §§goto(addr0050);
      }
   }
}

