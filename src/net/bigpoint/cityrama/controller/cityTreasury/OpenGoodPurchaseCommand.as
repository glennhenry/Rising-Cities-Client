package net.bigpoint.cityrama.controller.cityTreasury
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryMediator;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenGoodPurchaseCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenGoodPurchaseCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc7_:GameConfigProxy = null;
         var _loc8_:Number = NaN;
         var _loc9_:ConfigGoodDTO = null;
         var _loc10_:* = null;
         var _loc11_:CityTreasuryMediator = null;
         var _loc12_:PopupSettingsVo = null;
         var _loc2_:Object = param1.getBody();
         var _loc3_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(!(_loc15_ && Boolean(_loc2_)))
         {
            if(_loc2_.goodConfigId)
            {
               if(!_loc15_)
               {
                  addr0070:
                  _loc7_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  if(_loc14_)
                  {
                     _loc8_ = Number(_loc2_.goodConfigId);
                  }
                  _loc9_ = _loc7_.goods[_loc8_];
                  if(_loc9_)
                  {
                     if(_loc14_)
                     {
                        §§push(_loc9_.isTaggedGoodByTagName(ServerTagConstants.GOOD_DEXTRO));
                        if(_loc14_ || Boolean(this))
                        {
                           if(§§pop())
                           {
                              if(_loc14_ || Boolean(param1))
                              {
                                 addr00d4:
                                 §§push(_loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.GOODS_TAB_INDEX,ServerTagConstants.GOOD_DEXTRO));
                                 if(!(_loc15_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop());
                                    if(!_loc15_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc14_ || Boolean(_loc3_))
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr02a2:
                                       _loc4_ = §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr0255:
                                    _loc5_ = §§pop();
                                    addr0254:
                                    if(_loc15_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 addr0130:
                                 §§push(_loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.GOODS_TAB_INDEX,ServerTagConstants.GOOD_KEY));
                                 if(_loc14_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc15_)
                                    {
                                       addr014d:
                                       _loc4_ = §§pop();
                                       if(_loc15_)
                                       {
                                          addr01e4:
                                          §§push(_loc3_.getFirstInternalPackIndexByCategoryAndContent(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN,ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN));
                                          if(_loc14_)
                                          {
                                             addr01f9:
                                             §§push(§§pop());
                                             if(!_loc15_)
                                             {
                                                _loc5_ = §§pop();
                                                if(!(_loc14_ || Boolean(_loc3_)))
                                                {
                                                   addr028b:
                                                   §§push(_loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.GOODS_TAB_INDEX,ServerTagConstants.CLIENT_GOOD_GRANITE));
                                                   if(!_loc15_)
                                                   {
                                                      addr02a1:
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr02a2);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr0255);
                                             }
                                             addr0460:
                                             var _loc6_:Object = {
                                                "index":CityTreasuryTabProxy.GOODS_TAB_INDEX,
                                                "cat":_loc4_,
                                                "pack":_loc5_
                                             };
                                             if(!(_loc15_ && Boolean(_loc3_)))
                                             {
                                                if(facade.hasMediator(CityTreasuryMediator.NAME))
                                                {
                                                   addr0496:
                                                   _loc11_ = facade.retrieveMediator(CityTreasuryMediator.NAME) as CityTreasuryMediator;
                                                   _loc11_.updateData(_loc6_);
                                                }
                                                else
                                                {
                                                   _loc12_ = new PopupSettingsVo(PopupSettingsVo.FEATURE_POPUP);
                                                   _loc12_.modal = true;
                                                   if(_loc14_)
                                                   {
                                                      _loc12_.viewClass = CityTreasuryLayer;
                                                      if(!_loc15_)
                                                      {
                                                         _loc12_.mediatorClass = CityTreasuryMediator;
                                                         if(!_loc15_)
                                                         {
                                                            _loc12_.mediatorName = CityTreasuryMediator.NAME;
                                                            if(_loc14_ || Boolean(_loc2_))
                                                            {
                                                               addr0510:
                                                               _loc12_.data = _loc6_;
                                                               if(_loc14_)
                                                               {
                                                                  addr051c:
                                                                  facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc12_);
                                                               }
                                                            }
                                                            §§goto(addr0528);
                                                         }
                                                      }
                                                      §§goto(addr051c);
                                                   }
                                                   §§goto(addr0510);
                                                }
                                                addr0528:
                                                return;
                                             }
                                             §§goto(addr0496);
                                          }
                                          §§goto(addr02a1);
                                       }
                                       §§goto(addr0460);
                                    }
                                    else
                                    {
                                       addr01a9:
                                       _loc4_ = §§pop();
                                       if(!(_loc15_ && Boolean(param1)))
                                       {
                                          §§push(_loc9_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN));
                                          if(_loc14_ || Boolean(this))
                                          {
                                             addr01d2:
                                             if(§§pop())
                                             {
                                                if(!(_loc15_ && Boolean(this)))
                                                {
                                                   §§goto(addr01e4);
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc9_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN));
                                                if(_loc14_ || Boolean(this))
                                                {
                                                   addr022d:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         addr0237:
                                                         §§push(_loc3_.getFirstInternalPackIndexByCategoryAndContent(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN,ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN));
                                                         if(_loc14_ || Boolean(_loc3_))
                                                         {
                                                            §§goto(addr0254);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr02a1);
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr0279:
                                                   if(§§pop())
                                                   {
                                                      if(_loc14_ || Boolean(param1))
                                                      {
                                                         §§goto(addr028b);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr0460);
                                          }
                                          §§goto(addr022d);
                                       }
                                    }
                                    §§goto(addr01e4);
                                 }
                                 §§goto(addr014d);
                              }
                              §§goto(addr0460);
                           }
                           else
                           {
                              §§push(_loc9_.isTaggedGoodByTagName(ServerTagConstants.GOOD_KEY));
                              if(!(_loc15_ && Boolean(_loc3_)))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc14_)
                                    {
                                       §§goto(addr0130);
                                    }
                                    §§goto(addr0237);
                                 }
                                 else
                                 {
                                    §§push(_loc9_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN));
                                    if(!(_loc15_ && Boolean(param1)))
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc15_ && Boolean(this)))
                                          {
                                             §§push(_loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.GOODS_TAB_INDEX,ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN));
                                             if(!(_loc15_ && Boolean(this)))
                                             {
                                                §§push(§§pop());
                                                if(_loc14_)
                                                {
                                                   §§goto(addr01a9);
                                                }
                                                §§goto(addr01f9);
                                             }
                                             §§goto(addr02a2);
                                          }
                                          §§goto(addr0237);
                                       }
                                       else
                                       {
                                          §§push(_loc9_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_GOOD_GRANITE));
                                       }
                                    }
                                 }
                                 §§goto(addr0279);
                              }
                           }
                        }
                        §§goto(addr01d2);
                     }
                     §§goto(addr00d4);
                  }
               }
               else
               {
                  addr0316:
                  addr031e:
                  addr031d:
                  addr0318:
                  if(_loc10_ == ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN)
                  {
                     addr038f:
                     var _loc13_:* = _loc10_;
                     if(_loc14_)
                     {
                        §§push(ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN);
                        if(_loc14_ || Boolean(this))
                        {
                           §§push(_loc13_);
                           if(_loc14_ || Boolean(_loc3_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc15_)
                                 {
                                    §§push(0);
                                    if(_loc15_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr03dd:
                                    §§push(1);
                                    if(_loc15_)
                                    {
                                    }
                                 }
                                 addr03f5:
                                 if(_loc14_ || Boolean(_loc2_))
                                 {
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §§push(_loc3_.getFirstInternalPackIndexByCategoryAndContent(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN,ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN));
                                          if(!(_loc15_ && Boolean(this)))
                                          {
                                             §§push(§§pop());
                                             if(_loc14_ || Boolean(this))
                                             {
                                                _loc5_ = §§pop();
                                                if(_loc15_)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                addr0376:
                                                _loc5_ = §§pop();
                                                if(_loc15_ && Boolean(_loc3_))
                                                {
                                                   break;
                                                }
                                             }
                                             addr0419:
                                             §§push(_loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.GOODS_TAB_INDEX,ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN));
                                             if(_loc14_)
                                             {
                                                §§push(§§pop());
                                                if(_loc14_)
                                                {
                                                   addr0436:
                                                   _loc4_ = §§pop();
                                                   if(_loc15_ && Boolean(this))
                                                   {
                                                   }
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                addr045d:
                                                §§push(§§pop());
                                             }
                                             addr045e:
                                             _loc4_ = §§pop();
                                             break;
                                          }
                                          §§goto(addr045d);
                                       case 1:
                                          §§push(_loc3_.getFirstInternalPackIndexByCategoryAndContent(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN,ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN));
                                          if(_loc14_)
                                          {
                                             §§goto(addr0376);
                                             §§push(§§pop());
                                          }
                                          §§goto(addr045d);
                                       default:
                                          §§goto(addr0419);
                                    }
                                    §§goto(addr0460);
                                 }
                                 §§goto(addr0436);
                              }
                              else
                              {
                                 addr03d9:
                                 addr03d7:
                                 if(ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN === _loc13_)
                                 {
                                    §§goto(addr03dd);
                                 }
                                 else
                                 {
                                    §§push(2);
                                 }
                                 §§goto(addr03f5);
                              }
                           }
                           §§goto(addr03d9);
                        }
                        §§goto(addr03d7);
                     }
                     §§goto(addr03dd);
                  }
                  else
                  {
                     §§push(_loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.GOODS_TAB_INDEX,_loc10_));
                     if(_loc14_)
                     {
                        §§goto(addr045d);
                     }
                  }
                  §§goto(addr045e);
               }
            }
            else if(_loc2_.cat)
            {
               if(_loc14_)
               {
                  §§push(_loc2_.cat);
                  if(_loc14_)
                  {
                     var _temp_29:* = §§pop();
                     §§push(_temp_29);
                     §§push(_temp_29);
                     if(!_loc15_)
                     {
                        _loc10_ = §§pop();
                        if(!(_loc15_ && Boolean(_loc3_)))
                        {
                           §§push(ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN);
                           if(_loc14_ || Boolean(_loc2_))
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc15_ && Boolean(_loc3_)))
                              {
                                 var _temp_33:* = §§pop();
                                 §§push(_temp_33);
                                 if(!_temp_33)
                                 {
                                    if(_loc14_ || Boolean(this))
                                    {
                                       §§pop();
                                       if(!_loc15_)
                                       {
                                          §§goto(addr0316);
                                       }
                                       §§goto(addr038f);
                                    }
                                 }
                              }
                              §§goto(addr031e);
                           }
                           §§goto(addr031d);
                        }
                        §§goto(addr0318);
                     }
                     §§goto(addr031d);
                  }
                  §§goto(addr0318);
               }
               §§goto(addr0316);
            }
            §§goto(addr0460);
         }
         §§goto(addr0070);
      }
   }
}

