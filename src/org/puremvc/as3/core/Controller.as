package org.puremvc.as3.core
{
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.IController;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.interfaces.IView;
   import org.puremvc.as3.patterns.observer.Observer;
   
   public class Controller implements IController
   {
      
      protected static var instance:IController;
      
      protected var commandMap:Array;
      
      protected var view:IView;
      
      protected const SINGLETON_MSG:String = "Controller Singleton already constructed!";
      
      public function Controller()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               if(instance != null)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     throw Error(SINGLETON_MSG);
                     addr0045:
                  }
               }
               else
               {
                  addr0068:
                  instance = this;
                  if(_loc2_)
                  {
                     commandMap = new Array();
                     if(_loc2_)
                     {
                        addr0084:
                        initializeController();
                     }
                     return;
                  }
               }
               §§goto(addr0084);
            }
            §§goto(addr0068);
         }
         §§goto(addr0045);
      }
      
      public static function getInstance() : IController
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(instance);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     addr0027:
                     instance = new Controller();
                  }
               }
               return instance;
            }
         }
         §§goto(addr0027);
      }
      
      public function removeCommand(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(hasCommand(param1))
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr003c:
                  view.removeObserver(param1,this);
                  if(!_loc3_)
                  {
                     commandMap[param1] = null;
                  }
               }
            }
            return;
         }
         §§goto(addr003c);
      }
      
      public function registerCommand(param1:String, param2:Class) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(commandMap);
            if(_loc4_ || _loc3_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  if(§§pop()[§§pop()] == null)
                  {
                     if(!(_loc3_ && Boolean(param2)))
                     {
                        §§goto(addr0063);
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr008a);
            }
            §§goto(addr0089);
         }
         addr0063:
         view.registerObserver(param1,new Observer(executeCommand,this));
         if(_loc4_ || Boolean(param1))
         {
            addr008a:
            commandMap[param1] = param2;
            addr0086:
            addr0089:
         }
      }
      
      protected function initializeController() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            view = View.getInstance();
         }
      }
      
      public function hasCommand(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(commandMap[param1] == null);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function executeCommand(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Class = commandMap[param1.getName()];
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ == null)
            {
               if(!_loc5_)
               {
                  §§goto(addr0048);
               }
            }
            var _loc3_:ICommand = new _loc2_();
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               _loc3_.execute(param1);
            }
            return;
         }
         addr0048:
      }
   }
}

