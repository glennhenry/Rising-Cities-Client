package net.bigpoint.cityrama.model.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayfieldInteractiveProxy extends Proxy
   {
      
      public static const NAME:String = "PlayfieldInteractiveProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "PlayfieldInteractiveProxy";
      }
      
      private var _rollOverObject:IInteraction;
      
      private var _clickObject:IInteraction;
      
      private var _oldClickObject:IInteraction;
      
      private var _rollOutObject:IInteraction;
      
      public function PlayfieldInteractiveProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
      }
      
      override public function onRemove() : void
      {
      }
      
      public function get rollOverObject() : IInteraction
      {
         return this._rollOverObject;
      }
      
      public function setRollOverObjectAndEvent(param1:IInteraction, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            this._rollOverObject = param1;
            if(_loc4_ || Boolean(this))
            {
               if(this._rollOverObject != null)
               {
                  if(!_loc3_)
                  {
                     sendNotification(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,param2);
                  }
               }
            }
         }
      }
      
      public function get rollOutObject() : IInteraction
      {
         return this._rollOutObject;
      }
      
      public function setRollOutObjectAndEvent(param1:IInteraction, param2:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            this._rollOutObject = param1;
            if(!(_loc4_ && _loc3_))
            {
               if(this._rollOutObject != null)
               {
                  if(_loc3_ || _loc3_)
                  {
                     sendNotification(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,param2);
                  }
               }
            }
         }
      }
      
      public function get clickObject() : IInteraction
      {
         return this._clickObject;
      }
      
      public function set clickObject(param1:IInteraction) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:BillboardObject = null;
         if(_loc5_ || _loc3_)
         {
            this._clickObject = param1;
         }
         var _loc2_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         §§push(_loc2_.mode);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!_loc6_)
         {
            §§push(this._clickObject);
            if(_loc5_)
            {
               if(§§pop() != null)
               {
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     §§push(this._clickObject);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() is BillboardObject);
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           var _temp_6:* = §§pop();
                           §§push(_temp_6);
                           if(_temp_6)
                           {
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 §§pop();
                                 if(!_loc6_)
                                 {
                                    addr00c9:
                                    addr00c1:
                                    if(_loc3_ == ApplicationModeProxy.MODE_NORMAL)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          addr00db:
                                          addr00eb:
                                          _loc4_ = this._clickObject as BillboardObject;
                                          if(_loc4_.billboardObjectVo.emergencyState != null)
                                          {
                                             if(_loc5_)
                                             {
                                                sendNotification(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK_EMERGENCY);
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr0115);
                                                }
                                             }
                                             return;
                                          }
                                          addr0115:
                                          sendNotification(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK);
                                       }
                                       §§goto(addr011f);
                                    }
                                    §§goto(addr0115);
                                 }
                                 §§goto(addr00db);
                              }
                           }
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr00eb);
                  }
                  §§goto(addr00c1);
               }
               addr011f:
               return;
            }
            §§goto(addr00eb);
         }
         §§goto(addr00db);
      }
      
      public function get oldClickObject() : IInteraction
      {
         return this._oldClickObject;
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._clickObject = null;
         }
      }
      
      public function set oldClickObject(param1:IInteraction) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._oldClickObject = param1;
         }
      }
   }
}

