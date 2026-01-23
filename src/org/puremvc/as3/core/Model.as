package org.puremvc.as3.core
{
   import org.puremvc.as3.interfaces.IModel;
   import org.puremvc.as3.interfaces.IProxy;
   
   public class Model implements IModel
   {
      
      protected static var instance:IModel;
      
      protected const SINGLETON_MSG:String = "Model Singleton already constructed!";
      
      protected var proxyMap:Array;
      
      public function Model()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               §§goto(addr001e);
            }
            §§goto(addr0064);
         }
         addr001e:
         if(instance != null)
         {
            if(!(_loc1_ && _loc2_))
            {
               throw Error(SINGLETON_MSG);
            }
         }
         instance = this;
         if(!_loc1_)
         {
            addr0064:
            proxyMap = new Array();
            if(_loc2_)
            {
               initializeModel();
            }
         }
      }
      
      public static function getInstance() : IModel
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(instance);
            if(!(_loc2_ && Model))
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     instance = new Model();
                  }
               }
               addr0042:
               return instance;
            }
         }
         §§goto(addr0042);
      }
      
      protected function initializeModel() : void
      {
      }
      
      public function removeProxy(param1:String) : IProxy
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:IProxy = proxyMap[param1] as IProxy;
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  proxyMap[param1] = null;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0057:
                     _loc2_.onRemove();
                  }
                  §§goto(addr005d);
               }
               §§goto(addr0057);
            }
            addr005d:
            return _loc2_;
         }
         §§goto(addr0057);
      }
      
      public function hasProxy(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(proxyMap[param1] == null);
         if(_loc2_ || Boolean(param1))
         {
            return !§§pop();
         }
      }
      
      public function retrieveProxy(param1:String) : IProxy
      {
         return proxyMap[param1];
      }
      
      public function registerProxy(param1:IProxy) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            proxyMap[param1.getProxyName()] = param1;
            if(!(_loc3_ && _loc2_))
            {
               addr0032:
               param1.onRegister();
            }
            return;
         }
         §§goto(addr0032);
      }
   }
}

