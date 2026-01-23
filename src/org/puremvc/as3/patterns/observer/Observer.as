package org.puremvc.as3.patterns.observer
{
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.interfaces.IObserver;
   
   public class Observer implements IObserver
   {
      
      private var notify:Function;
      
      private var context:Object;
      
      public function Observer(param1:Function, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            super();
            if(_loc4_)
            {
               setNotifyMethod(param1);
               if(!(_loc3_ && Boolean(this)))
               {
                  setNotifyContext(param2);
               }
            }
         }
      }
      
      private function getNotifyMethod() : Function
      {
         return notify;
      }
      
      public function compareNotifyContext(param1:Object) : Boolean
      {
         return param1 === this.context;
      }
      
      public function setNotifyContext(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            context = param1;
         }
      }
      
      private function getNotifyContext() : Object
      {
         return context;
      }
      
      public function setNotifyMethod(param1:Function) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            notify = param1;
         }
      }
      
      public function notifyObserver(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.getNotifyMethod().apply(this.getNotifyContext(),[param1]);
         }
      }
   }
}

