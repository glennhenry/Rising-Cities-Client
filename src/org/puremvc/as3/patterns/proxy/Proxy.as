package org.puremvc.as3.patterns.proxy
{
   import org.puremvc.as3.interfaces.INotifier;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.observer.Notifier;
   
   public class Proxy extends Notifier implements IProxy, INotifier
   {
      
      public static var NAME:String = "Proxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "Proxy";
      }
      
      protected var data:Object;
      
      protected var proxyName:String;
      
      public function Proxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            super();
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(this);
               if(!_loc3_)
               {
                  §§push(param1);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(§§pop() != null)
                     {
                        addr005a:
                        §§push(param1);
                        if(!(_loc3_ && Boolean(param2)))
                        {
                           §§push(§§pop());
                           if(_loc3_ && Boolean(param2))
                           {
                           }
                        }
                        else
                        {
                           addr008d:
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        §§push(NAME);
                        if(!_loc3_)
                        {
                           §§goto(addr008d);
                        }
                     }
                  }
                  §§pop().proxyName = §§pop();
                  if(_loc4_)
                  {
                     §§goto(addr0098);
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr005a);
            }
         }
         addr0098:
         if(param2 != null)
         {
            if(_loc4_ || _loc3_)
            {
               addr00ac:
               setData(param2);
            }
         }
      }
      
      public function getData() : Object
      {
         return data;
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.data = param1;
         }
      }
      
      public function onRegister() : void
      {
      }
      
      public function getProxyName() : String
      {
         return proxyName;
      }
      
      public function onRemove() : void
      {
      }
   }
}

