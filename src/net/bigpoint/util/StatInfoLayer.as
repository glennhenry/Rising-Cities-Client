package net.bigpoint.util
{
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.init.SystemManager;
   
   public class StatInfoLayer
   {
      
      public static const STEN_GAMECLIENTLOADS:int = 51300;
      
      public static const STEN_GAMECLIENTLOADED:int = 51500;
      
      public static const STEN_TUTORIAL_STARTED:int = 51530;
      
      public static const STEN_TUTORIAL_FINISHED:int = 51570;
      
      public static const STEN_USER_ENTERED_GAME:int = 51800;
      
      public static const STEN_USER_FIRST_INGAME_ACTIVITY:int = 51900;
      
      public static const STEN_USER_DISCONNECTS:int = 59100;
      
      public static const STEN_USER_RECONNECTS:int = 59200;
      
      public static const LOADER_STARTS:int = 1000000;
      
      public static const LOADER_10:int = 1000010;
      
      public static const LOADER_20:int = 1000020;
      
      public static const LOADER_30:int = 1000030;
      
      public static const LOADER_40:int = 1000040;
      
      public static const LOADER_50:int = 1000050;
      
      public static const LOADER_60:int = 1000060;
      
      public static const LOADER_70:int = 1000070;
      
      public static const LOADER_80:int = 1000080;
      
      public static const LOADER_90:int = 1000090;
      
      public static const LOADER_100:int = 1000100;
      
      public static const WELCOME_SCREEN:int = 1000200;
      
      public static const DAILY_LOGIN:int = 1000250;
      
      public static const TUTORIAL_SKIP_BUT:int = 1000300;
      
      public static const TUTORIAL_CLICK_URBIE:int = 1000350;
      
      public static const TUTORIAL_CLICK_ENERGY:int = 1000400;
      
      public static const TUTORIAL_FIRST_REWARD_SCREEN:int = 1000450;
      
      public static const TUTORIAL_RP_CLICK_MENUE:int = 1000500;
      
      public static const TUTORIAL_RP_CLICK_SUBMENUE:int = 1000550;
      
      public static const TUTORIAL_RP_CLICK_ITEM:int = 1000600;
      
      public static const TUTORIAL_RP_PLACING_ITEM:int = 1000650;
      
      public static const URBIE_HARVEST_VISIBLE1:int = 1000700;
      
      public static const REWARDSCRREN_LEVEL1:int = 1000750;
      
      public static const LEVEL2_SCREEN_OK:int = 1000800;
      
      public static const CAMPING_CLICK_MENUE:int = 1001000;
      
      public static const CAMPING_CLICK_SUBMENUE_LEISURE:int = 1001100;
      
      public static const CAMPING_CLICK_ITEM:int = 1001200;
      
      public static const CAMPING_PLACING_ITEM:int = 1001300;
      
      public static const CAMPING_BOOST_SUCCEEDS:int = 1001400;
      
      public static const GENERATOR_CLICK_INVENTORY_MENUE:int = 1001500;
      
      public static const GENERATOR_PLACING_ITEM:int = 1001600;
      
      public static const GENERATOR_REWARD_SCREEN:int = 1001700;
      
      public static const QUEST_COTTAGE_INFOSCREEN:int = 10002000;
      
      public static const QUEST_COTTAGE_PLACING:int = 10002100;
      
      public static const QUEST_COTTAGE_REWARD_SCREEN:int = 10002200;
      
      public static const QUEST_COTTAGE_HARVEST_REWARD:int = 10002300;
      
      public static const QUEST_COTTAGE_HARVEST_INFOSCREEN:int = 10003000;
      
      public static const QUEST_SMALLFACOTRY_INFOSCREEN:int = 10003050;
      
      public static const QUEST_SMALLFACOTRY_PLACING:int = 10003100;
      
      public static const QUEST_SMALLFACOTRY_OPEN_SCREEN:int = 10003200;
      
      public static const QUEST_SMALLFACOTRY_PRODUCING_FIRSTDUCK:int = 10003300;
      
      public static const QUEST_SMALLFACOTRY_PRODUCING_SECONDDUCK:int = 10003400;
      
      public static const QUEST_SMALLFACOTRY_REWARD_SCREEN:int = 10003500;
      
      public static const QUEST_COMMERCIAL_INFOSCREEN:int = 10004000;
      
      public static const QUEST_COMMERCIAL_PLACING:int = 10004100;
      
      public static const QUEST_COMMERCIAL_SELLING_FIRSTDUCK:int = 10004200;
      
      public static const QUEST_COMMERCIAL_REWARD_SCREEN:int = 10004300;
      
      public static const QUEST_PUMPOIL_INFOSCREEN:int = 10005000;
      
      public static const QUEST_PUMPOIL_PLACING:int = 10005100;
      
      public static const QUEST_PUMPOIL_PLACING_REWARD_SCREEN:int = 10005200;
      
      public static const LEVEL3_SCREEN_OK:int = 10006000;
      
      public static const LEVEL4_SCREEN_OK:int = 10007000;
      
      public static const QUEST_PLAYGROUND_INFOSCREEN:int = 10008000;
      
      public static const QUEST_PLAYGROUND_PLACING:int = 10008100;
      
      public static const QUEST_PLAYGROUND_REWARD_SCREEN:int = 10008200;
      
      public static const QUEST_LAYER_EMPTY_INFO:int = 10009999;
      
      private static var _instance:StatInfoLayer;
      
      public static const NAME:String = "StatInfoProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         STEN_GAMECLIENTLOADS = 51300;
         if(_loc2_)
         {
            STEN_GAMECLIENTLOADED = 51500;
            if(!(_loc1_ && _loc1_))
            {
               STEN_TUTORIAL_STARTED = 51530;
               if(_loc2_ || _loc1_)
               {
                  STEN_TUTORIAL_FINISHED = 51570;
                  if(!(_loc1_ && _loc1_))
                  {
                     STEN_USER_ENTERED_GAME = 51800;
                     if(!_loc1_)
                     {
                        STEN_USER_FIRST_INGAME_ACTIVITY = 51900;
                        if(_loc2_ || _loc1_)
                        {
                           STEN_USER_DISCONNECTS = 59100;
                           if(_loc2_ || StatInfoLayer)
                           {
                              STEN_USER_RECONNECTS = 59200;
                              if(_loc2_)
                              {
                                 LOADER_STARTS = 1000000;
                                 if(_loc2_ || _loc2_)
                                 {
                                    LOADER_10 = 1000010;
                                    if(_loc2_ || _loc2_)
                                    {
                                       LOADER_20 = 1000020;
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          addr00ed:
                                          LOADER_30 = 1000030;
                                          if(!_loc1_)
                                          {
                                             LOADER_40 = 1000040;
                                             if(_loc2_)
                                             {
                                                LOADER_50 = 1000050;
                                                if(_loc2_)
                                                {
                                                   LOADER_60 = 1000060;
                                                   if(!_loc1_)
                                                   {
                                                      addr0121:
                                                      LOADER_70 = 1000070;
                                                      if(!(_loc1_ && StatInfoLayer))
                                                      {
                                                         LOADER_80 = 1000080;
                                                         if(!(_loc1_ && _loc1_))
                                                         {
                                                            LOADER_90 = 1000090;
                                                            if(_loc2_)
                                                            {
                                                               addr0158:
                                                               LOADER_100 = 1000100;
                                                               if(!_loc1_)
                                                               {
                                                                  WELCOME_SCREEN = 1000200;
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     DAILY_LOGIN = 1000250;
                                                                     if(!(_loc1_ && _loc1_))
                                                                     {
                                                                        addr018f:
                                                                        TUTORIAL_SKIP_BUT = 1000300;
                                                                        if(!(_loc1_ && StatInfoLayer))
                                                                        {
                                                                           addr01a4:
                                                                           TUTORIAL_CLICK_URBIE = 1000350;
                                                                           if(_loc2_)
                                                                           {
                                                                              TUTORIAL_CLICK_ENERGY = 1000400;
                                                                              if(_loc2_)
                                                                              {
                                                                                 TUTORIAL_FIRST_REWARD_SCREEN = 1000450;
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    TUTORIAL_RP_CLICK_MENUE = 1000500;
                                                                                    if(_loc2_ || StatInfoLayer)
                                                                                    {
                                                                                       addr01e0:
                                                                                       TUTORIAL_RP_CLICK_SUBMENUE = 1000550;
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          TUTORIAL_RP_CLICK_ITEM = 1000600;
                                                                                          if(_loc2_ || _loc1_)
                                                                                          {
                                                                                             addr0202:
                                                                                             TUTORIAL_RP_PLACING_ITEM = 1000650;
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                addr020f:
                                                                                                URBIE_HARVEST_VISIBLE1 = 1000700;
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   REWARDSCRREN_LEVEL1 = 1000750;
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      LEVEL2_SCREEN_OK = 1000800;
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         CAMPING_CLICK_MENUE = 1001000;
                                                                                                         addr0236:
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            CAMPING_CLICK_SUBMENUE_LEISURE = 1001100;
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               addr025a:
                                                                                                               CAMPING_CLICK_ITEM = 1001200;
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  CAMPING_PLACING_ITEM = 1001300;
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     addr0274:
                                                                                                                     CAMPING_BOOST_SUCCEEDS = 1001400;
                                                                                                                     if(!_loc1_)
                                                                                                                     {
                                                                                                                        addr0281:
                                                                                                                        GENERATOR_CLICK_INVENTORY_MENUE = 1001500;
                                                                                                                        if(!(_loc1_ && _loc1_))
                                                                                                                        {
                                                                                                                           GENERATOR_PLACING_ITEM = 1001600;
                                                                                                                           if(!(_loc1_ && _loc1_))
                                                                                                                           {
                                                                                                                              GENERATOR_REWARD_SCREEN = 1001700;
                                                                                                                              if(!_loc1_)
                                                                                                                              {
                                                                                                                                 addr02b8:
                                                                                                                                 QUEST_COTTAGE_INFOSCREEN = 10002000;
                                                                                                                                 if(!(_loc1_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr02cd:
                                                                                                                                    QUEST_COTTAGE_PLACING = 10002100;
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       QUEST_COTTAGE_REWARD_SCREEN = 10002200;
                                                                                                                                       if(!_loc1_)
                                                                                                                                       {
                                                                                                                                          QUEST_COTTAGE_HARVEST_REWARD = 10002300;
                                                                                                                                          if(_loc2_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             addr02fc:
                                                                                                                                             QUEST_COTTAGE_HARVEST_INFOSCREEN = 10003000;
                                                                                                                                             if(!_loc1_)
                                                                                                                                             {
                                                                                                                                                addr0309:
                                                                                                                                                QUEST_SMALLFACOTRY_INFOSCREEN = 10003050;
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   addr0316:
                                                                                                                                                   QUEST_SMALLFACOTRY_PLACING = 10003100;
                                                                                                                                                   if(!(_loc1_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr032b:
                                                                                                                                                      QUEST_SMALLFACOTRY_OPEN_SCREEN = 10003200;
                                                                                                                                                      if(!(_loc1_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr0340:
                                                                                                                                                         QUEST_SMALLFACOTRY_PRODUCING_FIRSTDUCK = 10003300;
                                                                                                                                                         if(_loc2_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr0355:
                                                                                                                                                            QUEST_SMALLFACOTRY_PRODUCING_SECONDDUCK = 10003400;
                                                                                                                                                            if(!(_loc1_ && StatInfoLayer))
                                                                                                                                                            {
                                                                                                                                                               addr036a:
                                                                                                                                                               QUEST_SMALLFACOTRY_REWARD_SCREEN = 10003500;
                                                                                                                                                               if(!_loc1_)
                                                                                                                                                               {
                                                                                                                                                                  QUEST_COMMERCIAL_INFOSCREEN = 10004000;
                                                                                                                                                                  if(!(_loc1_ && StatInfoLayer))
                                                                                                                                                                  {
                                                                                                                                                                     addr038c:
                                                                                                                                                                     QUEST_COMMERCIAL_PLACING = 10004100;
                                                                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        addr03a1:
                                                                                                                                                                        QUEST_COMMERCIAL_SELLING_FIRSTDUCK = 10004200;
                                                                                                                                                                        if(!(_loc1_ && _loc1_))
                                                                                                                                                                        {
                                                                                                                                                                           addr03b6:
                                                                                                                                                                           QUEST_COMMERCIAL_REWARD_SCREEN = 10004300;
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr03c3:
                                                                                                                                                                              QUEST_PUMPOIL_INFOSCREEN = 10005000;
                                                                                                                                                                              if(!(_loc1_ && StatInfoLayer))
                                                                                                                                                                              {
                                                                                                                                                                                 addr03d8:
                                                                                                                                                                                 QUEST_PUMPOIL_PLACING = 10005100;
                                                                                                                                                                                 if(!(_loc1_ && StatInfoLayer))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr03ed:
                                                                                                                                                                                    QUEST_PUMPOIL_PLACING_REWARD_SCREEN = 10005200;
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       LEVEL3_SCREEN_OK = 10006000;
                                                                                                                                                                                       if(!(_loc1_ && StatInfoLayer))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr040f:
                                                                                                                                                                                          LEVEL4_SCREEN_OK = 10007000;
                                                                                                                                                                                          if(_loc2_ || _loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             QUEST_PLAYGROUND_INFOSCREEN = 10008000;
                                                                                                                                                                                             if(!(_loc1_ && _loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0439:
                                                                                                                                                                                                QUEST_PLAYGROUND_PLACING = 10008100;
                                                                                                                                                                                                if(!(_loc1_ && StatInfoLayer))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr044e:
                                                                                                                                                                                                   QUEST_PLAYGROUND_REWARD_SCREEN = 10008200;
                                                                                                                                                                                                   if(_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      QUEST_LAYER_EMPTY_INFO = 10009999;
                                                                                                                                                                                                      addr045b:
                                                                                                                                                                                                      if(_loc2_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr047a:
                                                                                                                                                                                                         _instance = new StatInfoLayer();
                                                                                                                                                                                                         if(_loc2_ || StatInfoLayer)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr0490:
                                                                                                                                                                                                            NAME = "StatInfoProxy";
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0499);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0490);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0499);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr045b);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0490);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr045b);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr03ed);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0499);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0439);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr044e);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr045b);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr044e);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr03c3);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr03d8);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr038c);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0355);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0490);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0340);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0309);
                                                                                                                                       }
                                                                                                                                       addr0499:
                                                                                                                                       return;
                                                                                                                                    }
                                                                                                                                    §§goto(addr03ed);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03d8);
                                                                                                                              }
                                                                                                                              §§goto(addr036a);
                                                                                                                           }
                                                                                                                           §§goto(addr02b8);
                                                                                                                        }
                                                                                                                        §§goto(addr047a);
                                                                                                                     }
                                                                                                                     §§goto(addr038c);
                                                                                                                  }
                                                                                                                  §§goto(addr03d8);
                                                                                                               }
                                                                                                               §§goto(addr0439);
                                                                                                            }
                                                                                                            §§goto(addr0355);
                                                                                                         }
                                                                                                         §§goto(addr02cd);
                                                                                                      }
                                                                                                      §§goto(addr036a);
                                                                                                   }
                                                                                                   §§goto(addr03a1);
                                                                                                }
                                                                                                §§goto(addr0281);
                                                                                             }
                                                                                             §§goto(addr03ed);
                                                                                          }
                                                                                          §§goto(addr032b);
                                                                                       }
                                                                                       §§goto(addr040f);
                                                                                    }
                                                                                    §§goto(addr036a);
                                                                                 }
                                                                                 §§goto(addr01e0);
                                                                              }
                                                                              §§goto(addr0439);
                                                                           }
                                                                           §§goto(addr020f);
                                                                        }
                                                                        §§goto(addr02fc);
                                                                     }
                                                                     §§goto(addr03c3);
                                                                  }
                                                                  §§goto(addr032b);
                                                               }
                                                               §§goto(addr047a);
                                                            }
                                                            §§goto(addr03b6);
                                                         }
                                                         §§goto(addr01e0);
                                                      }
                                                      §§goto(addr01a4);
                                                   }
                                                   §§goto(addr040f);
                                                }
                                                §§goto(addr0121);
                                             }
                                             §§goto(addr025a);
                                          }
                                          §§goto(addr0490);
                                       }
                                       §§goto(addr0158);
                                    }
                                    §§goto(addr020f);
                                 }
                                 §§goto(addr0274);
                              }
                              §§goto(addr0236);
                           }
                           §§goto(addr0316);
                        }
                        §§goto(addr01e0);
                     }
                     §§goto(addr0236);
                  }
                  §§goto(addr0202);
               }
               §§goto(addr03ed);
            }
            §§goto(addr03c3);
         }
         §§goto(addr00ed);
      }
      §§goto(addr018f);
      
      private var _stopTracking:Boolean = false;
      
      private var _url_OUT:String = "/?action=internalFlashTracking&behTrackingFunnel=";
      
      private var _url:String = "";
      
      private var _islocal:Boolean = false;
      
      private var _doneDictionary:Dictionary;
      
      public function StatInfoLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(_loc1_ || _loc1_)
            {
               this._doneDictionary = new Dictionary();
               if(_loc1_ || _loc1_)
               {
                  §§push(SystemManager.rawStage.loaderInfo.parameters.uid == null);
                  if(!_loc2_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           if(_loc1_ || _loc1_)
                           {
                              addr0086:
                              addr0078:
                              if(SystemManager.rawStage.loaderInfo.parameters.sid == null)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    this._islocal = true;
                                    if(!_loc2_)
                                    {
                                       addr00de:
                                       if(SystemManager.rawStage.loaderInfo.parameters.funnelTracking == null)
                                       {
                                          if(!_loc2_)
                                          {
                                             addr00f4:
                                             this._stopTracking = true;
                                          }
                                       }
                                    }
                                    §§goto(addr00f9);
                                 }
                                 §§goto(addr00f4);
                              }
                              else
                              {
                                 §§push(this);
                                 §§push("/?action=internalFlashTracking&uId=");
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(§§pop() + SystemManager.rawStage.loaderInfo.parameters.uid);
                                    if(_loc1_)
                                    {
                                       §§push(§§pop() + "&stepId=");
                                    }
                                 }
                                 §§pop()._url_OUT = §§pop();
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00de);
                                 }
                              }
                           }
                           addr00f9:
                           return;
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0078);
            }
         }
         §§goto(addr00de);
      }
      
      public static function get instance() : StatInfoLayer
      {
         return _instance;
      }
      
      public function executeMustHaveStep(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.executeCall(param1);
         }
      }
      
      public function executeStep(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            if(this._stopTracking)
            {
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0041);
               }
            }
            this.executeCall(param1);
            return;
         }
         addr0041:
      }
      
      private function executeCall(param1:int) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:String = null;
         if(_loc4_ || Boolean(_loc3_))
         {
            if(this._doneDictionary.hasOwnProperty(String(param1)))
            {
               if(_loc4_)
               {
                  return;
               }
            }
            else
            {
               this._doneDictionary[param1] = param1;
               if(_loc4_ || Boolean(param1))
               {
                  addr0062:
                  if(this._islocal)
                  {
                     if(_loc4_ || Boolean(this))
                     {
                        §§push(CityramaLogger.logger);
                        §§push("local StatInfoLayer::executeStep ");
                        if(_loc4_)
                        {
                           §§push(§§pop() + this._url_OUT);
                           if(_loc4_ || Boolean(param1))
                           {
                              addr009a:
                              §§push(§§pop() + param1);
                           }
                           §§pop().debug(§§pop());
                           §§goto(addr0178);
                        }
                        §§goto(addr009a);
                     }
                  }
                  else
                  {
                     _loc2_ = new Object();
                     if(!_loc5_)
                     {
                        _loc2_.url = this._url_OUT;
                        if(_loc4_)
                        {
                           _loc2_.step = param1;
                           if(!_loc5_)
                           {
                              _loc3_ = JSON.stringify(_loc2_);
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 §§push(DebugLayer.instance);
                                 §§push("{\"header\":\"");
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    §§push("StatInfoLayer::executeStep ");
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc4_)
                                       {
                                          §§push("\",\"message\":");
                                          if(!(_loc5_ && Boolean(_loc2_)))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc5_ && Boolean(_loc2_)))
                                             {
                                                addr014b:
                                                §§push(§§pop() + _loc3_);
                                                if(_loc4_)
                                                {
                                                   addr0156:
                                                   addr0153:
                                                   §§push(§§pop() + "}");
                                                }
                                             }
                                             §§pop().track(§§pop(),3);
                                             if(!_loc5_)
                                             {
                                                §§goto(addr0163);
                                             }
                                             §§goto(addr0173);
                                          }
                                          §§goto(addr0156);
                                       }
                                       §§goto(addr0153);
                                    }
                                    §§goto(addr0156);
                                 }
                                 §§goto(addr014b);
                              }
                           }
                           addr0163:
                           this._url = this._url_OUT + param1;
                           if(_loc4_)
                           {
                              addr0173:
                              this.transmit();
                           }
                        }
                        §§goto(addr0178);
                     }
                     §§goto(addr0173);
                  }
               }
            }
            addr0178:
            return;
         }
         §§goto(addr0062);
      }
      
      public function openProductionLayer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            if(this._stopTracking)
            {
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
            else
            {
               addr0054:
               if(this._doneDictionary.hasOwnProperty(String(QUEST_SMALLFACOTRY_PLACING)))
               {
                  if(_loc1_ || _loc1_)
                  {
                     this.executeStep(QUEST_SMALLFACOTRY_OPEN_SCREEN);
                  }
               }
            }
            return;
         }
         §§goto(addr0054);
      }
      
      public function goodRelatedStats(param1:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            if(this._stopTracking)
            {
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
         }
         §§push(param1);
         if(_loc3_ || _loc2_)
         {
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc2_)
            {
               §§push(100031);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop() === _loc2_)
                  {
                     addr0149:
                     §§push(0);
                     if(_loc4_ && _loc2_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
               }
               §§goto(addr016b);
            }
            §§goto(addr0149);
         }
         addr016b:
         switch(§§pop())
         {
            case 0:
               if(this._doneDictionary.hasOwnProperty(String(QUEST_SMALLFACOTRY_PLACING)))
               {
                  if(_loc3_ || _loc2_)
                  {
                     this.executeStep(QUEST_SMALLFACOTRY_PRODUCING_FIRSTDUCK);
                     if(_loc3_ || _loc2_)
                     {
                        return;
                     }
                     addr0091:
                     this.executeStep(QUEST_SMALLFACOTRY_PRODUCING_SECONDDUCK);
                     if(!(_loc3_ || _loc2_))
                     {
                        addr00e1:
                        this.executeStep(QUEST_COMMERCIAL_SELLING_FIRSTDUCK);
                        if(_loc3_ || _loc2_)
                        {
                           return;
                        }
                        break;
                     }
                  }
                  return;
               }
               if(this._doneDictionary.hasOwnProperty(String(QUEST_SMALLFACOTRY_PRODUCING_FIRSTDUCK)))
               {
                  if(_loc3_)
                  {
                     §§goto(addr0091);
                  }
                  else
                  {
                     addr00c0:
                     if(!this._doneDictionary.hasOwnProperty(String(QUEST_COMMERCIAL_PLACING)))
                     {
                        break;
                     }
                     if(!(_loc3_ || _loc3_))
                     {
                        break;
                     }
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr00c0);
               §§goto(addr00e1);
         }
      }
      
      public function inventarRelatedStats(param1:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            if(this._stopTracking)
            {
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0036);
               }
            }
            §§push(param1);
            if(_loc3_)
            {
               var _loc2_:* = §§pop();
               if(!_loc4_)
               {
                  §§push(3001);
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc3_ || Boolean(param1))
                           {
                              §§push(0);
                              if(_loc4_ && Boolean(this))
                              {
                              }
                           }
                           else
                           {
                              addr0171:
                              §§push(2);
                              if(_loc4_ && Boolean(param1))
                              {
                                 addr01a3:
                                 addr01a4:
                                 if(§§pop() === _loc2_)
                                 {
                                    addr01a8:
                                    §§push(3);
                                    if(_loc3_ || _loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§push(2003);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       addr0144:
                                       §§push(1);
                                       if(!_loc3_)
                                       {
                                          addr0158:
                                          §§push(_loc2_);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr0167:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr0171);
                                                }
                                                §§goto(addr01a8);
                                             }
                                             else
                                             {
                                                §§push(6011);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§goto(addr01a3);
                                                }
                                             }
                                             addr01c9:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   if(this._doneDictionary.hasOwnProperty(String(QUEST_SMALLFACOTRY_INFOSCREEN)))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         this.executeStep(QUEST_SMALLFACOTRY_PLACING);
                                                         if(_loc4_ && Boolean(this))
                                                         {
                                                         }
                                                         break;
                                                      }
                                                      addr0089:
                                                      this.executeStep(QUEST_COMMERCIAL_PLACING);
                                                      if(_loc4_)
                                                      {
                                                      }
                                                   }
                                                   break;
                                                case 1:
                                                   if(!this._doneDictionary.hasOwnProperty(String(QUEST_COMMERCIAL_INFOSCREEN)))
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr0089);
                                                   break;
                                                case 2:
                                                   this.executeStep(QUEST_PUMPOIL_PLACING);
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   break;
                                                case 3:
                                                   this.executeStep(GENERATOR_PLACING_ITEM);
                                                   if(_loc4_)
                                                   {
                                                   }
                                             }
                                             return;
                                             addr01c7:
                                          }
                                          §§goto(addr01a4);
                                       }
                                       §§goto(addr01c7);
                                    }
                                    §§goto(addr0171);
                                 }
                                 else
                                 {
                                    §§push(6013);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr0158);
                                    }
                                 }
                                 §§goto(addr01c7);
                              }
                              §§goto(addr0167);
                           }
                        }
                        §§goto(addr01c7);
                     }
                     §§goto(addr0167);
                  }
                  §§goto(addr01c7);
               }
               §§goto(addr0144);
            }
            §§goto(addr01c9);
         }
         addr0036:
      }
      
      public function buildingRelatedStats(param1:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            if(this._stopTracking)
            {
               if(!_loc4_)
               {
                  §§goto(addr0025);
               }
            }
            §§push(param1);
            if(!_loc4_)
            {
               var _loc2_:* = §§pop();
               if(_loc3_ || Boolean(this))
               {
                  §§push(1002);
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc3_)
                           {
                              §§push(0);
                              if(_loc4_ && _loc3_)
                              {
                                 addr0103:
                                 addr0104:
                                 if(§§pop() === _loc2_)
                                 {
                                    addr0108:
                                    §§push(1);
                                    if(_loc3_ || _loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(2);
                                 }
                              }
                              addr0129:
                              switch(§§pop())
                              {
                                 case 0:
                                    if(this._doneDictionary.hasOwnProperty(String(QUEST_COTTAGE_INFOSCREEN)))
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          this.executeStep(QUEST_COTTAGE_PLACING);
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             break;
                                          }
                                          addr0096:
                                          this.executeStep(QUEST_PLAYGROUND_PLACING);
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                    }
                                    break;
                                 case 1:
                                    if(!this._doneDictionary.hasOwnProperty(String(QUEST_PLAYGROUND_INFOSCREEN)))
                                    {
                                       break;
                                    }
                                    if(_loc4_ && _loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr0096);
                              }
                              return;
                              addr0127:
                           }
                           §§goto(addr0108);
                        }
                        else
                        {
                           §§push(4022);
                           if(!_loc4_)
                           {
                              §§goto(addr0103);
                           }
                        }
                        §§goto(addr0127);
                     }
                     §§goto(addr0104);
                  }
                  §§goto(addr0127);
               }
               §§goto(addr0108);
            }
            §§goto(addr0129);
         }
         addr0025:
      }
      
      private function transmit() : void
      {
         var loader:URLLoader;
         var request:URLRequest;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            if(this._stopTracking)
            {
               if(!_loc4_)
               {
                  return;
               }
            }
         }
         §§push(§§newactivation());
         if(_loc3_ || Boolean(this))
         {
            §§pop().§§slot[1] = new URLLoader();
            if(!_loc4_)
            {
               addr0065:
               request = new URLRequest(this._url);
            }
            try
            {
               loader.load(request);
            }
            catch(error:Error)
            {
               if(_loc3_ || _loc1_)
               {
                  §§push(CityramaLogger.logger);
                  §§push("StatInfoLayer::executeStep ");
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(§§pop() + _url);
                  }
                  §§pop().debug(§§pop());
               }
            }
            return;
         }
         §§goto(addr0065);
      }
      
      public function get stopTracking() : Boolean
      {
         return this._stopTracking;
      }
      
      public function set stopTracking(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._stopTracking = param1;
         }
      }
   }
}

