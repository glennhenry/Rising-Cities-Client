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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         NAME = "FieldMoveProxy";
      }
      
      private var _objectToMove:IInteraction;
      
      private var _originalPosition:Cuboid;
      
      public function FieldMoveProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            super(NAME,param2);
         }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._originalPosition = param1;
         }
      }
      
      public function get objectToMove() : IInteraction
      {
         return this._objectToMove;
      }
      
      public function set objectToMove(param1:IInteraction) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1 != null)
            {
               if(_loc2_)
               {
                  §§push(param1 is BillboardObject);
                  if(_loc2_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           (param1 as BillboardObject).changeInteractionstate(true);
                           if(!_loc3_)
                           {
                              addr008d:
                              this._objectToMove = param1;
                              if(!_loc3_)
                              {
                                 addr0098:
                                 sendNotification(ApplicationNotificationConstants.MOVE_PROXY_OBJECT_TO_MOVE_CHANGED);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr0098);
                        }
                        addr00a3:
                        return;
                     }
                     addr0073:
                     if(param1 is PlaneObject)
                     {
                        if(_loc2_)
                        {
                           (param1 as PlaneObject).container.mouseEnabled = true;
                           if(!_loc3_)
                           {
                              §§goto(addr008d);
                           }
                           §§goto(addr0098);
                        }
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr0073);
               }
            }
         }
         §§goto(addr008d);
      }
   }
}

