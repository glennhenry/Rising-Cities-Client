package org.puremvc.as3.core
{
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.interfaces.IObserver;
   import org.puremvc.as3.interfaces.IView;
   import org.puremvc.as3.patterns.observer.Observer;
   
   public class View implements IView
   {
      
      protected static var instance:IView;
      
      protected const SINGLETON_MSG:String = "View Singleton already constructed!";
      
      protected var observerMap:Array;
      
      protected var mediatorMap:Array;
      
      public function View()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               if(instance != null)
               {
                  if(_loc1_)
                  {
                     throw Error(SINGLETON_MSG);
                  }
               }
               else
               {
                  instance = this;
                  if(_loc1_)
                  {
                     mediatorMap = new Array();
                     if(_loc1_ || _loc2_)
                     {
                        observerMap = new Array();
                        if(_loc1_ || _loc2_)
                        {
                           addr009b:
                           initializeView();
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr009b);
                  }
               }
            }
         }
         addr00a2:
      }
      
      public static function getInstance() : IView
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
                  if(_loc1_ || _loc2_)
                  {
                     instance = new View();
                  }
               }
               addr0042:
               return instance;
            }
         }
         §§goto(addr0042);
      }
      
      public function removeObserver(param1:String, param2:Object) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:Array = observerMap[param1] as Array;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_.length)
            {
               §§goto(addr00bf);
            }
            §§push(Observer(_loc3_[_loc4_]).compareNotifyContext(param2));
            if(_loc5_ && Boolean(this))
            {
               break;
            }
            if(§§pop() == true)
            {
               if(!_loc5_)
               {
                  _loc3_.splice(_loc4_,1);
                  if(_loc6_ || Boolean(param1))
                  {
                     §§goto(addr00a8);
                  }
                  §§goto(addr00b7);
               }
            }
            else
            {
               _loc4_++;
               if(_loc6_)
               {
                  continue;
               }
            }
            §§goto(addr00a8);
         }
         §§pop();
         addr00bf:
         if(!_loc5_)
         {
            addr00a8:
            if(_loc3_.length == 0)
            {
               if(_loc6_)
               {
                  addr00b7:
                  §§push(delete observerMap[param1]);
                  break loop0;
               }
            }
         }
      }
      
      public function hasMediator(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(mediatorMap[param1] == null);
         if(_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function notifyObservers(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:IObserver = null;
         var _loc5_:* = NaN;
         if(_loc6_)
         {
            §§push(observerMap);
            if(_loc6_ || Boolean(this))
            {
               §§push(param1.getName());
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  if(§§pop()[§§pop()] != null)
                  {
                     addr0060:
                     _loc2_ = observerMap[param1.getName()] as Array;
                     _loc3_ = new Array();
                     addr005b:
                     addr0058:
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        _loc5_ = 0;
                     }
                     loop0:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc7_ && Boolean(_loc2_))
                        {
                           break;
                        }
                        if(§§pop() >= _loc2_.length)
                        {
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              §§push(0);
                              if(_loc7_ && Boolean(param1))
                              {
                                 break;
                              }
                              _loc5_ = §§pop();
                              if(_loc6_ || Boolean(_loc2_))
                              {
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    break loop0;
                                 }
                                 addr016e:
                              }
                           }
                        }
                        else
                        {
                           _loc4_ = _loc2_[_loc5_] as IObserver;
                           if(_loc6_)
                           {
                              _loc3_.push(_loc4_);
                              if(!_loc6_)
                              {
                                 continue;
                              }
                           }
                           §§push(_loc5_);
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              §§push(§§pop() + 1);
                              if(_loc6_ || Boolean(param1))
                              {
                                 addr00d6:
                                 §§push(§§pop());
                              }
                              _loc5_ = §§pop();
                              continue;
                           }
                           §§goto(addr00d6);
                        }
                     }
                     while(§§pop() < _loc3_.length)
                     {
                        _loc4_ = _loc3_[_loc5_] as IObserver;
                        _loc4_.notifyObserver(param1);
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§push(_loc5_);
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              §§push(§§pop() + 1);
                              if(_loc6_)
                              {
                                 addr016b:
                                 §§push(§§pop());
                              }
                              _loc5_ = §§pop();
                              §§goto(addr016e);
                           }
                           §§goto(addr016b);
                        }
                        §§goto(addr016e);
                     }
                  }
                  return;
               }
               §§goto(addr0060);
            }
            §§goto(addr005b);
         }
         §§goto(addr0058);
      }
      
      protected function initializeView() : void
      {
      }
      
      public function registerMediator(param1:IMediator) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:Observer = null;
         var _loc4_:* = NaN;
         if(_loc6_)
         {
            §§push(mediatorMap);
            if(!(_loc5_ && _loc2_))
            {
               §§push(param1.getMediatorName());
               if(!_loc5_)
               {
                  if(§§pop()[§§pop()] != null)
                  {
                     if(_loc6_ || Boolean(this))
                     {
                        return;
                     }
                  }
                  addr0088:
                  §§push(mediatorMap);
                  if(_loc6_ || Boolean(this))
                  {
                     addr0074:
                     §§pop()[param1.getMediatorName()] = param1;
                     addr0083:
                     §§push(param1.listNotificationInterests());
                  }
                  var _loc2_:Array = §§pop();
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     if(_loc2_.length > 0)
                     {
                        addr00a2:
                        _loc3_ = new Observer(param1.handleNotification,param1);
                        if(!_loc5_)
                        {
                           _loc4_ = 0;
                        }
                        loop0:
                        do
                        {
                           §§push(_loc4_);
                           while(§§pop() < _loc2_.length)
                           {
                              registerObserver(_loc2_[_loc4_],_loc3_);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§push(_loc4_);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() + 1);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       continue loop0;
                                    }
                                    continue;
                                 }
                              }
                              continue loop0;
                           }
                           break;
                        }
                        while(_loc4_ = §§pop(), !(_loc5_ && Boolean(_loc3_)));
                        
                     }
                     param1.onRegister();
                     return;
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0074);
            }
            §§goto(addr0088);
         }
         §§goto(addr0083);
      }
      
      public function removeMediator(param1:String) : IMediator
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:Array = null;
         var _loc4_:* = NaN;
         var _loc2_:IMediator = mediatorMap[param1] as IMediator;
         if(_loc6_ || Boolean(this))
         {
            if(_loc2_)
            {
               addr003e:
               _loc3_ = _loc2_.listNotificationInterests();
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  _loc4_ = 0;
               }
               loop0:
               while(true)
               {
                  §§push(_loc4_);
                  while(true)
                  {
                     if(§§pop() >= _loc3_.length)
                     {
                        if(_loc6_ || Boolean(param1))
                        {
                           break;
                        }
                     }
                     else
                     {
                        removeObserver(_loc3_[_loc4_],_loc2_);
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           continue;
                        }
                        §§push(§§pop() + 1);
                        if(_loc5_ && Boolean(_loc3_))
                        {
                           continue;
                        }
                        §§push(§§pop());
                        if(_loc5_)
                        {
                           continue;
                        }
                        _loc4_ = §§pop();
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           continue loop0;
                        }
                     }
                  }
                  break;
               }
               delete mediatorMap[param1];
               if(_loc6_ || Boolean(this))
               {
                  _loc2_.onRemove();
               }
            }
            return _loc2_;
         }
         §§goto(addr003e);
      }
      
      public function registerObserver(param1:String, param2:IObserver) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:Array = observerMap[param1];
         if(_loc4_ || Boolean(_loc3_))
         {
            if(_loc3_)
            {
               if(!_loc5_)
               {
                  addr0044:
                  _loc3_.push(param2);
                  if(_loc4_)
                  {
                  }
               }
            }
            else
            {
               observerMap[param1] = [param2];
            }
            return;
         }
         §§goto(addr0044);
      }
      
      public function retrieveMediator(param1:String) : IMediator
      {
         return mediatorMap[param1];
      }
   }
}

