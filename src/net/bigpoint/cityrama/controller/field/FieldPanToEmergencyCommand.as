package net.bigpoint.cityrama.controller.field
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldPanToEmergencyCommand extends SimpleCommand implements ICommand
   {
      
      public function FieldPanToEmergencyCommand()
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
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:Point = null;
         var _loc2_:Number = Number(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(_loc2_);
         if(_loc4_)
         {
            _loc5_ = new Point(_loc4_.billboardObjectVo.matrix3dCoordinates.x,_loc4_.billboardObjectVo.matrix3dCoordinates.y);
            if(_loc7_ || Boolean(_loc3_))
            {
               sendNotification(ApplicationNotificationConstants.FIELD_PANTO,_loc5_);
            }
         }
      }
   }
}

