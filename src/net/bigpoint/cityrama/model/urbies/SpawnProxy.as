package net.bigpoint.cityrama.model.urbies
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class SpawnProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "SpawnProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "SpawnProxy";
      }
      
      private var _userLevelProxy:UserLevelProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _enabled:Boolean = true;
      
      public function SpawnProxy(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super(NAME,param1);
            if(!(_loc2_ && Boolean(this)))
            {
               this._resourceProxy = PlayerResourceProxy(facade.retrieveProxy(PlayerResourceProxy.NAME));
               if(!_loc2_)
               {
                  addr0051:
                  this._userLevelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
               }
               return;
            }
         }
         §§goto(addr0051);
      }
      
      public function get maxAllowed() : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:int = 0;
         var _loc2_:* = 0;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(!this._enabled)
            {
               if(_loc4_ || Boolean(this))
               {
                  §§push(0);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     return §§pop();
                  }
                  §§goto(addr02f2);
               }
               else
               {
                  addr029c:
                  §§push(2);
                  if(_loc3_)
                  {
                     §§goto(addr02f5);
                  }
               }
            }
            else
            {
               addr005c:
               §§push(this._userLevelProxy);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                           _loc2_ = §§pop();
                           if(_loc4_ || Boolean(this))
                           {
                              §§push(this._userLevelProxy);
                              if(_loc4_ || Boolean(this))
                              {
                                 §§push(_loc1_);
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    §§push(§§pop().getConfigByLevelId(§§pop()));
                                    if(!_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr00c1);
                                          }
                                          §§goto(addr01d1);
                                       }
                                       §§goto(addr00d9);
                                    }
                                    addr00c1:
                                    §§goto(addr00bd);
                                 }
                                 addr00bd:
                                 §§goto(addr00bc);
                              }
                              addr00bc:
                              §§push(int(this._userLevelProxy.getConfigByLevelId(_loc1_).level));
                              if(_loc4_ || _loc3_)
                              {
                                 _loc2_ = §§pop();
                                 if(!_loc3_)
                                 {
                                    addr00d9:
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       §§push(30);
                                       if(!_loc3_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(20);
                                                if(_loc4_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr0201);
                                             }
                                             else
                                             {
                                                §§goto(addr029c);
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr0116:
                                                §§push(25);
                                                if(!_loc3_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §§push(15);
                                                         if(_loc4_ || Boolean(_loc1_))
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0208);
                                                      }
                                                      §§goto(addr02f5);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_)
                                                      {
                                                         addr0155:
                                                         §§push(20);
                                                         if(!(_loc3_ && Boolean(_loc1_)))
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!(_loc3_ && Boolean(_loc1_)))
                                                               {
                                                                  §§push(12);
                                                                  if(!_loc3_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr01c3);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr0267);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc4_ || Boolean(_loc1_))
                                                               {
                                                                  §§push(15);
                                                                  if(!(_loc3_ && Boolean(_loc2_)))
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(!(_loc3_ && Boolean(this)))
                                                                        {
                                                                           §§push(8);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr01c3:
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr02ce);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr0267);
                                                                        }
                                                                        §§goto(addr02d0);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01d1:
                                                                        §§push(_loc2_);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(10);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr01df:
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    §§push(5);
                                                                                    if(_loc4_ || Boolean(_loc1_))
                                                                                    {
                                                                                       addr0201:
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr02a3);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr02e2);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr0208);
                                                                              }
                                                                              §§goto(addr02f5);
                                                                           }
                                                                           §§goto(addr0292);
                                                                        }
                                                                        §§goto(addr0216);
                                                                     }
                                                                  }
                                                                  §§goto(addr01df);
                                                               }
                                                            }
                                                            §§goto(addr028b);
                                                         }
                                                         §§goto(addr0292);
                                                      }
                                                   }
                                                   §§goto(addr02f2);
                                                }
                                                §§goto(addr0292);
                                             }
                                          }
                                          §§goto(addr02a3);
                                       }
                                       §§goto(addr0226);
                                    }
                                    §§goto(addr0155);
                                 }
                                 §§goto(addr0247);
                              }
                              §§goto(addr02a3);
                           }
                           addr0208:
                           §§push(_loc2_);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0216:
                              §§push(8);
                              if(_loc4_ || Boolean(_loc1_))
                              {
                                 addr0226:
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(4);
                                       if(_loc4_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr029c);
                                    }
                                    §§goto(addr02a3);
                                 }
                                 else
                                 {
                                    addr0247:
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       §§push(6);
                                       if(_loc4_)
                                       {
                                          addr0256:
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!(_loc3_ && Boolean(_loc1_)))
                                             {
                                                addr0267:
                                                §§push(3);
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   §§goto(addr0277);
                                                }
                                                else
                                                {
                                                   addr028b:
                                                   §§push(4);
                                                   if(!_loc3_)
                                                   {
                                                      addr0292:
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr029c);
                                                         }
                                                         else
                                                         {
                                                            addr02f3:
                                                            §§push(0);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc4_ || Boolean(_loc2_))
                                                         {
                                                            addr02d0:
                                                            addr02ce:
                                                            if(§§pop() >= 2)
                                                            {
                                                               if(_loc4_ || Boolean(_loc1_))
                                                               {
                                                                  addr02e2:
                                                                  §§push(1);
                                                                  if(_loc4_ || Boolean(_loc2_))
                                                                  {
                                                                     addr02f2:
                                                                     return §§pop();
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr02f3);
                                                               }
                                                               §§goto(addr02f5);
                                                            }
                                                            §§goto(addr02f3);
                                                         }
                                                      }
                                                      §§goto(addr02f5);
                                                   }
                                                   §§goto(addr02d0);
                                                }
                                             }
                                             §§goto(addr02e2);
                                          }
                                          else
                                          {
                                             §§push(_loc2_);
                                             if(!_loc3_)
                                             {
                                                §§goto(addr028b);
                                             }
                                          }
                                          §§goto(addr02f5);
                                       }
                                       §§goto(addr02d0);
                                    }
                                    §§goto(addr02ce);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr0256);
                           }
                           addr0277:
                           return §§pop();
                        }
                        §§goto(addr0116);
                     }
                     §§goto(addr00d9);
                  }
                  §§goto(addr02f3);
               }
               §§goto(addr00bc);
            }
            addr02a3:
            return §§pop();
         }
         §§goto(addr005c);
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._enabled = param1;
            if(!(_loc3_ && param1))
            {
               if(!this._enabled)
               {
                  if(!_loc3_)
                  {
                     addr0049:
                     facade.sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
                  }
               }
               return;
            }
         }
         §§goto(addr0049);
      }
   }
}

