package org.puremvc.as3.patterns.facade
{
   import org.puremvc.as3.core.Controller;
   import org.puremvc.as3.core.Model;
   import org.puremvc.as3.core.View;
   import org.puremvc.as3.interfaces.IController;
   import org.puremvc.as3.interfaces.IFacade;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.IModel;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.interfaces.IView;
   import org.puremvc.as3.patterns.observer.Notification;
   
   public class Facade implements IFacade
   {
      
      protected static var instance:IFacade;
      
      protected const SINGLETON_MSG:String = "Facade Singleton already constructed!";
      
      protected var controller:IController;
      
      protected var view:IView;
      
      protected var model:IModel;
      
      public function Facade()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               addr0030:
               if(instance != null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     throw Error(SINGLETON_MSG);
                  }
               }
               instance = this;
               if(!(_loc1_ && _loc2_))
               {
                  initializeFacade();
               }
            }
            return;
         }
         §§goto(addr0030);
      }
      
      public static function getInstance() : IFacade
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(instance);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     instance = new Facade();
                  }
               }
               addr0030:
               return instance;
            }
         }
         §§goto(addr0030);
      }
      
      public function removeProxy(param1:String) : IProxy
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:IProxy = null;
         if(_loc3_ || Boolean(this))
         {
            §§push(model);
            if(_loc3_ || Boolean(_loc2_))
            {
               if(§§pop() != null)
               {
                  addr004b:
                  _loc2_ = model.removeProxy(param1);
                  addr0048:
               }
               return _loc2_;
            }
            §§goto(addr004b);
         }
         §§goto(addr0048);
      }
      
      public function registerProxy(param1:IProxy) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            model.registerProxy(param1);
         }
      }
      
      protected function initializeController() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            if(controller != null)
            {
               if(_loc2_ || Boolean(this))
               {
                  return;
               }
            }
            controller = Controller.getInstance();
         }
      }
      
      protected function initializeFacade() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            initializeModel();
            if(_loc2_)
            {
               initializeController();
               if(!(_loc1_ && Boolean(this)))
               {
                  addr0036:
                  initializeView();
               }
            }
            return;
         }
         §§goto(addr0036);
      }
      
      public function retrieveProxy(param1:String) : IProxy
      {
         return model.retrieveProxy(param1);
      }
      
      public function sendNotification(param1:String, param2:Object = null, param3:String = null) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(param2)))
         {
            notifyObservers(new Notification(param1,param2,param3));
         }
      }
      
      public function notifyObservers(param1:INotification) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            §§push(view);
            if(_loc2_ || _loc3_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0050:
                     view.notifyObservers(param1);
                  }
               }
               §§goto(addr0056);
            }
            §§goto(addr0050);
         }
         addr0056:
      }
      
      protected function initializeView() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(view != null)
            {
               if(_loc1_)
               {
                  return;
               }
            }
         }
         view = View.getInstance();
      }
      
      public function retrieveMediator(param1:String) : IMediator
      {
         return view.retrieveMediator(param1) as IMediator;
      }
      
      public function removeMediator(param1:String) : IMediator
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:IMediator = null;
         if(_loc3_)
         {
            §§push(view);
            if(!_loc4_)
            {
               if(§§pop() != null)
               {
                  addr002d:
                  _loc2_ = view.removeMediator(param1);
                  addr002a:
               }
               return _loc2_;
            }
            §§goto(addr002d);
         }
         §§goto(addr002a);
      }
      
      public function hasCommand(param1:String) : Boolean
      {
         return controller.hasCommand(param1);
      }
      
      public function removeCommand(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            controller.removeCommand(param1);
         }
      }
      
      public function registerCommand(param1:String, param2:Class) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            controller.registerCommand(param1,param2);
         }
      }
      
      public function hasMediator(param1:String) : Boolean
      {
         return view.hasMediator(param1);
      }
      
      public function registerMediator(param1:IMediator) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(view);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop() != null)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0048:
                     view.registerMediator(param1);
                     addr0045:
                  }
               }
               return;
            }
            §§goto(addr0048);
         }
         §§goto(addr0045);
      }
      
      protected function initializeModel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(model != null)
            {
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
            else
            {
               addr0042:
               model = Model.getInstance();
            }
            return;
         }
         §§goto(addr0042);
      }
      
      public function hasProxy(param1:String) : Boolean
      {
         return model.hasProxy(param1);
      }
   }
}

