package net.bigpoint.cityrama.controller.cityTreasury
{
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryCurrencyTabMediator;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryGoodsTabMediator;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryPackTabMediator;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasurySpecialTabMediator;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CityTreasuryTabChangedCommand extends SimpleCommand implements ICommand
   {
      
      public function CityTreasuryTabChangedCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc4_:CityTreasuryLayer = null;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:CityTreasuryCurrencyTabMediator = null;
         var _loc8_:CityTreasuryGoodsTabMediator = null;
         var _loc9_:CityTreasurySpecialTabMediator = null;
         var _loc10_:CityTreasuryPackTabMediator = null;
         var _loc2_:Object = param1.getBody() as Object;
         var _loc3_:CityTreasuryTabProxy = facade.retrieveProxy(CityTreasuryTabProxy.NAME) as CityTreasuryTabProxy;
         if(!_loc13_)
         {
            if(_loc2_.container)
            {
               addr0064:
               _loc4_ = _loc2_.container as CityTreasuryLayer;
               if(_loc12_ || Boolean(_loc3_))
               {
                  §§push(int(_loc2_.category));
                  if(!_loc13_)
                  {
                     _loc5_ = §§pop();
                     if(_loc12_ || Boolean(param1))
                     {
                        addr00a2:
                        _loc6_ = int(_loc2_.pack);
                        addr009c:
                     }
                     _loc7_ = facade.retrieveMediator(CityTreasuryCurrencyTabMediator.NAME) as CityTreasuryCurrencyTabMediator;
                     _loc8_ = facade.retrieveMediator(CityTreasuryGoodsTabMediator.NAME) as CityTreasuryGoodsTabMediator;
                     _loc9_ = facade.retrieveMediator(CityTreasurySpecialTabMediator.NAME) as CityTreasurySpecialTabMediator;
                     _loc10_ = facade.retrieveMediator(CityTreasuryPackTabMediator.NAME) as CityTreasuryPackTabMediator;
                     if(!_loc13_)
                     {
                        if(_loc4_)
                        {
                           addr0295:
                           §§push(_loc3_.currentTabIndex);
                           if(!(_loc13_ && Boolean(_loc3_)))
                           {
                              var _loc11_:* = §§pop();
                              if(_loc12_ || Boolean(param1))
                              {
                                 §§push(CityTreasuryTabProxy.CURRENCY_TAB_INDEX);
                                 if(_loc12_)
                                 {
                                    §§push(_loc11_);
                                    if(!(_loc13_ && Boolean(_loc2_)))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc13_)
                                          {
                                             §§push(0);
                                             if(_loc13_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr0317:
                                             §§push(1);
                                             if(_loc13_)
                                             {
                                                addr0337:
                                                §§push(_loc11_);
                                                if(!_loc13_)
                                                {
                                                   addr033f:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         addr0349:
                                                         §§push(2);
                                                         if(!(_loc12_ || Boolean(this)))
                                                         {
                                                            addr037f:
                                                            addr0381:
                                                            if(§§pop() === _loc11_)
                                                            {
                                                               addr0385:
                                                               §§push(3);
                                                               if(_loc13_ && Boolean(this))
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(4);
                                                            }
                                                         }
                                                         addr03a7:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               this.removeAllOtherMediators(CityTreasuryCurrencyTabMediator.NAME);
                                                               if(!_loc13_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc7_ = new CityTreasuryCurrencyTabMediator(_loc4_);
                                                                     if(_loc12_ || Boolean(this))
                                                                     {
                                                                        facade.registerMediator(_loc7_);
                                                                     }
                                                                  }
                                                                  _loc7_.init(_loc5_,_loc6_);
                                                                  if(_loc12_ || Boolean(this))
                                                                  {
                                                                  }
                                                                  break;
                                                               }
                                                               addr0246:
                                                               if(!_loc9_)
                                                               {
                                                                  if(!(_loc12_ || Boolean(this)))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr025a:
                                                                  _loc9_ = new CityTreasurySpecialTabMediator(_loc4_);
                                                                  if(!_loc13_)
                                                                  {
                                                                     facade.registerMediator(_loc9_);
                                                                  }
                                                               }
                                                               _loc9_.init(_loc5_);
                                                               if(_loc12_ || Boolean(_loc3_))
                                                               {
                                                               }
                                                               break;
                                                            case 1:
                                                               this.removeAllOtherMediators(CityTreasuryGoodsTabMediator.NAME);
                                                               if(_loc12_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(_loc13_ && Boolean(_loc2_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc8_ = new CityTreasuryGoodsTabMediator(_loc4_);
                                                                     if(_loc12_ || Boolean(param1))
                                                                     {
                                                                        facade.registerMediator(_loc8_);
                                                                     }
                                                                  }
                                                                  _loc8_.init(_loc5_,_loc6_);
                                                                  if(_loc13_ && Boolean(param1))
                                                                  {
                                                                  }
                                                               }
                                                               break;
                                                            case 2:
                                                               this.removeAllOtherMediators(CityTreasuryPackTabMediator.NAME);
                                                               if(!(_loc13_ && Boolean(_loc2_)))
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(_loc13_ && Boolean(_loc3_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc10_ = new CityTreasuryPackTabMediator(_loc4_);
                                                                     if(_loc12_ || Boolean(this))
                                                                     {
                                                                        facade.registerMediator(_loc10_);
                                                                     }
                                                                  }
                                                                  _loc10_.init(_loc5_);
                                                                  if(_loc13_)
                                                                  {
                                                                  }
                                                               }
                                                               break;
                                                            case 3:
                                                               this.removeAllOtherMediators(CityTreasurySpecialTabMediator.NAME);
                                                               if(!_loc13_)
                                                               {
                                                                  §§goto(addr0246);
                                                               }
                                                               §§goto(addr025a);
                                                         }
                                                         addr03bb:
                                                         return;
                                                         addr03a5:
                                                      }
                                                      §§goto(addr0385);
                                                   }
                                                   else
                                                   {
                                                      §§push(CityTreasuryTabProxy.SPECIALS_TAB_INDEX);
                                                      if(_loc12_ || Boolean(_loc3_))
                                                      {
                                                         §§goto(addr037f);
                                                      }
                                                   }
                                                   §§goto(addr03a5);
                                                }
                                                §§goto(addr0381);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(CityTreasuryTabProxy.GOODS_TAB_INDEX);
                                          if(!(_loc13_ && Boolean(_loc2_)))
                                          {
                                             §§push(_loc11_);
                                             if(!_loc13_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc12_ || Boolean(this))
                                                   {
                                                      §§goto(addr0317);
                                                   }
                                                   §§goto(addr0385);
                                                }
                                                else
                                                {
                                                   §§push(CityTreasuryTabProxy.PACKS_TAB_INDEX);
                                                   if(!(_loc13_ && Boolean(_loc2_)))
                                                   {
                                                      §§goto(addr0337);
                                                   }
                                                }
                                                §§goto(addr03a5);
                                             }
                                             §§goto(addr033f);
                                          }
                                       }
                                       §§goto(addr03a5);
                                    }
                                    §§goto(addr033f);
                                 }
                                 §§goto(addr03a5);
                              }
                              §§goto(addr0349);
                           }
                           §§goto(addr03a7);
                        }
                        §§goto(addr03bb);
                     }
                     §§goto(addr0295);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr009c);
            }
            §§goto(addr03bb);
         }
         §§goto(addr0064);
      }
      
      private function removeAllOtherMediators(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            §§push(param1);
            if(!(_loc2_ && Boolean(param1)))
            {
               §§push(CityTreasuryCurrencyTabMediator.NAME);
               if(!_loc2_)
               {
                  if(§§pop() != §§pop())
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        facade.removeMediator(CityTreasuryCurrencyTabMediator.NAME);
                        if(!_loc2_)
                        {
                           addr0063:
                           §§push(param1);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(CityTreasuryGoodsTabMediator.NAME);
                              if(!_loc2_)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       facade.removeMediator(CityTreasuryGoodsTabMediator.NAME);
                                       if(_loc3_)
                                       {
                                          addr0094:
                                          §§push(param1);
                                          if(!_loc2_)
                                          {
                                             addr009a:
                                             §§push(CityTreasurySpecialTabMediator.NAME);
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr00c0:
                                                      facade.removeMediator(CityTreasurySpecialTabMediator.NAME);
                                                      if(_loc3_)
                                                      {
                                                         addr00d0:
                                                         addr00d6:
                                                         addr00d1:
                                                         if(param1 != CityTreasuryPackTabMediator.NAME)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               addr00df:
                                                               facade.removeMediator(CityTreasuryPackTabMediator.NAME);
                                                            }
                                                         }
                                                         §§goto(addr00ea);
                                                      }
                                                      §§goto(addr00df);
                                                   }
                                                   addr00ea:
                                                   return;
                                                }
                                                §§goto(addr00d0);
                                             }
                                             §§goto(addr00d6);
                                          }
                                          §§goto(addr00d1);
                                       }
                                       §§goto(addr00d0);
                                    }
                                    §§goto(addr00df);
                                 }
                                 §§goto(addr0094);
                              }
                              §§goto(addr00d6);
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00c0);
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr0063);
               }
               §§goto(addr00d6);
            }
            §§goto(addr009a);
         }
         §§goto(addr00df);
      }
   }
}

