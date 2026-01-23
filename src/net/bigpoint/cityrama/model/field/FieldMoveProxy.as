package net.bigpoint.cityrama.model.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FieldMoveProxy extends Proxy
   {
      
      public static const NAME:String = "FieldMoveProxy";
      
      private var _objectToMove:IInteraction;
      
      private var _originalPosition:Cuboid;
      
      public function FieldMoveProxy(param1:String = null, param2:Object = null)
      {
         super(NAME,param2);
      }
      
      override public function onRegister() : void
      {
      }
      
      override public function onRemove() : void
      {
      }
      
      public function get originalPosition() : Cuboid
      {
         return this._originalPosition;
      }
      
      public function set originalPosition(param1:Cuboid) : void
      {
         this._originalPosition = param1;
      }
      
      public function get objectToMove() : IInteraction
      {
         return this._objectToMove;
      }
      
      public function set objectToMove(param1:IInteraction) : void
      {
         if(param1 != null)
         {
            if(param1 is BillboardObject)
            {
               (param1 as BillboardObject).changeInteractionstate(true);
            }
            else if(param1 is PlaneObject)
            {
               (param1 as PlaneObject).container.mouseEnabled = true;
            }
         }
         this._objectToMove = param1;
         sendNotification(ApplicationNotificationConstants.MOVE_PROXY_OBJECT_TO_MOVE_CHANGED);
      }
   }
}

