package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.model.server.interfaces.*;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestBookDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.*;
   import net.bigpoint.util.*;
   
   public class QuestBookServerDTO implements ILoggableObject, IQuestBookDTO
   {
      
      private var _list:Vector.<QuestDTO>;
      
      private var _type:String;
      
      private var _history:Vector.<QuestHistoryVo>;
      
      public function QuestBookServerDTO(param1:Object)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:QuestDTO = null;
         var _loc5_:QuestHistoryVo = null;
         if(_loc8_ || Boolean(param1))
         {
            super();
            if(!_loc9_)
            {
               this._type = param1.t;
               if(_loc8_ || Boolean(_loc2_))
               {
                  this._list = new Vector.<QuestDTO>();
                  if(!(_loc9_ && Boolean(_loc2_)))
                  {
                     addr0074:
                     this._history = new Vector.<QuestHistoryVo>();
                  }
                  addr0083:
                  var _loc6_:int = 0;
                  var _loc7_:* = param1.q;
                  loop0:
                  while(true)
                  {
                     §§push(§§hasnext(_loc7_,_loc6_));
                     if(_loc9_ && Boolean(_loc2_))
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        _loc2_ = §§nextvalue(_loc6_,_loc7_);
                        _loc4_ = new QuestDTO(_loc2_);
                        if(!(_loc9_ && Boolean(param1)))
                        {
                           this._list.push(_loc4_);
                        }
                        continue;
                     }
                     if(_loc8_ || Boolean(this))
                     {
                        if(_loc8_)
                        {
                           if(!_loc9_)
                           {
                              _loc6_ = 0;
                              if(_loc8_)
                              {
                                 _loc7_ = param1.h;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc7_,_loc6_));
                                    break loop0;
                                 }
                                 addr014f:
                                 addr0148:
                              }
                              addr0151:
                           }
                           return;
                        }
                        §§goto(addr0151);
                     }
                     §§goto(addr014f);
                  }
                  while(§§pop())
                  {
                     _loc3_ = §§nextvalue(_loc6_,_loc7_);
                     _loc5_ = new QuestHistoryVo(_loc3_);
                     if(_loc8_)
                     {
                        this._history.push(_loc5_);
                     }
                     §§goto(addr0148);
                  }
                  §§goto(addr014f);
               }
            }
            §§goto(addr0074);
         }
         §§goto(addr0083);
      }
      
      public function log(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:QuestDTO = null;
         if(!(_loc6_ && Boolean(param2)))
         {
            CityramaLogger.logger.log(param1,CityramaLogger.generatesSpaces(param2) + "QuestBookVo:");
         }
         for each(_loc3_ in this._list)
         {
            if(!(_loc6_ && Boolean(this)))
            {
               _loc3_.log(param1,param2 + 1);
            }
         }
      }
      
      public function get history() : Vector.<QuestHistoryVo>
      {
         return this._history;
      }
      
      public function get list() : Vector.<QuestDTO>
      {
         return this._list;
      }
      
      public function get type() : String
      {
         return this._type;
      }
   }
}

