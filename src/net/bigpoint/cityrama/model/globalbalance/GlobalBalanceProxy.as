package net.bigpoint.cityrama.model.globalbalance
{
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.needsSystem.GlobalModifiersVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class GlobalBalanceProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "GlobalBalanceProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "GlobalBalanceProxy";
      }
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _gameconfigProxy:GameConfigProxy;
      
      public function GlobalBalanceProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
      }
      
      public function get energyPercental() : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.playfieldProxy.energyProduced);
            if(!_loc2_)
            {
               §§push(§§pop() / this.playfieldProxy.energyConsumed);
               if(_loc3_ || Boolean(this))
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     _loc1_ = §§pop();
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           addr0062:
                           §§push(0);
                           if(_loc3_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    addr0072:
                                    §§push(0);
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       §§push(§§pop());
                                       if(_loc3_)
                                       {
                                          addr0087:
                                          _loc1_ = §§pop();
                                          if(!_loc3_)
                                          {
                                             §§goto(addr00bf);
                                          }
                                       }
                                       else
                                       {
                                          addr00ac:
                                          addr00ae:
                                          if(§§pop() > 1)
                                          {
                                             if(_loc3_ || Boolean(_loc1_))
                                             {
                                                addr00bf:
                                                §§goto(addr00c1);
                                             }
                                          }
                                       }
                                       §§goto(addr00c8);
                                    }
                                    addr00c1:
                                    §§goto(addr00c9);
                                 }
                                 §§goto(addr00c8);
                              }
                              else
                              {
                                 §§push(_loc1_);
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00ac);
                                 }
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0062);
            }
            addr00c9:
            §§push(1);
            if(!_loc2_)
            {
               _loc1_ = §§pop();
               addr00c8:
               return _loc1_;
            }
         }
         §§goto(addr0072);
      }
      
      public function get happinessPercental() : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         if(_loc3_ || _loc2_)
         {
            §§push(this.playfieldProxy.happynessProduced);
            if(_loc3_)
            {
               §§push(§§pop() / this.playfieldProxy.happynessConsumed);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     addr004f:
                     _loc1_ = §§pop();
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           §§push(0);
                           if(_loc3_ || _loc2_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr0086:
                                    §§push(0);
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       §§push(§§pop());
                                       if(!_loc2_)
                                       {
                                          _loc1_ = §§pop();
                                          if(_loc2_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr00bf:
                                          addr00c1:
                                          if(§§pop() > 1)
                                          {
                                             if(_loc3_ || Boolean(_loc1_))
                                             {
                                                §§goto(addr00d4);
                                             }
                                          }
                                       }
                                       §§goto(addr00db);
                                    }
                                    addr00d4:
                                    §§goto(addr00dc);
                                 }
                                 §§goto(addr00db);
                              }
                              else
                              {
                                 §§push(_loc1_);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr00bf);
                                 }
                              }
                              addr00dc:
                              §§push(1);
                              if(_loc3_)
                              {
                                 addr00da:
                                 _loc1_ = §§pop();
                                 addr00db:
                                 return _loc1_;
                              }
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00da);
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr00da);
               }
               §§goto(addr004f);
            }
            §§goto(addr00bf);
         }
         §§goto(addr0086);
      }
      
      public function get energyOutputModifier() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.energyPercental);
            if(!_loc1_)
            {
               §§push(0.25);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop() <= §§pop())
                  {
                     if(!_loc1_)
                     {
                        §§push(0.25);
                        if(_loc2_ || Boolean(this))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr00d8:
                        §§push(0.5);
                        if(!(_loc2_ || _loc2_))
                        {
                           addr00fe:
                           §§push(0.5);
                           if(!_loc1_)
                           {
                              addr0105:
                              §§push(§§pop() > §§pop());
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr0113:
                                 var _temp_7:* = §§pop();
                                 addr0114:
                                 §§push(_temp_7);
                                 if(_temp_7)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       addr0125:
                                       §§pop();
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          addr0133:
                                          §§push(this.energyPercental);
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr0144:
                                             §§push(0.75);
                                             if(_loc2_)
                                             {
                                                addr014c:
                                                addr014b:
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      §§push(0.75);
                                                      if(!_loc1_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr0180:
                                                      addr0182:
                                                      if(§§pop() > 0.75)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            addr018b:
                                                            §§push(1);
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr019b:
                                                            return 0;
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr019b);
                                                   }
                                                   §§goto(addr018b);
                                                }
                                                else
                                                {
                                                   addr017c:
                                                   §§push(this.energyPercental);
                                                }
                                                §§goto(addr0180);
                                             }
                                             §§goto(addr0182);
                                          }
                                          §§goto(addr0180);
                                       }
                                       §§goto(addr017c);
                                    }
                                 }
                                 §§goto(addr014c);
                              }
                              §§goto(addr0125);
                           }
                           §§goto(addr014b);
                        }
                     }
                     return §§pop();
                  }
                  §§push(this.energyPercental);
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(0.25);
                     if(!_loc1_)
                     {
                        §§push(§§pop() > §§pop());
                        if(!(_loc1_ && Boolean(this)))
                        {
                           var _temp_15:* = §§pop();
                           §§push(_temp_15);
                           §§push(_temp_15);
                           if(!_loc1_)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§pop();
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(this.energyPercental);
                                       if(_loc2_)
                                       {
                                          addr00b0:
                                          §§push(0.5);
                                          if(_loc2_)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr00cf:
                                                if(§§pop())
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      §§goto(addr00d8);
                                                   }
                                                   else
                                                   {
                                                      addr00f5:
                                                      §§push(this.energyPercental);
                                                      if(!_loc1_)
                                                      {
                                                         §§goto(addr00fe);
                                                      }
                                                   }
                                                   §§goto(addr0180);
                                                }
                                                §§goto(addr00f5);
                                             }
                                             §§goto(addr0113);
                                          }
                                          §§goto(addr0105);
                                       }
                                       §§goto(addr0144);
                                    }
                                    §§goto(addr019b);
                                 }
                              }
                              §§goto(addr00cf);
                           }
                           §§goto(addr0114);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr0182);
                  }
                  §§goto(addr00b0);
                  §§goto(addr0105);
               }
               §§goto(addr0182);
            }
            §§goto(addr0180);
         }
         §§goto(addr0133);
      }
      
      public function get happinessOutputModifier() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.happinessPercental);
            if(_loc1_)
            {
               §§push(0.25);
               if(!_loc2_)
               {
                  if(§§pop() <= §§pop())
                  {
                     if(_loc1_)
                     {
                        §§push(0.25);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr0045);
                        }
                        else
                        {
                           addr0197:
                           addr0199:
                           if(§§pop() > 0.75)
                           {
                              if(_loc1_)
                              {
                                 §§push(1);
                                 if(_loc1_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr01aa:
                                 return 0;
                              }
                              return §§pop();
                           }
                        }
                     }
                     §§goto(addr01aa);
                  }
                  else
                  {
                     §§goto(addr0053);
                  }
               }
               §§goto(addr0199);
            }
            addr0045:
            return §§pop();
         }
         addr0053:
         §§push(this.happinessPercental);
         if(_loc1_)
         {
            §§push(0.25);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() > §§pop());
               if(!_loc2_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(§§pop())
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §§pop();
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§push(this.happinessPercental);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(0.5);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§push(§§pop() <= §§pop());
                                    if(_loc1_)
                                    {
                                       §§goto(addr00ce);
                                    }
                                    §§goto(addr0134);
                                 }
                                 §§goto(addr0114);
                              }
                              §§goto(addr0105);
                           }
                           §§goto(addr0193);
                        }
                        §§goto(addr0122);
                     }
                     addr00ce:
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(0.5);
                           if(!_loc2_)
                           {
                              return §§pop();
                           }
                           §§goto(addr0197);
                        }
                        else
                        {
                           §§goto(addr013a);
                        }
                        §§goto(addr0199);
                     }
                     else
                     {
                        §§push(this.happinessPercental);
                        if(_loc1_ || _loc2_)
                        {
                           addr0105:
                           §§push(0.5);
                           if(_loc1_ || _loc1_)
                           {
                              addr0114:
                              §§push(§§pop() > §§pop());
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0122:
                                 var _temp_18:* = §§pop();
                                 addr0123:
                                 §§push(_temp_18);
                                 if(_temp_18)
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr0134:
                                       §§pop();
                                       if(_loc1_)
                                       {
                                          addr013a:
                                          §§push(this.happinessPercental);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(0.75);
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                addr015b:
                                                addr015a:
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      §§push(0.75);
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         §§goto(addr0185);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0197);
                                                      }
                                                   }
                                                   §§goto(addr01aa);
                                                }
                                                else
                                                {
                                                   addr0193:
                                                   §§push(this.happinessPercental);
                                                }
                                                §§goto(addr0197);
                                             }
                                             §§goto(addr0199);
                                          }
                                          §§goto(addr0185);
                                       }
                                       §§goto(addr0193);
                                    }
                                 }
                                 §§goto(addr015b);
                              }
                              §§goto(addr0134);
                           }
                           §§goto(addr015a);
                        }
                     }
                     §§goto(addr0185);
                  }
                  §§goto(addr0123);
               }
               §§goto(addr015b);
            }
            §§goto(addr015a);
         }
         addr0185:
         return §§pop();
      }
      
      override public function onRemove() : void
      {
      }
      
      private function get playfieldProxy() : PlayfieldProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._playfieldProxy);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
                  }
               }
               addr004d:
               return this._playfieldProxy;
            }
         }
         §§goto(addr004d);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._gameconfigProxy);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr003b:
                     this._gameconfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._gameconfigProxy;
            }
         }
         §§goto(addr003b);
      }
      
      public function get eventOutPutModifier() : Number
      {
         return 0;
      }
      
      public function get allGlobalModifiers() : GlobalModifiersVo
      {
         return new GlobalModifiersVo(this.energyOutputModifier,this.happinessOutputModifier,this.eventOutPutModifier);
      }
   }
}

