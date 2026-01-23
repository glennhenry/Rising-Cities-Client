package org.puremvc.as3.patterns.observer
{
   import org.puremvc.as3.interfaces.IFacade;
   import org.puremvc.as3.interfaces.INotifier;
   import org.puremvc.as3.patterns.facade.Facade;
   
   public class Notifier implements INotifier
   {
      
      protected var facade:IFacade;
      
      public function Notifier()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            facade = Facade.getInstance();
            if(_loc2_)
            {
               addr0025:
               super();
            }
            return;
         }
         §§goto(addr0025);
      }
      
      public function sendNotification(param1:String, param2:Object = null, param3:String = null) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param2)))
         {
            facade.sendNotification(param1,param2,param3);
         }
      }
   }
}

