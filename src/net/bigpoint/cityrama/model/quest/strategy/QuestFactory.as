package net.bigpoint.cityrama.model.quest.strategy
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemRewardTypeConstants;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestRewardDTO;
   
   public class QuestFactory
   {
      
      public function QuestFactory()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function getQuestRewardDto(param1:Object) : IQuestRewardDTO
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Vector.<String> = new <String>[QuestSystemRewardTypeConstants.GOOD,QuestSystemRewardTypeConstants.PERMISSION,QuestSystemRewardTypeConstants.RESOURCE,QuestSystemRewardTypeConstants.IMPROVEMENT];
         if(_loc4_)
         {
            §§push(param1.t == null);
            if(!(_loc3_ && Boolean(param1)))
            {
               var _temp_7:* = §§pop();
               §§push(_temp_7);
               §§push(_temp_7);
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc3_ && QuestFactory))
                     {
                        §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           §§push(param1.a == null);
                           if(!(_loc3_ && QuestFactory))
                           {
                              addr00ab:
                              var _temp_11:* = §§pop();
                              §§push(_temp_11);
                              §§push(_temp_11);
                              if(_loc4_)
                              {
                                 addr00b2:
                                 if(!§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§pop();
                                       if(_loc4_ || Boolean(param1))
                                       {
                                          addr00d5:
                                          §§push(param1.id == null);
                                          if(_loc4_)
                                          {
                                             addr00e2:
                                             if(§§pop())
                                             {
                                                if(_loc4_ || Boolean(param1))
                                                {
                                                   exit("property is Null");
                                                   if(!_loc3_)
                                                   {
                                                      §§push(null);
                                                      if(!(_loc3_ && Boolean(param1)))
                                                      {
                                                         return §§pop();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr01b6:
                                                      §§push(null);
                                                   }
                                                   §§goto(addr01b7);
                                                }
                                                else
                                                {
                                                   addr0120:
                                                   if(_loc2_.indexOf(param1.t) == -1)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         exit("type not found");
                                                         if(!_loc3_)
                                                         {
                                                            §§push(null);
                                                            if(!_loc3_)
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0152:
                                                            §§push(param1.id < 1);
                                                            if(!(_loc3_ && QuestFactory))
                                                            {
                                                               addr0167:
                                                               var _temp_16:* = §§pop();
                                                               addr0168:
                                                               §§push(_temp_16);
                                                               if(!_temp_16)
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr017a:
                                                                     §§pop();
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr0194);
                                                                     }
                                                                     §§goto(addr01a6);
                                                                  }
                                                               }
                                                            }
                                                            addr0194:
                                                            §§goto(addr018c);
                                                         }
                                                         addr01b7:
                                                         return §§pop();
                                                      }
                                                      addr018c:
                                                      if(param1.a < 1)
                                                      {
                                                         if(_loc4_ || Boolean(_loc2_))
                                                         {
                                                            addr01a6:
                                                            exit("amount or id smaller 1");
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr01b6);
                                                            }
                                                         }
                                                      }
                                                      return new QuestRewardDTO(param1);
                                                   }
                                                   §§goto(addr0152);
                                                }
                                             }
                                             §§goto(addr0120);
                                          }
                                          §§goto(addr017a);
                                       }
                                       §§goto(addr0120);
                                    }
                                    §§goto(addr0167);
                                 }
                                 §§goto(addr00e2);
                              }
                              §§goto(addr0168);
                           }
                           §§goto(addr0194);
                        }
                        §§goto(addr0152);
                     }
                     §§goto(addr00e2);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr00b2);
            }
            §§goto(addr00e2);
         }
         §§goto(addr00d5);
      }
      
      private static function exit(param1:String) : void
      {
      }
   }
}

