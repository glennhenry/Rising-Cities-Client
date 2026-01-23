package net.bigpoint.cityrama.controller.improvement
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenResidentialImprovementPopupCommand extends SimpleCommand
   {
      
      public function OpenResidentialImprovementPopupCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:Object = null;
         var _loc2_:Number = param1.getBody() as Number;
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ResidentialFieldObject = _loc3_.getBillboardById(_loc2_) as ResidentialFieldObject;
         if(_loc4_)
         {
            _loc5_ = new Object();
            _loc5_.residential = _loc4_.residentialFieldObjectVo;
            _loc5_.index = 1;
            sendNotification(ApplicationNotificationConstants.OPEN_RESIDENTIALBOOK,_loc5_);
         }
      }
   }
}

