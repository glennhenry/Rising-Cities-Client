package net.bigpoint.cityrama.model.detailViews.vo
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   
   public class EventDetailViewVo
   {
      
      private var _listOfChallenges:Vector.<EventChallengeDetailViewVo>;
      
      private var _eventCharacterGfxId:int;
      
      private var _timeLeft:Number;
      
      private var _fullRuntime:Number;
      
      private var _localeId:String;
      
      private var _questUId:Number;
      
      private var _rewardCollection:ArrayCollection;
      
      public function EventDetailViewVo(param1:Number, param2:String, param3:int, param4:Number, param5:Number, param6:Vector.<EventChallengeDetailViewVo>, param7:ArrayCollection)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         if(_loc8_)
         {
            super();
            if(_loc8_ || Boolean(this))
            {
               this._listOfChallenges = param6;
               if(!(_loc9_ && Boolean(this)))
               {
                  this._questUId = param1;
                  if(!_loc9_)
                  {
                     addr0058:
                     this._localeId = param2;
                     if(!(_loc9_ && Boolean(this)))
                     {
                        this._eventCharacterGfxId = param3;
                        if(_loc8_)
                        {
                           this._timeLeft = param5;
                           if(_loc8_)
                           {
                              addr0093:
                              this._fullRuntime = param4;
                              if(_loc8_ || Boolean(this))
                              {
                                 addr00a8:
                                 this._rewardCollection = param7;
                              }
                              §§goto(addr00af);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr0093);
            }
            §§goto(addr0058);
         }
         addr00af:
      }
      
      public function get currentActiveStage() : int
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:EventChallengeDetailViewVo = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = this._listOfChallenges;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || Boolean(_loc2_)))
               {
                  continue;
               }
               §§push(_loc2_.state);
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  §§push(QuestSystemStateConst.VALID);
                  if(_loc6_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           if(!§§pop())
                           {
                              if(_loc6_ || Boolean(this))
                              {
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(_loc2_.state);
                                 if(!_loc5_)
                                 {
                                    §§push(QuestSystemStateConst.DONE);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc6_)
                                       {
                                          addr00c1:
                                          var _temp_8:* = §§pop();
                                          addr00c2:
                                          §§push(_temp_8);
                                          if(!_temp_8)
                                          {
                                             if(_loc6_ || Boolean(_loc2_))
                                             {
                                                §§pop();
                                                if(!_loc5_)
                                                {
                                                   §§push(_loc2_.state);
                                                   if(_loc6_ || Boolean(_loc2_))
                                                   {
                                                      addr012b:
                                                      §§push(QuestSystemStateConst.SUBMITTED);
                                                      if(!_loc5_)
                                                      {
                                                         addr00fa:
                                                         addr00f9:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc5_ && Boolean(this))
                                                            {
                                                               continue;
                                                            }
                                                            _loc1_++;
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         addr0125:
                                                         addr0121:
                                                         §§push(_loc2_.state);
                                                         §§push(QuestSystemStateConst.VALID);
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc6_ || Boolean(this))
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr0125);
                                                }
                                                §§goto(addr0121);
                                             }
                                          }
                                       }
                                       §§goto(addr00fa);
                                    }
                                    §§goto(addr00f9);
                                 }
                                 §§goto(addr0125);
                              }
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr00fa);
                  }
                  §§goto(addr012b);
               }
               §§goto(addr0125);
            }
            return _loc1_;
         }
         return _loc1_;
      }
      
      public function get currentRewardStage() : int
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:EventChallengeDetailViewVo = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = this._listOfChallenges;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && Boolean(_loc1_))
               {
                  break;
               }
               _loc1_++;
               if(_loc5_ && Boolean(this))
               {
                  break;
               }
               if(_loc2_.state == QuestSystemStateConst.DONE)
               {
                  if(!(_loc5_ && Boolean(this)))
                  {
                     break;
                  }
               }
            }
            return _loc1_;
         }
         return _loc1_;
      }
      
      public function get listOfChallenges() : Vector.<EventChallengeDetailViewVo>
      {
         return this._listOfChallenges;
      }
      
      public function get gfxId() : int
      {
         return this._eventCharacterGfxId;
      }
      
      public function get timeLeft() : Number
      {
         return this._timeLeft;
      }
      
      public function get fullRuntime() : Number
      {
         return this._fullRuntime;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get questUId() : Number
      {
         return this._questUId;
      }
      
      public function get rewardCollection() : ArrayCollection
      {
         return this._rewardCollection;
      }
   }
}

