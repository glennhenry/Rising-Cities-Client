package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.miniLayer.InfrastructureUpgradeMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.InfrastructureUpgradeMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenInfraUpgradeMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenInfraUpgradeMiniLayerCommand()
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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:PopupSettingsVo = null;
         var _loc2_:MiniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(param1.getBody() as Number);
         if(_loc4_)
         {
            _loc5_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
            _loc5_.modal = true;
            if(_loc7_ || Boolean(_loc3_))
            {
               _loc5_.viewClass = InfrastructureUpgradeMiniLayer;
               if(_loc7_)
               {
                  _loc5_.mediatorClass = InfrastructureUpgradeMiniLayerMediator;
                  if(!_loc6_)
                  {
                     _loc5_.mediatorName = InfrastructureUpgradeMiniLayerMediator.NAME;
                     if(!(_loc6_ && Boolean(this)))
                     {
                        §§goto(addr00bf);
                     }
                  }
                  §§goto(addr00db);
               }
            }
            addr00bf:
            _loc5_.data = _loc2_.getInfraUpgradeVo(_loc4_.billboardObjectVo);
            if(_loc7_ || Boolean(_loc2_))
            {
               addr00db:
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
            }
            §§goto(addr00e7);
         }
         addr00e7:
      }
   }
}

