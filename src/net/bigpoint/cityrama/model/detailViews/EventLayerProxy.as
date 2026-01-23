package net.bigpoint.cityrama.model.detailViews
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.ServerBalanceParameterConstants;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.common.vo.StepMarkerVo;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeStepDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventDetailViewVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestEventPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestTaskItemDTO;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.CitySquareEventFailVo;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.CitySquareEventSelectionVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class EventLayerProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "EventLayerProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && EventLayerProxy))
      {
         NAME = "EventLayerProxy";
      }
      
      private var _eventProxy:EventProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _gsProxy:PlayerGoodsStockProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      public function EventLayerProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            super(param1,param2);
         }
      }
      
      private static function getEventRewards(param1:Vector.<QuestRewardDTO>, param2:String = "smallskin") : ArrayCollection
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:RewardItemComponentVo = null;
         var _loc5_:QuestRewardDTO = null;
         var _loc3_:ArrayCollection = new ArrayCollection();
         for each(_loc5_ in param1)
         {
            _loc4_ = QuestGUIProxy.getRewardVoForQuestReward(_loc5_,param2);
            if(_loc4_)
            {
               if(_loc8_ || EventLayerProxy)
               {
                  _loc3_.addItem(_loc4_);
               }
            }
         }
         if(_loc8_ || Boolean(param2))
         {
            RewardLayerProxy.sortRewardList(_loc3_);
         }
         return _loc3_;
      }
      
      private static function getDrops(param1:QuestChallengeDTO) : Vector.<DropInfoVo>
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:DropInfoVo = null;
         var _loc4_:QuestRewardDTO = null;
         var _loc2_:Vector.<DropInfoVo> = new Vector.<DropInfoVo>();
         for each(_loc4_ in param1.rewards)
         {
            _loc3_ = QuestGUIProxy.getDropInfoForQuestReward(_loc4_);
            if(_loc8_ || Boolean(_loc3_))
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc7_ && EventLayerProxy)
               {
                  continue;
               }
            }
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public static function getTaskUpsellingPrice(param1:Number, param2:Number, param3:Number) : Number
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(!(_loc8_ && Boolean(param3)))
         {
            if(Math.abs(param1) == 0)
            {
               if(!_loc8_)
               {
                  return 0;
               }
            }
         }
         §§push(param2);
         if(_loc7_ || Boolean(param1))
         {
            §§push(§§pop() / param3);
            if(!_loc8_)
            {
               addr0051:
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = 1;
            if(_loc7_ || Boolean(param3))
            {
               §§push(_loc4_);
               if(_loc7_)
               {
                  §§push(0.5);
                  if(!(_loc8_ && Boolean(param3)))
                  {
                     §§push(§§pop() >= §§pop());
                     if(_loc7_ || Boolean(param2))
                     {
                        var _temp_6:* = §§pop();
                        §§push(_temp_6);
                        if(_temp_6)
                        {
                           if(!_loc8_)
                           {
                              addr0099:
                              §§pop();
                              if(_loc7_ || Boolean(param3))
                              {
                                 §§push(_loc4_);
                                 if(!_loc8_)
                                 {
                                    §§push(0.75);
                                    if(_loc7_)
                                    {
                                       addr00b9:
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc7_ || EventLayerProxy)
                                          {
                                             §§push(0.9);
                                             if(!(_loc8_ && Boolean(param3)))
                                             {
                                                §§push(§§pop());
                                                if(!(_loc8_ && Boolean(param2)))
                                                {
                                                   addr00f7:
                                                   _loc5_ = §§pop();
                                                   if(_loc8_ && EventLayerProxy)
                                                   {
                                                      addr011f:
                                                      §§push(0.75);
                                                      if(!(_loc8_ && Boolean(param3)))
                                                      {
                                                         addr0149:
                                                         addr012f:
                                                         §§push(§§pop());
                                                         if(!_loc8_)
                                                         {
                                                            addr0136:
                                                            _loc5_ = §§pop();
                                                            addr0138:
                                                            §§push(Math.ceil(_loc5_ * param1 * ((param3 - param2) / param3)));
                                                         }
                                                         var _loc6_:* = §§pop();
                                                         if(!(_loc8_ && Boolean(param2)))
                                                         {
                                                            §§push(Math.abs(_loc6_));
                                                            if(!(_loc8_ && Boolean(param1)))
                                                            {
                                                               _loc6_ = §§pop();
                                                               §§push(_loc6_);
                                                               if(_loc7_)
                                                               {
                                                                  if(§§pop() < 1)
                                                                  {
                                                                     if(!(_loc8_ && Boolean(param3)))
                                                                     {
                                                                        §§goto(addr01a6);
                                                                     }
                                                                  }
                                                                  §§goto(addr01a4);
                                                               }
                                                            }
                                                            addr01a6:
                                                            §§push(1);
                                                            if(!_loc8_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               addr01a4:
                                                               return _loc6_;
                                                            }
                                                         }
                                                         §§goto(addr01a4);
                                                      }
                                                      §§goto(addr0136);
                                                   }
                                                   §§goto(addr0138);
                                                }
                                                §§goto(addr0149);
                                             }
                                             §§goto(addr00f7);
                                          }
                                          §§goto(addr0138);
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          if(_loc7_)
                                          {
                                             addr0115:
                                             addr0113:
                                             if(§§pop() >= 0.75)
                                             {
                                                if(!_loc8_)
                                                {
                                                   §§goto(addr011f);
                                                }
                                             }
                                             §§goto(addr0138);
                                          }
                                       }
                                       §§goto(addr012f);
                                    }
                                    §§goto(addr0115);
                                 }
                                 §§goto(addr0149);
                              }
                              §§goto(addr0138);
                           }
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0115);
               }
               §§goto(addr0113);
            }
            §§goto(addr0138);
         }
         §§goto(addr0051);
      }
      
      private static function getUpsellingTotalPrice(param1:EventQuestVo) : Number
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc3_:QuestEventPlayerVo = null;
         var _loc4_:QuestChallengeDTO = null;
         var _loc5_:QuestTaskDTO = null;
         if(!(_loc12_ && Boolean(_loc3_)))
         {
            if(!isUpsellingAvailable(param1))
            {
               if(!(_loc12_ && Boolean(param1)))
               {
                  §§push(-1);
                  if(_loc13_ || EventLayerProxy)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0060:
                  §§push(0);
               }
               var _loc2_:* = §§pop();
               for each(_loc3_ in param1.quests)
               {
                  if(!_loc12_)
                  {
                     var _loc8_:int = 0;
                     if(!_loc12_)
                     {
                        for each(_loc4_ in _loc3_.challenges)
                        {
                           §§push(_loc4_.elementState == QuestSystemStateConst.SUBMITTED);
                           if(_loc13_ || Boolean(_loc2_))
                           {
                              §§push(!§§pop());
                              if(!(_loc12_ && EventLayerProxy))
                              {
                                 var _temp_8:* = §§pop();
                                 §§push(_temp_8);
                                 if(_temp_8)
                                 {
                                    if(_loc13_)
                                    {
                                       addr00d6:
                                       §§pop();
                                       if(_loc13_ || Boolean(param1))
                                       {
                                          addr0106:
                                          §§push(_loc4_.elementState == QuestSystemStateConst.DONE);
                                          if(!_loc12_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          if(!_loc13_)
                                          {
                                             continue;
                                          }
                                       }
                                       var _loc10_:int = 0;
                                       if(!(_loc12_ && Boolean(_loc2_)))
                                       {
                                          for each(_loc5_ in _loc4_.tasks)
                                          {
                                             §§push(_loc5_.elementState == QuestSystemStateConst.VALID);
                                             if(_loc13_)
                                             {
                                                §§push(!§§pop());
                                                if(!_loc12_)
                                                {
                                                   var _temp_12:* = §§pop();
                                                   §§push(_temp_12);
                                                   if(_temp_12)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         addr015c:
                                                         §§pop();
                                                         if(!(_loc13_ || Boolean(param1)))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc5_.elementState == QuestSystemStateConst.DONE);
                                                         if(!(_loc12_ && Boolean(param1)))
                                                         {
                                                            addr0185:
                                                            §§push(!§§pop());
                                                         }
                                                      }
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc13_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc2_);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(§§pop() + getTaskUpsellingPrice(_loc5_.taskConfig.instantFinishStartPrice,_loc5_.currentValue,_loc5_.taskConfig.questTaskTarget.target));
                                                      if(!(_loc12_ && Boolean(_loc3_)))
                                                      {
                                                         addr01c5:
                                                         §§push(§§pop());
                                                      }
                                                      _loc2_ = §§pop();
                                                      continue;
                                                   }
                                                   §§goto(addr01c5);
                                                }
                                                §§goto(addr015c);
                                             }
                                             §§goto(addr0185);
                                          }
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr0106);
                              }
                           }
                           §§goto(addr00d6);
                        }
                     }
                  }
               }
               if(!(_loc12_ && Boolean(_loc3_)))
               {
                  §§push(_loc2_);
                  if(_loc13_)
                  {
                     if(§§pop() == 0)
                     {
                        if(_loc13_)
                        {
                           §§goto(addr0215);
                        }
                     }
                     return _loc2_;
                  }
               }
               addr0215:
               return -1;
            }
         }
         §§goto(addr0060);
      }
      
      private static function isUpsellingAvailable(param1:EventQuestVo) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:QuestChallengeDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1.quests[0].challenges;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  §§push(_loc2_.config.requiredForUpsell);
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                        var _temp_1:* = §§pop();
                        §§push(_temp_1);
                        §§push(_temp_1);
                        if(_loc5_ || EventLayerProxy)
                        {
                           if(§§pop())
                           {
                              if(!(_loc5_ || EventLayerProxy))
                              {
                                 break;
                              }
                              §§pop();
                              if(_loc6_)
                              {
                                 continue;
                              }
                              §§push(_loc2_.elementState == QuestSystemStateConst.EXPIRED);
                              if(!_loc6_)
                              {
                                 var _temp_4:* = §§pop();
                                 addr0099:
                                 §§push(_temp_4);
                                 if(!_temp_4)
                                 {
                                    if(!(_loc6_ && EventLayerProxy))
                                    {
                                       addr00ab:
                                       §§pop();
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          addr00c9:
                                          §§push(_loc2_.elementState == QuestSystemStateConst.DONE);
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          addr00da:
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          if(!(_loc5_ || Boolean(_loc3_)))
                                          {
                                             continue;
                                          }
                                       }
                                       §§push(true);
                                       break;
                                    }
                                 }
                              }
                           }
                           §§goto(addr00da);
                        }
                        §§goto(addr0099);
                     }
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr00c9);
            }
            return false;
         }
         return §§pop();
      }
      
      public static function getUpsellingMainReward(param1:EventQuestVo) : QuestRewardDTO
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:QuestChallengeDTO = null;
         var _loc3_:Vector.<QuestRewardDTO> = null;
         var _loc4_:QuestRewardDTO = null;
         for each(_loc2_ in param1.quests[0].challenges)
         {
            _loc3_ = _loc2_.rewards;
            if(!_loc10_)
            {
               var _loc7_:int = 0;
               if(!_loc10_)
               {
                  for each(_loc4_ in _loc3_)
                  {
                     if(_loc4_.isMainReward)
                     {
                        if(_loc9_ || EventLayerProxy)
                        {
                           return _loc4_;
                        }
                     }
                  }
               }
            }
         }
         return null;
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
            if(_loc1_)
            {
               §§goto(addr003e);
            }
            §§goto(addr007d);
         }
         addr003e:
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         if(!(_loc2_ && _loc2_))
         {
            this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
            if(_loc1_)
            {
               addr007d:
               this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
            }
         }
      }
      
      public function getCitySquareDetailViewVoById(param1:Number) : CitySquareDetailViewVo
      {
         return this.buildCitySquareDetailViewVo(new <EventQuestVo>[this._eventProxy.eventById(param1)]);
      }
      
      public function getCitySquareDetailViewVo(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false) : CitySquareDetailViewVo
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:EventQuestVo = null;
         var _loc4_:Vector.<EventQuestVo> = new Vector.<EventQuestVo>();
         if(_loc8_)
         {
            §§push(param1);
            if(!(_loc9_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(_loc8_)
                  {
                     _loc4_.push(this._eventProxy.runningEventQuest);
                     if(_loc8_)
                     {
                     }
                  }
                  else
                  {
                     addr0079:
                     _loc4_.push(this._eventProxy.finishedEventQuest);
                     if(!_loc8_)
                     {
                        addr009a:
                        _loc4_.push(this._eventProxy.expiredEventQuest);
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc9_ && param3))
                  {
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§goto(addr0079);
                        }
                     }
                     else
                     {
                        addr0090:
                        if(param3)
                        {
                           if(_loc8_)
                           {
                              §§goto(addr009a);
                           }
                        }
                        else
                        {
                           _loc4_ = this._eventProxy.availableEventQuests;
                        }
                     }
                     var _loc6_:int = 0;
                     var _loc7_:* = _loc4_;
                     §§goto(addr00b6);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr00b6);
            }
            §§goto(addr0090);
         }
         addr00b6:
         while(true)
         {
            for each(_loc5_ in _loc7_)
            {
               if(_loc5_ == null)
               {
                  if(_loc8_)
                  {
                     §§push(null);
                     if(_loc8_ || param1)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  continue;
               }
               §§push(param1);
               if(_loc8_)
               {
                  §§push(§§pop());
                  if(_loc8_ || param1)
                  {
                     addr011b:
                     var _temp_6:* = §§pop();
                     §§push(_temp_6);
                     if(_temp_6)
                     {
                        if(_loc8_ || Boolean(this))
                        {
                           §§pop();
                           if(!(_loc8_ || Boolean(this)))
                           {
                              continue;
                           }
                           §§push(_loc5_.currentState == QuestSystemStateConst.VALID);
                           if(_loc8_)
                           {
                              §§push(!§§pop());
                           }
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc8_ || param2)
                     {
                        §§push(null);
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr011b);
            }
            return this.buildCitySquareDetailViewVo(_loc4_);
         }
         return §§pop();
      }
      
      private function buildCitySquareDetailViewVo(param1:Vector.<EventQuestVo>) : CitySquareDetailViewVo
      {
         §§push(false);
         var _loc32_:Boolean = true;
         var _loc33_:* = §§pop();
         var _loc2_:CitySquareDetailViewVo = null;
         var _loc6_:EventQuestVo = null;
         var _loc7_:ArrayCollection = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:EventChallengeStepDetailViewVo = null;
         var _loc11_:QuestEventPlayerVo = null;
         var _loc12_:EventDetailViewVo = null;
         var _loc13_:* = 0;
         var _loc14_:QuestChallengeDTO = null;
         var _loc15_:String = null;
         var _loc16_:QuestTaskDTO = null;
         var _loc17_:* = NaN;
         var _loc18_:IQuestTaskItemDTO = null;
         var _loc19_:* = NaN;
         var _loc20_:GoodObjectVo = null;
         var _loc21_:* = 0;
         var _loc3_:Vector.<EventDetailViewVo> = new Vector.<EventDetailViewVo>();
         var _loc4_:Vector.<EventChallengeDetailViewVo> = new Vector.<EventChallengeDetailViewVo>();
         var _loc5_:Vector.<EventChallengeStepDetailViewVo> = new Vector.<EventChallengeStepDetailViewVo>();
         for each(_loc6_ in param1)
         {
            if(_loc6_ == null)
            {
               if(!_loc33_)
               {
                  return null;
               }
            }
            _loc7_ = getEventRewards(_loc6_.quests[0].challenges[_loc6_.quests[0].challenges.length - 1].rewards);
            if(_loc32_ || Boolean(param1))
            {
               §§push(0);
               if(_loc32_ || Boolean(_loc3_))
               {
                  §§push(§§pop());
                  if(!_loc33_)
                  {
                     _loc8_ = §§pop();
                     if(!(_loc33_ && Boolean(_loc3_)))
                     {
                        §§push(0);
                        if(!_loc33_)
                        {
                           §§push(§§pop());
                           if(!(_loc33_ && Boolean(_loc3_)))
                           {
                              _loc9_ = §§pop();
                              if(_loc32_)
                              {
                                 §§push(_loc6_.configDto);
                                 if(!_loc33_)
                                 {
                                    if(§§pop() != null)
                                    {
                                       if(_loc32_)
                                       {
                                          addr014f:
                                          §§push(_loc6_.configDto);
                                          if(!_loc33_)
                                          {
                                             §§push(§§pop().totalAvailabilityTime);
                                             if(_loc32_ || Boolean(param1))
                                             {
                                                §§push(§§pop());
                                                if(_loc32_ || Boolean(_loc2_))
                                                {
                                                   addr017a:
                                                   _loc8_ = §§pop();
                                                   if(_loc32_ || Boolean(_loc3_))
                                                   {
                                                      addr018f:
                                                      §§push(_loc6_.configDto.totalAvailabilityTime);
                                                      if(!_loc33_)
                                                      {
                                                         addr0198:
                                                         §§push(_loc6_.configDto.availabilityTimeStart);
                                                         if(_loc32_ || Boolean(_loc2_))
                                                         {
                                                            §§push(this._timerProxy);
                                                            if(!_loc33_)
                                                            {
                                                               §§push(§§pop().eventTimer);
                                                               if(!(_loc33_ && Boolean(param1)))
                                                               {
                                                                  §§push(§§pop() * 1000);
                                                                  if(!(_loc33_ && Boolean(param1)))
                                                                  {
                                                                     addr0202:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc33_ && Boolean(param1)))
                                                                     {
                                                                        addr01f1:
                                                                        addr01ee:
                                                                        addr01ea:
                                                                        §§push(§§pop() - this._timerProxy.currentTimeStamp);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc32_ || Boolean(_loc2_))
                                                                     {
                                                                        addr0201:
                                                                        §§push(§§pop());
                                                                     }
                                                                     _loc9_ = §§pop();
                                                                     if(_loc32_ || Boolean(this))
                                                                     {
                                                                        addr0214:
                                                                        var _loc24_:int = 0;
                                                                        addr0212:
                                                                        if(_loc32_ || Boolean(_loc3_))
                                                                        {
                                                                           for each(_loc11_ in _loc6_.quests)
                                                                           {
                                                                              if(!_loc33_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc33_)
                                                                                 {
                                                                                    _loc13_ = §§pop();
                                                                                    if(!(_loc32_ || Boolean(this)))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr0259:
                                                                                    §§push(0);
                                                                                 }
                                                                                 var _loc26_:* = §§pop();
                                                                                 if(_loc32_)
                                                                                 {
                                                                                    var _loc27_:* = _loc11_.challenges;
                                                                                    for(; §§hasnext(_loc27_,_loc26_); _loc5_ = new Vector.<EventChallengeStepDetailViewVo>())
                                                                                    {
                                                                                       _loc14_ = §§nextvalue(_loc26_,_loc27_);
                                                                                       if(!(_loc33_ && Boolean(param1)))
                                                                                       {
                                                                                          _loc13_++;
                                                                                          if(_loc32_)
                                                                                          {
                                                                                             _loc15_ = "";
                                                                                             if(_loc32_)
                                                                                             {
                                                                                                addr02a7:
                                                                                                var _loc28_:int = 0;
                                                                                                if(_loc32_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   for each(_loc16_ in _loc14_.tasks)
                                                                                                   {
                                                                                                      if(!(_loc33_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc32_ || Boolean(this))
                                                                                                         {
                                                                                                            var _loc30_:* = §§pop();
                                                                                                            if(_loc32_)
                                                                                                            {
                                                                                                               for each(_loc18_ in _loc16_.taskConfig.questTaskTarget.questTaskItem)
                                                                                                               {
                                                                                                                  _loc20_ = this.goodStockProxy.getGoodByConfigId(_loc18_.questTaskItemID);
                                                                                                                  §§push(_loc20_.playerStock);
                                                                                                                  if(!_loc33_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                  }
                                                                                                                  _loc21_ = §§pop();
                                                                                                               }
                                                                                                            }
                                                                                                            if(!_loc33_)
                                                                                                            {
                                                                                                               §§push(_loc16_.taskConfig);
                                                                                                               if(!_loc33_)
                                                                                                               {
                                                                                                                  if(§§pop().questElementSubType == QuestSystemTypeConstants.SUB_TYPE_DEPOSIT_GOOD)
                                                                                                                  {
                                                                                                                     if(_loc32_)
                                                                                                                     {
                                                                                                                        §§push("SPEND_GOODS");
                                                                                                                        if(_loc33_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr0373:
                                                                                                                        _loc15_ = §§pop();
                                                                                                                        if(_loc32_ || Boolean(_loc3_))
                                                                                                                        {
                                                                                                                           addr0384:
                                                                                                                           §§push(_loc16_.currentValue);
                                                                                                                           if(!(_loc33_ && Boolean(_loc2_)))
                                                                                                                           {
                                                                                                                              _loc19_ = §§pop();
                                                                                                                              if(_loc32_)
                                                                                                                              {
                                                                                                                                 addr03a0:
                                                                                                                                 if(_loc16_.elementState == QuestSystemStateConst.DONE)
                                                                                                                                 {
                                                                                                                                    if(_loc32_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       addr03c9:
                                                                                                                                       _loc19_ = _loc16_.taskConfig.questTaskTarget.target;
                                                                                                                                       addr03bd:
                                                                                                                                       addr03c2:
                                                                                                                                       addr03c8:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr03cb:
                                                                                                                                 _loc10_ = new EventChallengeStepDetailViewVo(_loc20_.config.id,_loc20_.gfxId,_loc20_.localeId,_loc21_,_loc19_,_loc16_.taskConfig.questTaskTarget.target,_loc20_.config.isEventGood,this._eventProxy.currentRunningEventQuestLocaleId,this._eventProxy.currentRunningEventQuestGfxId);
                                                                                                                                 _loc10_.questElementId = _loc16_.configQuestTaskID;
                                                                                                                                 if(!(_loc33_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    _loc10_.questType = _loc11_.questDto.config.questElementSubType;
                                                                                                                                    if(!(_loc33_ && Boolean(_loc2_)))
                                                                                                                                    {
                                                                                                                                       _loc10_.questId = _loc11_.questDto.id;
                                                                                                                                       if(_loc33_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       _loc10_.instantFinishPrice = getTaskUpsellingPrice(_loc16_.taskConfig.instantFinishStartPrice,_loc10_.eventStock,_loc10_.eventStockTarget);
                                                                                                                                       if(!_loc32_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       _loc10_.upsellingAffordable = this._resourceProxy.realCurrency >= _loc10_.instantFinishPrice;
                                                                                                                                       if(!_loc32_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    _loc5_.push(_loc10_);
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr03bd);
                                                                                                                           }
                                                                                                                           §§goto(addr03c9);
                                                                                                                        }
                                                                                                                        §§goto(addr03cb);
                                                                                                                     }
                                                                                                                     §§goto(addr03a0);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push("");
                                                                                                                  }
                                                                                                                  §§goto(addr0373);
                                                                                                               }
                                                                                                               §§goto(addr03c2);
                                                                                                            }
                                                                                                            §§goto(addr0384);
                                                                                                         }
                                                                                                         §§goto(addr03c8);
                                                                                                      }
                                                                                                      §§goto(addr03a0);
                                                                                                   }
                                                                                                }
                                                                                                if(!_loc33_)
                                                                                                {
                                                                                                   addr04a5:
                                                                                                   §§push(_loc11_.questDto.endTimeStamp - this._timerProxy.currentTimeStamp);
                                                                                                   if(_loc32_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                   }
                                                                                                   _loc17_ = §§pop();
                                                                                                   if(_loc33_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                _loc4_.push(new EventChallengeDetailViewVo(_loc14_.config.id,_loc11_.config.gfxId,_loc11_.config.localizationIdentifier,_loc14_.config.localizationIdentifier,_loc11_.config.runtimeFull,_loc17_,_loc5_,getEventRewards(_loc14_.rewards),_loc14_.elementState,_loc15_,_loc11_.challenges.length,_loc13_,getDrops(_loc14_)));
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr04a5);
                                                                                          }
                                                                                          §§goto(addr02a7);
                                                                                       }
                                                                                       §§goto(addr04a5);
                                                                                    }
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr0259);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr054a:
                                                                     _loc12_ = new EventDetailViewVo(_loc11_.config.id,_loc11_.config.localizationIdentifier,_loc11_.config.gfxId,_loc8_,_loc9_,_loc4_,_loc7_);
                                                                     if(!(_loc33_ && Boolean(param1)))
                                                                     {
                                                                        _loc3_.push(_loc12_);
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr01f1);
                                                            }
                                                            §§goto(addr01ee);
                                                         }
                                                         §§goto(addr01ea);
                                                      }
                                                      §§goto(addr0201);
                                                   }
                                                   §§goto(addr054a);
                                                }
                                                §§goto(addr0198);
                                             }
                                             §§goto(addr0202);
                                          }
                                          §§goto(addr018f);
                                       }
                                       §§goto(addr054a);
                                    }
                                    §§goto(addr0212);
                                 }
                                 §§goto(addr018f);
                              }
                              §§goto(addr014f);
                           }
                           §§goto(addr0202);
                        }
                        §§goto(addr0214);
                     }
                     §§goto(addr0212);
                  }
                  §§goto(addr017a);
               }
               §§goto(addr0214);
            }
            §§goto(addr0212);
         }
         return new CitySquareDetailViewVo(_loc3_,this._timerProxy.eventTimer);
      }
      
      public function getUpsellingCitySquareDetailViewVo() : CitySquareDetailViewVo
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:Vector.<EventDetailViewVo> = new Vector.<EventDetailViewVo>();
         var _loc2_:EventQuestVo = this._eventProxy.expiredEventQuest;
         var _loc3_:QuestEventPlayerVo = _loc2_.quests[0];
         var _loc4_:QuestRewardDTO = EventLayerProxy.getUpsellingMainReward(this._eventProxy.expiredEventQuest);
         var _loc5_:EventDetailViewVo = new EventDetailViewVo(_loc3_.config.id,_loc3_.config.localizationIdentifier,_loc3_.config.gfxId,0,0,null,getEventRewards(new <QuestRewardDTO>[_loc4_]));
         if(_loc8_)
         {
            _loc1_.push(_loc5_);
         }
         return new CitySquareDetailViewVo(_loc1_,this._timerProxy.eventTimer);
      }
      
      public function getCitySquareEventFailVo() : CitySquareEventFailVo
      {
         var _temp_1:* = true;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = _temp_1;
         var _loc7_:QuestChallengeDTO = null;
         var _loc8_:Vector.<QuestRewardDTO> = null;
         var _loc9_:QuestRewardDTO = null;
         var _loc10_:QuestTaskDTO = null;
         var _loc11_:ArrayCollection = null;
         var _loc12_:TimerBarComponentVo = null;
         var _loc1_:CitySquareEventFailVo = new CitySquareEventFailVo();
         var _loc2_:EventQuestVo = this._eventProxy.expiredEventQuest;
         if(_loc18_ || _loc3_)
         {
            if(_loc2_ == null)
            {
               if(!(_loc17_ && _loc3_))
               {
                  §§goto(addr0072);
               }
            }
            var _loc3_:StepMarkerVo = new StepMarkerVo();
            var _loc4_:* = 0;
            var _loc5_:* = 0;
            var _loc6_:int = 0;
            for each(_loc7_ in _loc2_.quests[0].challenges)
            {
               if(!(_loc18_ || Boolean(_loc1_)))
               {
                  continue;
               }
               §§push(_loc6_);
               if(!(_loc17_ && Boolean(this)))
               {
                  if(§§pop() == _loc2_.quests[0].challenges.length - 1)
                  {
                     if(_loc18_)
                     {
                        _loc3_.stepInactiveStyles.push("challengeInactiveLastFail");
                        if(_loc18_)
                        {
                           _loc3_.stepActiveStyles.push("lastActive");
                           if(!(_loc18_ || Boolean(_loc3_)))
                           {
                              addr0137:
                              _loc3_.stepActiveStyles.push("active");
                              if(_loc17_)
                              {
                                 continue;
                              }
                           }
                           addr0147:
                           _loc3_.hasLastInterval = false;
                           if(!_loc17_)
                           {
                              addr0154:
                              var _loc15_:int = 0;
                              if(_loc18_ || Boolean(_loc1_))
                              {
                                 for each(_loc10_ in _loc7_.tasks)
                                 {
                                    if(!_loc17_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc18_)
                                       {
                                          §§push(_loc10_.taskConfig);
                                          if(!(_loc17_ && Boolean(this)))
                                          {
                                             §§push(§§pop().questTaskTarget);
                                             if(_loc18_ || Boolean(_loc1_))
                                             {
                                                §§push(§§pop().target);
                                                if(!(_loc17_ && Boolean(_loc2_)))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc17_ && Boolean(this)))
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc17_)
                                                      {
                                                         addr01d4:
                                                         _loc5_ = §§pop();
                                                         if(_loc17_ && Boolean(this))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc7_.elementState == QuestSystemStateConst.DONE);
                                                         if(_loc18_ || Boolean(_loc3_))
                                                         {
                                                            var _temp_14:* = §§pop();
                                                            §§push(_temp_14);
                                                            if(!_temp_14)
                                                            {
                                                               if(_loc18_)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr0228:
                                                                     addr0210:
                                                                     if(_loc7_.elementState == QuestSystemStateConst.SUBMITTED)
                                                                     {
                                                                        if(_loc18_ || Boolean(_loc1_))
                                                                        {
                                                                           addr023a:
                                                                           §§push(_loc4_);
                                                                           if(_loc18_ || Boolean(_loc2_))
                                                                           {
                                                                              addr0255:
                                                                              addr0252:
                                                                              addr024f:
                                                                              §§push(§§pop() + _loc10_.taskConfig.questTaskTarget.target);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 addr025c:
                                                                                 §§push(§§pop());
                                                                                 if(_loc18_ || Boolean(_loc3_))
                                                                                 {
                                                                                    addr026b:
                                                                                    _loc4_ = §§pop();
                                                                                    if(_loc17_ && Boolean(_loc3_))
                                                                                    {
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr028f:
                                                                                 §§push(§§pop() + _loc10_.currentValue);
                                                                                 if(!(_loc17_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    addr02a3:
                                                                                    §§push(§§pop());
                                                                                 }
                                                                              }
                                                                           }
                                                                           _loc4_ = §§pop();
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§push(_loc4_);
                                                                     if(_loc18_ || Boolean(_loc3_))
                                                                     {
                                                                        §§goto(addr028f);
                                                                     }
                                                                     §§goto(addr02a3);
                                                                  }
                                                                  §§goto(addr023a);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0228);
                                                      }
                                                      §§goto(addr025c);
                                                   }
                                                   §§goto(addr026b);
                                                }
                                                §§goto(addr0255);
                                             }
                                             §§goto(addr0252);
                                          }
                                          §§goto(addr024f);
                                       }
                                       §§goto(addr01d4);
                                    }
                                    §§goto(addr0210);
                                 }
                              }
                              if(!_loc18_)
                              {
                                 continue;
                              }
                              addr02b7:
                              _loc3_.progressSteps.push(_loc5_);
                              if(!(_loc18_ || Boolean(_loc3_)))
                              {
                                 continue;
                              }
                           }
                        }
                        _loc6_++;
                        continue;
                     }
                     §§goto(addr02b7);
                  }
                  else
                  {
                     _loc3_.stepInactiveStyles.push("challengeInactiveFail");
                     if(_loc18_ || Boolean(_loc3_))
                     {
                        §§goto(addr0137);
                     }
                  }
                  §§goto(addr0147);
               }
               §§goto(addr0154);
            }
            if(!_loc17_)
            {
               _loc3_.currentProgress = _loc4_;
               if(_loc18_)
               {
                  _loc1_.eventProgress = _loc3_;
               }
            }
            _loc8_ = new Vector.<QuestRewardDTO>();
            _loc9_ = getUpsellingMainReward(_loc2_);
            if(_loc9_ == null)
            {
               throw new RamaCityError("Event Upselling: THERE IS NO MAIN REWARD! EVERY EVENT NEEDS A MAIN REWARD NOW");
            }
            if(_loc18_)
            {
               _loc8_.push(_loc9_);
               if(_loc18_ || Boolean(_loc3_))
               {
                  _loc11_ = getEventRewards(_loc8_,RewardItemComponentVo.SIZE_BIG);
                  if(!_loc17_)
                  {
                     _loc1_.rewardData = _loc11_[0];
                  }
                  _loc12_ = new TimerBarComponentVo();
                  _loc12_.startTime = _loc2_.quests[0].questDto.endTimeStamp;
                  if(!(_loc17_ && Boolean(_loc3_)))
                  {
                     _loc12_.cycleLength = this._configProxy.config.balanceParameters[ServerBalanceParameterConstants.UPSELLING_OVERTIME].value;
                     if(!_loc17_)
                     {
                        §§push(_loc12_);
                        §§push(_loc12_.startTime);
                        if(!_loc17_)
                        {
                           §§push(§§pop() + _loc12_.cycleLength);
                        }
                        §§pop().targetTime = §§pop();
                        if(!_loc17_)
                        {
                           _loc12_.currentTime = this._timerProxy.currentTimeStamp;
                           if(!_loc17_)
                           {
                              _loc1_.timerData = _loc12_;
                              if(_loc18_)
                              {
                                 if(_loc12_.currentTime > _loc12_.targetTime)
                                 {
                                    if(_loc18_)
                                    {
                                       addr03f0:
                                       _loc1_.price = -1;
                                       if(_loc18_ || Boolean(_loc2_))
                                       {
                                          addr0442:
                                          §§push(_loc1_);
                                          §§push(§§findproperty(BriskDynaVo));
                                          §§push(_loc2_.quests[0].config.gfxId + "_gui_popup_events");
                                          §§push("fail_");
                                          if(!_loc17_)
                                          {
                                             §§push(§§pop() + _loc2_.currentRewardStage);
                                          }
                                          §§pop().polaroidData = new §§pop().BriskDynaVo(§§pop(),§§pop(),_loc2_.quests[0].config.gfxId.toString());
                                       }
                                    }
                                    §§goto(addr048d);
                                 }
                                 else
                                 {
                                    _loc1_.price = getUpsellingTotalPrice(_loc2_);
                                    if(_loc18_)
                                    {
                                       _loc1_.affordable = this._resourceProxy.realCurrency >= _loc1_.price;
                                       if(_loc18_)
                                       {
                                          §§goto(addr0442);
                                       }
                                       §§goto(addr048d);
                                    }
                                 }
                                 §§goto(addr0442);
                              }
                           }
                        }
                        addr048d:
                        return _loc1_;
                     }
                     §§goto(addr0442);
                  }
                  §§goto(addr03f0);
               }
            }
            §§goto(addr0442);
         }
         addr0072:
         throw new RamaCityError("Event Upselling: THERE IS NO EXPIRED EVENT QUEST");
      }
      
      public function getCitysquareEventSelectionVo() : CitySquareEventSelectionVo
      {
         return new CitySquareEventSelectionVo(this._eventProxy.allEventQuests,this._eventProxy.upcomingEventQuests,this._timerProxy.currentTimeStamp);
      }
      
      private function get goodStockProxy() : PlayerGoodsStockProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._gsProxy);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     this._gsProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                  }
               }
               addr0044:
               return this._gsProxy;
            }
         }
         §§goto(addr0044);
      }
   }
}

