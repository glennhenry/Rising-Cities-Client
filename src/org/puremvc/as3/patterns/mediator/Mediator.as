package org.puremvc.as3.patterns.mediator
{
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.interfaces.INotifier;
   import org.puremvc.as3.patterns.observer.Notifier;
   
   public class Mediator extends Notifier implements IMediator, INotifier
   {
      
      public static const NAME:String = "Mediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "Mediator";
      }
      
      protected var viewComponent:Object;
      
      protected var mediatorName:String;
      
      public function Mediator(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            super();
            if(!(_loc4_ && Boolean(param2)))
            {
               §§push(this);
               if(_loc3_)
               {
                  §§push(param1);
                  if(!_loc4_)
                  {
                     if(§§pop() != null)
                     {
                        addr0053:
                        §§push(param1);
                        if(_loc3_ || Boolean(param2))
                        {
                           §§goto(addr008f);
                        }
                        §§goto(addr008e);
                     }
                     else
                     {
                        §§push(NAME);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr008e);
                        }
                     }
                  }
                  addr008f:
                  §§push(§§pop());
                  if(!(_loc3_ || Boolean(param1)))
                  {
                     addr008e:
                     §§push(§§pop());
                  }
                  §§pop().mediatorName = §§pop();
                  if(!(_loc4_ && _loc3_))
                  {
                     addr00a0:
                     this.viewComponent = param2;
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0053);
            }
            addr00a5:
            return;
         }
         §§goto(addr00a0);
      }
      
      public function listNotificationInterests() : Array
      {
         return [];
      }
      
      public function onRegister() : void
      {
      }
      
      public function onRemove() : void
      {
      }
      
      public function getViewComponent() : Object
      {
         return viewComponent;
      }
      
      public function handleNotification(param1:INotification) : void
      {
      }
      
      public function getMediatorName() : String
      {
         return mediatorName;
      }
      
      public function setViewComponent(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.viewComponent = param1;
         }
      }
   }
}

