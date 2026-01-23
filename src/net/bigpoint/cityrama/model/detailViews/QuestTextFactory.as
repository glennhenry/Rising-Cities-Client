package net.bigpoint.cityrama.model.detailViews
{
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import org.puremvc.as3.patterns.facade.Facade;
   
   public class QuestTextFactory
   {
      
      private static const BUILDINGNAME:String = "{buildingname}";
      
      private static const GOODNAME:String = "{goodname}";
      
      private static const PROGRESSTOCOMPLETE:String = "{quantityToReach}";
      
      private static const PROGRESSCURRENT:String = "{quantityReached}";
      
      private static const PLAYERNAME:String = "{PLAYERNAME}";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         BUILDINGNAME = "{buildingname}";
         if(_loc1_ || _loc2_)
         {
            addr003f:
            GOODNAME = "{goodname}";
            if(!_loc2_)
            {
               PROGRESSTOCOMPLETE = "{quantityToReach}";
               if(_loc1_ || _loc1_)
               {
                  addr0063:
                  PROGRESSCURRENT = "{quantityReached}";
                  if(_loc1_)
                  {
                     addr0071:
                     PLAYERNAME = "{PLAYERNAME}";
                  }
               }
               return;
            }
            §§goto(addr0071);
         }
         §§goto(addr0063);
      }
      §§goto(addr003f);
      
      public function QuestTextFactory()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      public static function replaceWildCards(param1:String, param2:QuestTaskDTO = null, param3:Boolean = false) : String
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:* = null;
         var _loc6_:RegExp = null;
         var _loc7_:* = null;
         if(!_loc9_)
         {
            §§push(param1);
            if(_loc8_ || Boolean(param1))
            {
               if(§§pop() == null)
               {
                  if(!(_loc9_ && QuestTextFactory))
                  {
                     addr004d:
                     §§push(param1);
                     if(!(_loc9_ && QuestTextFactory))
                     {
                        §§goto(addr005c);
                     }
                  }
                  else
                  {
                     addr005d:
                     §§push(param1);
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        §§push(§§pop());
                     }
                  }
                  var _loc4_:* = §§pop();
                  if(!_loc9_)
                  {
                     if(param2 != null)
                     {
                        if(!_loc9_)
                        {
                           addr0081:
                           §§push(_loc4_);
                           if(_loc8_ || Boolean(param1))
                           {
                              §§push(BUILDINGNAME);
                              if(_loc8_)
                              {
                                 if(§§pop().indexOf(§§pop()) != -1)
                                 {
                                    if(!(_loc9_ && QuestTextFactory))
                                    {
                                       _loc6_ = /{buildingname}/g;
                                       if(!(_loc9_ && Boolean(param2)))
                                       {
                                          §§push(ConfigPlayfieldItemDTO(configProxy.config.items[param2.taskConfig.questTaskTarget.questTaskItem[0].questTaskItemID]).localeId);
                                          if(_loc8_ || Boolean(param2))
                                          {
                                             §§push(§§pop());
                                             if(_loc8_ || Boolean(param1))
                                             {
                                                _loc7_ = §§pop();
                                                if(!(_loc9_ && QuestTextFactory))
                                                {
                                                   §§push(ResourceManager.getInstance());
                                                   §§push("rcl.playfielditems.name");
                                                   if(_loc8_ || param3)
                                                   {
                                                      §§push("");
                                                      if(!_loc9_)
                                                      {
                                                         addr0144:
                                                         §§push(§§pop() + §§pop());
                                                         §§push("rcl.playfielditems.name.");
                                                         if(!(_loc9_ && Boolean(param2)))
                                                         {
                                                            §§push(§§pop() + _loc7_);
                                                         }
                                                      }
                                                      §§push(§§pop().getString(§§pop(),§§pop()));
                                                      if(!(_loc9_ && QuestTextFactory))
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc9_ && param3))
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!_loc9_)
                                                            {
                                                               addr0192:
                                                               §§push(_loc4_);
                                                               if(_loc8_)
                                                               {
                                                                  addr0189:
                                                                  §§push(§§pop().replace(_loc6_,_loc5_));
                                                               }
                                                               _loc4_ = §§pop();
                                                            }
                                                            addr0194:
                                                            §§push(_loc4_);
                                                            if(_loc8_ || param3)
                                                            {
                                                               §§push(GOODNAME);
                                                               if(_loc8_)
                                                               {
                                                                  if(§§pop().indexOf(§§pop()) != -1)
                                                                  {
                                                                     if(_loc8_ || Boolean(param1))
                                                                     {
                                                                        _loc6_ = /{goodname}/g;
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(ConfigGoodDTO(configProxy.config.goods[param2.taskConfig.questTaskTarget.questTaskItem[0].questTaskItemID]).localeId);
                                                                           if(!(_loc9_ && QuestTextFactory))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc8_)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 if(!(_loc9_ && QuestTextFactory))
                                                                                 {
                                                                                    §§push(ResourceManager.getInstance());
                                                                                    §§push("rcl.goods.goodname");
                                                                                    if(!(_loc9_ && param3))
                                                                                    {
                                                                                       §§push("");
                                                                                       if(!(_loc9_ && QuestTextFactory))
                                                                                       {
                                                                                          addr025b:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          §§push("rcl.goods.goodname.");
                                                                                          if(!(_loc9_ && param3))
                                                                                          {
                                                                                             §§push(§§pop() + _loc7_);
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                       if(!(_loc9_ && Boolean(param1)))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             if(!(_loc9_ && QuestTextFactory))
                                                                                             {
                                                                                                addr02b1:
                                                                                                addr0298:
                                                                                                §§push(_loc4_);
                                                                                                if(_loc8_ || Boolean(param1))
                                                                                                {
                                                                                                   addr02a8:
                                                                                                   §§push(§§pop().replace(_loc6_,_loc5_));
                                                                                                }
                                                                                                _loc4_ = §§pop();
                                                                                             }
                                                                                             addr02b3:
                                                                                             §§push(_loc4_);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(PROGRESSTOCOMPLETE);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(§§pop().indexOf(§§pop()) != -1)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         addr02d4:
                                                                                                         _loc6_ = /{quantityToReach}/g;
                                                                                                         if(!(_loc9_ && QuestTextFactory))
                                                                                                         {
                                                                                                            §§push(param2.taskConfig.questTaskTarget.target.toString());
                                                                                                            if(_loc8_ || Boolean(param2))
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr0330:
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(!(_loc9_ && Boolean(param1)))
                                                                                                                  {
                                                                                                                     §§push(§§pop().replace(_loc6_,_loc5_));
                                                                                                                  }
                                                                                                                  _loc4_ = §§pop();
                                                                                                               }
                                                                                                               addr0332:
                                                                                                               §§push(_loc4_);
                                                                                                               if(_loc8_ || Boolean(param2))
                                                                                                               {
                                                                                                                  §§push(PROGRESSCURRENT);
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     addr034b:
                                                                                                                     if(§§pop().indexOf(§§pop()) != -1)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && QuestTextFactory))
                                                                                                                        {
                                                                                                                           addr0363:
                                                                                                                           _loc6_ = /{quantityReached}/g;
                                                                                                                           if(!(_loc9_ && param3))
                                                                                                                           {
                                                                                                                              §§push(param2.currentValue.toString());
                                                                                                                              if(!(_loc9_ && QuestTextFactory))
                                                                                                                              {
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    addr03a0:
                                                                                                                                    if(param3)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          addr03ab:
                                                                                                                                          §§push(param2.taskConfig.questTaskTarget.target.toString());
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             _loc5_ = §§pop();
                                                                                                                                             if(_loc8_ || param3)
                                                                                                                                             {
                                                                                                                                                addr03d0:
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr03d8:
                                                                                                                                                   §§push(§§pop().replace(_loc6_,_loc5_));
                                                                                                                                                }
                                                                                                                                                _loc4_ = §§pop();
                                                                                                                                             }
                                                                                                                                             addr03e3:
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                addr03ee:
                                                                                                                                                addr03eb:
                                                                                                                                                if(§§pop().indexOf(PLAYERNAME) != -1)
                                                                                                                                                {
                                                                                                                                                   addr03f8:
                                                                                                                                                   _loc6_ = /{PLAYERNAME}/g;
                                                                                                                                                   if(!(_loc9_ && Boolean(param2)))
                                                                                                                                                   {
                                                                                                                                                      §§push((Facade.getInstance().retrieveProxy(PlayerProxy.NAME) as PlayerProxy).player.playerName);
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(_loc8_ || Boolean(param2))
                                                                                                                                                         {
                                                                                                                                                            _loc5_ = §§pop();
                                                                                                                                                            if(!(_loc9_ && param3))
                                                                                                                                                            {
                                                                                                                                                               addr0473:
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  addr046a:
                                                                                                                                                                  §§push(§§pop().replace(_loc6_,_loc5_));
                                                                                                                                                               }
                                                                                                                                                               _loc4_ = §§pop();
                                                                                                                                                            }
                                                                                                                                                            addr0477:
                                                                                                                                                            return _loc4_;
                                                                                                                                                            addr0475:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0473);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr046a);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr0475);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0477);
                                                                                                                                          }
                                                                                                                                          §§goto(addr03d8);
                                                                                                                                       }
                                                                                                                                       §§goto(addr03e3);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03d0);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03ab);
                                                                                                                              }
                                                                                                                              §§goto(addr03d8);
                                                                                                                           }
                                                                                                                           §§goto(addr03a0);
                                                                                                                        }
                                                                                                                        §§goto(addr03f8);
                                                                                                                     }
                                                                                                                     §§goto(addr03e3);
                                                                                                                  }
                                                                                                                  §§goto(addr03ee);
                                                                                                               }
                                                                                                               §§goto(addr03eb);
                                                                                                            }
                                                                                                            §§goto(addr0330);
                                                                                                         }
                                                                                                         §§goto(addr0332);
                                                                                                      }
                                                                                                      §§goto(addr0363);
                                                                                                   }
                                                                                                   §§goto(addr0332);
                                                                                                }
                                                                                                §§goto(addr034b);
                                                                                             }
                                                                                             §§goto(addr03eb);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr02a8);
                                                                                    }
                                                                                    §§goto(addr025b);
                                                                                 }
                                                                                 §§goto(addr02b3);
                                                                              }
                                                                              §§goto(addr02b1);
                                                                           }
                                                                           §§goto(addr02a8);
                                                                        }
                                                                        §§goto(addr0298);
                                                                     }
                                                                     §§goto(addr0363);
                                                                  }
                                                                  §§goto(addr02b3);
                                                               }
                                                               §§goto(addr034b);
                                                            }
                                                            §§goto(addr0477);
                                                         }
                                                         §§goto(addr0189);
                                                      }
                                                      §§goto(addr0192);
                                                   }
                                                   §§goto(addr0144);
                                                }
                                                §§goto(addr0194);
                                             }
                                          }
                                          §§goto(addr0192);
                                       }
                                       §§goto(addr0194);
                                    }
                                    §§goto(addr0363);
                                 }
                                 §§goto(addr0194);
                              }
                              §§goto(addr034b);
                           }
                           §§goto(addr03eb);
                        }
                        §§goto(addr02d4);
                     }
                     §§goto(addr03e3);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr005d);
            }
            addr005c:
            return §§pop();
         }
         §§goto(addr004d);
      }
      
      private static function get configProxy() : GameConfigProxy
      {
         return Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
      }
   }
}

