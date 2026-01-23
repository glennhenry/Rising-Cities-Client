package net.bigpoint.cityrama.model.detailViews
{
   import flash.utils.Dictionary;
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemOrderConst;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestTaskVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.quest.QuestSystemTaskTargetTypeConstants;
   import net.bigpoint.cityrama.model.quest.vo.QuestVirtualTaskVo;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardInfoVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestTaskItemDTO;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class QuestGUIProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "QuestGUIProxy";
      
      public static const GFXID_PRODUCTION_TASK:int = 51028;
      
      public static const GFXID_SELLING_TASK:int = 51029;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || QuestGUIProxy)
      {
         NAME = "QuestGUIProxy";
         if(!(_loc2_ && QuestGUIProxy))
         {
            GFXID_PRODUCTION_TASK = 51028;
            if(_loc1_)
            {
               addr0049:
               GFXID_SELLING_TASK = 51029;
            }
         }
         return;
      }
      §§goto(addr0049);
      
      private var _configProxy:GameConfigProxy;
      
      private var _questProxy:QuestProxy;
      
      private var _playerResourceProxy:PlayerResourceProxy;
      
      private var _stockProxy:PlayerGoodsStockProxy;
      
      private var _serverStorageProxy:ServerStorageProxy;
      
      private var _questDetailsDict:Dictionary;
      
      public function QuestGUIProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      private static function calculateCurrentSkipCosts(param1:QuestTaskDTO) : Number
      {
         return EventLayerProxy.getTaskUpsellingPrice(param1.taskConfig.instantFinishStartPrice,param1.currentValue,param1.taskConfig.questTaskTarget.target);
      }
      
      private static function checkTasks(param1:QuestPlayerVo, param2:Array) : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc4_:QuestTaskVo = null;
         var _loc5_:* = 0;
         var _loc6_:QuestTaskVo = null;
         var _loc7_:* = 0;
         var _loc8_:QuestTaskVo = null;
         var _loc3_:QuestTaskVo = null;
         if(_loc13_)
         {
            if(param1.config.downstreamElementOrder == QuestSystemOrderConst.SERIAL)
            {
               addr004b:
               var _loc9_:* = 0;
               var _loc10_:* = param2;
               loop7:
               while(true)
               {
                  §§push(§§hasnext(_loc10_,_loc9_));
                  if(_loc14_ && Boolean(param1))
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     if(!_loc14_)
                     {
                        if(!_loc14_)
                        {
                           if(!(_loc14_ && Boolean(_loc3_)))
                           {
                              §§goto(addr03bd);
                           }
                           QuestTaskVo(param2[_loc7_]).isCompleted = false;
                           if(!(_loc14_ && Boolean(_loc3_)))
                           {
                              while(true)
                              {
                                 QuestTaskVo(param2[_loc7_]).isLocked = true;
                                 if(_loc13_)
                                 {
                                    do
                                    {
                                       _loc7_++;
                                    }
                                    while(!_loc14_);
                                    
                                    addr03bd:
                                    addr0132:
                                    §§push(0);
                                    if(_loc13_ || Boolean(param1))
                                    {
                                       _loc9_ = §§pop();
                                       if(!_loc14_)
                                       {
                                          §§push(param2);
                                          if(!_loc14_)
                                          {
                                             _loc10_ = §§pop();
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc10_,_loc9_));
                                                if(_loc13_ || Boolean(param2))
                                                {
                                                   break loop7;
                                                }
                                                addr03fa:
                                                while(§§pop())
                                                {
                                                   _loc8_ = §§nextvalue(_loc9_,_loc10_);
                                                   _loc8_.isCompleted = true;
                                                   if(!_loc14_)
                                                   {
                                                      _loc8_.isActive = false;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc10_,_loc9_));
                                                      break;
                                                   }
                                                }
                                                §§goto(addr0400);
                                             }
                                             addr02a3:
                                          }
                                          addr03d4:
                                          _loc10_ = §§pop();
                                          §§goto(addr03f7);
                                       }
                                       addr03d3:
                                       §§goto(addr03d4);
                                       §§push(param2);
                                    }
                                    _loc9_ = §§pop();
                                    if(_loc13_)
                                    {
                                       §§goto(addr03d3);
                                    }
                                    addr0400:
                                    return;
                                    §§push(0);
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(_loc7_);
                              if(!_loc13_)
                              {
                                 break;
                              }
                              if(§§pop() >= param2.length)
                              {
                                 if(_loc13_ || Boolean(_loc3_))
                                 {
                                    addr03a7:
                                    if(param1.state == QuestSystemStateConst.DONE)
                                    {
                                       if(!_loc14_)
                                       {
                                          §§goto(addr03bb);
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 QuestTaskVo(param2[_loc7_]).isActive = false;
                                 if(!_loc14_)
                                 {
                                    §§goto(addr034c);
                                 }
                              }
                              §§goto(addr0400);
                              addr034c:
                           }
                           §§goto(addr03bd);
                           addr038a:
                        }
                        addr02ce:
                        if(_loc13_ || Boolean(param1))
                        {
                           if(param1.config.downstreamElementOrder == QuestSystemOrderConst.SERIAL)
                           {
                              if(!_loc14_)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc13_ || Boolean(_loc3_))
                                    {
                                       §§push(int(param2.indexOf(_loc3_) + 1));
                                       if(_loc13_ || Boolean(param2))
                                       {
                                          _loc7_ = §§pop();
                                          if(_loc13_ || Boolean(_loc3_))
                                          {
                                             §§goto(addr038a);
                                          }
                                          §§goto(addr036b);
                                       }
                                       §§goto(addr03bd);
                                    }
                                    §§goto(addr0382);
                                 }
                                 §§goto(addr03a7);
                              }
                              §§goto(addr038a);
                           }
                           §§goto(addr03a7);
                        }
                        §§goto(addr038a);
                     }
                     addr02c6:
                     if(!_loc14_)
                     {
                        §§goto(addr02ce);
                     }
                     §§goto(addr0400);
                  }
                  else
                  {
                     _loc4_ = §§nextvalue(_loc9_,_loc10_);
                     if(!_loc4_.isCompleted)
                     {
                        continue;
                     }
                     if(!(_loc14_ && Boolean(_loc3_)))
                     {
                        §§push(0);
                        if(!_loc14_)
                        {
                           _loc5_ = §§pop();
                           if(_loc13_ || Boolean(param2))
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 addr00f4:
                                 while(§§pop() < param2.indexOf(_loc4_))
                                 {
                                    QuestTaskVo(param2[_loc5_]).isCompleted = true;
                                    if(!(_loc13_ || Boolean(_loc3_)))
                                    {
                                       continue loop8;
                                    }
                                 }
                                 continue loop7;
                              }
                              addr00f2:
                           }
                           while(true)
                           {
                              QuestTaskVo(param2[_loc5_]).isActive = false;
                              if(_loc13_ || QuestGUIProxy)
                              {
                                 QuestTaskVo(param2[_loc5_]).isLocked = false;
                                 if(!_loc14_)
                                 {
                                    do
                                    {
                                       _loc5_++;
                                    }
                                    while(_loc13_);
                                    
                                    continue loop7;
                                    addr00ea:
                                 }
                                 §§goto(addr00f2);
                              }
                              §§goto(addr00ea);
                           }
                        }
                        §§goto(addr00f4);
                     }
                     §§goto(addr00ea);
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!(_loc14_ && Boolean(param2)))
                     {
                        §§goto(addr02c6);
                     }
                     §§goto(addr0400);
                  }
                  else
                  {
                     _loc4_ = §§nextvalue(_loc9_,_loc10_);
                     if(_loc4_.isCompleted)
                     {
                        if(!(_loc14_ && Boolean(param2)))
                        {
                           _loc4_.isActive = false;
                           if(!_loc14_)
                           {
                              _loc4_.isLocked = false;
                              if(!_loc14_)
                              {
                                 §§push(param2);
                                 if(_loc13_)
                                 {
                                    if(§§pop().indexOf(_loc4_) + 1 < param2.length)
                                    {
                                       if(!(_loc14_ && Boolean(_loc3_)))
                                       {
                                          _loc3_ = QuestTaskVo(param2[param2.indexOf(_loc4_) + 1]);
                                          if(!_loc14_)
                                          {
                                             QuestTaskVo(param2[param2.indexOf(_loc4_) + 1]).isActive = true;
                                          }
                                          addr01fb:
                                          if(!_loc3_)
                                          {
                                             if(!(_loc14_ && Boolean(param2)))
                                             {
                                                addr020e:
                                                var _loc11_:int = 0;
                                                if(!(_loc14_ && Boolean(param1)))
                                                {
                                                   for each(_loc6_ in param2)
                                                   {
                                                      _loc6_.isActive = false;
                                                      if(_loc13_)
                                                      {
                                                         _loc6_.isLocked = false;
                                                      }
                                                   }
                                                }
                                                if(_loc13_)
                                                {
                                                   addr0255:
                                                   addr0256:
                                                   if(param2.length)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         addr0262:
                                                         QuestTaskVo(param2[0]).isActive = true;
                                                         if(_loc13_ || Boolean(param2))
                                                         {
                                                            QuestTaskVo(param2[0]).isLocked = false;
                                                         }
                                                      }
                                                      addr0292:
                                                      _loc3_ = QuestTaskVo(param2[0]);
                                                   }
                                                   §§goto(addr02a3);
                                                }
                                                §§goto(addr0292);
                                             }
                                             §§goto(addr0262);
                                          }
                                          §§goto(addr02a3);
                                       }
                                       §§goto(addr0255);
                                    }
                                    §§goto(addr01fb);
                                 }
                                 §§goto(addr0256);
                              }
                           }
                           §§goto(addr020e);
                        }
                        §§goto(addr0292);
                     }
                     §§goto(addr01fb);
                  }
               }
               §§goto(addr03fa);
            }
            §§goto(addr0132);
         }
         §§goto(addr004b);
      }
      
      private static function getQuestRewards(param1:QuestPlayerVo) : ArrayCollection
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:RewardItemComponentVo = null;
         var _loc4_:QuestRewardInfoVo = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc4_ in param1.rewards)
         {
            _loc3_ = getRewardVoForQuestReward(_loc4_.questRewardVo,RewardItemComponentVo.SIZE_SMALL);
            if(_loc7_)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!(_loc7_ || Boolean(param1)))
               {
                  continue;
               }
            }
            _loc2_.addItem(_loc3_);
         }
         if(_loc7_ || Boolean(_loc3_))
         {
            RewardLayerProxy.sortRewardList(_loc2_);
         }
         return _loc2_;
      }
      
      private static function getQuestDrops(param1:QuestPlayerVo) : Vector.<DropInfoVo>
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:DropInfoVo = null;
         var _loc4_:QuestRewardInfoVo = null;
         var _loc2_:Vector.<DropInfoVo> = new Vector.<DropInfoVo>();
         for each(_loc4_ in param1.rewards)
         {
            _loc3_ = getDropInfoForQuestReward(_loc4_.questRewardVo);
            if(!_loc8_)
            {
               if(_loc3_)
               {
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     _loc2_.push(_loc3_);
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function getDropInfoForQuestReward(param1:QuestRewardDTO) : DropInfoVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1.resourceConfig == null)
            {
               if(param1.goodConfig != null)
               {
                  if(!(_loc2_ && QuestGUIProxy))
                  {
                     return new DropInfoVo(ServerOutputConstants.GOOD,param1.goodConfig.gfxId);
                  }
                  addr00cf:
                  §§push(param1.assistConfig);
               }
               else
               {
                  addr0086:
                  if(param1.improvementConfig != null)
                  {
                     if(_loc3_)
                     {
                        return new DropInfoVo(ServerImprovementConstants.IMPROVEMENT,0);
                     }
                     §§goto(addr00cf);
                  }
                  else
                  {
                     addr00a9:
                     §§push(param1.assistConfig);
                     if(!(_loc2_ && _loc3_))
                     {
                        if(§§pop() != null)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr00cf);
                           }
                           §§goto(addr00e4);
                        }
                        §§goto(addr00f2);
                     }
                  }
               }
               if(§§pop().type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
               {
                  if(_loc3_)
                  {
                     addr00e4:
                     return new DropInfoVo(param1.assistConfig.type);
                  }
               }
               addr00f2:
               return null;
            }
            if(!(_loc2_ && Boolean(param1)))
            {
               return new DropInfoVo(param1.resourceConfig.type);
            }
            §§goto(addr00a9);
         }
         §§goto(addr0086);
      }
      
      public static function getRewardVoForQuestReward(param1:QuestRewardDTO, param2:String) : RewardItemComponentVo
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:BriskDynaVo = null;
         var _loc3_:Object = {};
         if(_loc6_)
         {
            if(param1.resourceConfig != null)
            {
               if(!_loc7_)
               {
                  addr0035:
                  _loc3_.type = RewardItemComponentVo.TYPE_RESOURCE;
                  if(_loc6_)
                  {
                     _loc3_.size = param2;
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        addr0058:
                        _loc3_.useNew = false;
                        if(_loc6_)
                        {
                           addr0063:
                           _loc3_.cid = param1.resourceConfig.id;
                        }
                        addr05c6:
                        §§push(param1.resourceConfig.type);
                        if(!(_loc7_ && Boolean(param2)))
                        {
                           var _loc5_:* = §§pop();
                           if(_loc6_ || Boolean(param1))
                           {
                              loop0:
                              while(true)
                              {
                                 §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                 if(!(_loc6_ || QuestGUIProxy))
                                 {
                                    break;
                                 }
                                 §§push(_loc5_);
                                 if(_loc6_ || Boolean(_loc3_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§push(0);
                                             if(!_loc7_)
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   if(_loc6_ || Boolean(_loc3_))
                                                   {
                                                      loop8:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_RC;
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(param2);
                                                            if(!_loc7_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(_loc6_ || Boolean(param1))
                                                               {
                                                                  §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                  if(!_loc6_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  §§push(_loc5_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc6_ || QuestGUIProxy))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr0144:
                                                                           if(_loc6_ || Boolean(param1))
                                                                           {
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    _loc3_.itemIcon = "rc_icon_medium";
                                                                                    if(_loc6_)
                                                                                    {
                                                                                    }
                                                                                    break loop8;
                                                                                 case 1:
                                                                                    _loc3_.itemIcon = "ressource_rc_big";
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       break loop8;
                                                                                    }
                                                                                    §§push(param2);
                                                                                    if(!(_loc7_ && Boolean(param2)))
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          break loop2;
                                                                                       }
                                                                                       addr040a:
                                                                                       §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(_loc6_ || QuestGUIProxy)
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr0480:
                                                                                                   addr0a46:
                                                                                                   if(_loc6_ || Boolean(param2))
                                                                                                   {
                                                                                                      loop10:
                                                                                                      switch(§§pop())
                                                                                                      {
                                                                                                         case 0:
                                                                                                            _loc3_.itemIcon = "pp_icon_medium";
                                                                                                            if(!(_loc7_ && Boolean(param1)))
                                                                                                            {
                                                                                                               break loop8;
                                                                                                            }
                                                                                                            addr0cab:
                                                                                                            _loc3_.size = param2;
                                                                                                            if(!(_loc7_ && Boolean(param2)))
                                                                                                            {
                                                                                                               addr0cbe:
                                                                                                               _loc3_.useNew = false;
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  _loc3_.price = param1.amount;
                                                                                                                  if(!(_loc7_ && Boolean(param2)))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr0d67:
                                                                                                                  §§push(param2);
                                                                                                                  if(_loc6_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     if(_loc6_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        addr0d86:
                                                                                                                        §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr0d9a:
                                                                                                                              if(§§pop() === §§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(!(_loc7_ && QuestGUIProxy))
                                                                                                                                    {
                                                                                                                                       addr0e0c:
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          addr0e14:
                                                                                                                                          switch(§§pop())
                                                                                                                                          {
                                                                                                                                             case 0:
                                                                                                                                                _loc4_ = ImprovementLayerProxy.improvementGfx(param1.improvementConfig);
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                break loop10;
                                                                                                                                             case 1:
                                                                                                                                                _loc4_ = ImprovementLayerProxy.improvementGfx(param1.improvementConfig,ImprovementLayerProxy.SIZE_BIG);
                                                                                                                                          }
                                                                                                                                          _loc3_.itemIconLib = _loc4_.dynaLibName;
                                                                                                                                          if(_loc6_ || Boolean(param1))
                                                                                                                                          {
                                                                                                                                             _loc3_.itemIcon = _loc4_.dynaBmpName;
                                                                                                                                             if(_loc6_ || Boolean(_loc3_))
                                                                                                                                             {
                                                                                                                                                _loc3_.size = param2;
                                                                                                                                                if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                {
                                                                                                                                                   _loc3_.useNew = false;
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr0e7b:
                                                                                                                                                      _loc3_.price = param1.amount;
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr0e89:
                                                                                                                                                _loc3_.quality = param1.improvementConfig.quality;
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr0e7b);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0e89);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr0ffc:
                                                                                                                                    }
                                                                                                                                    addr0ffe:
                                                                                                                                    switch(§§pop())
                                                                                                                                    {
                                                                                                                                       case 0:
                                                                                                                                          §§push(§§findproperty(BriskDynaVo));
                                                                                                                                          §§push("gui_popups_rentCollector");
                                                                                                                                          §§push("rentCollector_small_");
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + param1.assistConfig.gfxId);
                                                                                                                                          }
                                                                                                                                          _loc4_ = new §§pop().BriskDynaVo(§§pop(),§§pop());
                                                                                                                                          if(_loc6_ || QuestGUIProxy)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          addr1028:
                                                                                                                                          _loc3_.itemIcon = _loc4_.dynaBmpName;
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             _loc3_.size = param2;
                                                                                                                                             if(_loc7_ && Boolean(_loc3_))
                                                                                                                                             {
                                                                                                                                                break loop10;
                                                                                                                                             }
                                                                                                                                             addr104a:
                                                                                                                                             _loc3_.useNew = false;
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                break loop10;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          _loc3_.price = param1.amount;
                                                                                                                                          break loop10;
                                                                                                                                       case 1:
                                                                                                                                          §§push(§§findproperty(BriskDynaVo));
                                                                                                                                          §§push("gui_popups_rentCollector");
                                                                                                                                          §§push("rentCollector_big_");
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + param1.assistConfig.gfxId);
                                                                                                                                          }
                                                                                                                                          _loc4_ = new §§pop().BriskDynaVo(§§pop(),§§pop());
                                                                                                                                    }
                                                                                                                                    addr1012:
                                                                                                                                    _loc3_.itemIconLib = _loc4_.dynaLibName;
                                                                                                                                    if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                    {
                                                                                                                                       §§goto(addr1028);
                                                                                                                                    }
                                                                                                                                    §§goto(addr104a);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0fcc:
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                                                                 if(_loc6_ || Boolean(param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    if(_loc6_ || Boolean(param2))
                                                                                                                                    {
                                                                                                                                       addr0ddc:
                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             §§push(1);
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr0e0c);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr0ffc);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr0fcc);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(2);
                                                                                                                                          if(!(_loc7_ && Boolean(param2)))
                                                                                                                                          {
                                                                                                                                             §§goto(addr0e0c);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr0ffc);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr0fba:
                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc7_ && Boolean(param2)))
                                                                                                                                          {
                                                                                                                                             §§goto(addr0fcc);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr0fe4:
                                                                                                                                             §§push(1);
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0fde:
                                                                                                                                          addr0fe0:
                                                                                                                                          if(RewardItemComponentVo.SIZE_BIG === _loc5_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0fe4);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(2);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0ffc);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0ffc);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0fde);
                                                                                                                              }
                                                                                                                              §§goto(addr0ffc);
                                                                                                                           }
                                                                                                                           §§goto(addr0fba);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr0faa:
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(_loc6_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              §§goto(addr0fba);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0fe0);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0f96:
                                                                                                                        §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                                                                        if(!(_loc7_ && QuestGUIProxy))
                                                                                                                        {
                                                                                                                           §§goto(addr0faa);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0fde);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr0ed2:
                                                                                                                     if(§§pop() != ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
                                                                                                                     {
                                                                                                                        §§push(null);
                                                                                                                        if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                        {
                                                                                                                           _loc3_ = §§pop();
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr109c);
                                                                                                                     }
                                                                                                                     if(_loc6_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        _loc3_.cid = param1.assistConfig.id;
                                                                                                                        if(!(_loc7_ && Boolean(param2)))
                                                                                                                        {
                                                                                                                           _loc3_.type = RewardItemComponentVo.TYPE_ASSIST;
                                                                                                                           if(!(_loc7_ && QuestGUIProxy))
                                                                                                                           {
                                                                                                                              addr0f1a:
                                                                                                                              _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
                                                                                                                              if(_loc6_ || Boolean(param1))
                                                                                                                              {
                                                                                                                                 addr0f8e:
                                                                                                                                 _loc5_ = param2;
                                                                                                                                 addr0f8d:
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr0f96);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0fe4);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1092);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0f1a);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc3_.cid = param1.improvementConfig.id;
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     _loc3_.type = RewardItemComponentVo.TYPE_IMPROVEMENT;
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr0d12:
                                                                                                                        _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
                                                                                                                        if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                        {
                                                                                                                           §§goto(addr0d67);
                                                                                                                        }
                                                                                                                        §§goto(addr1012);
                                                                                                                     }
                                                                                                                     §§goto(addr0f8d);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr0ebe:
                                                                                                                     §§push(param1.assistConfig.type);
                                                                                                                     if(_loc6_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        §§goto(addr0ed2);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0f8e);
                                                                                                            }
                                                                                                            §§goto(addr0f8d);
                                                                                                         case 1:
                                                                                                            _loc3_.itemIcon = "ressource_pp_big";
                                                                                                            if(_loc6_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               break loop8;
                                                                                                            }
                                                                                                            break;
                                                                                                         default:
                                                                                                            break loop8;
                                                                                                      }
                                                                                                      addr107f:
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            §§goto(addr1092);
                                                                                                         }
                                                                                                      }
                                                                                                      addr109b:
                                                                                                      addr109c:
                                                                                                      return §§pop();
                                                                                                      §§push(null);
                                                                                                   }
                                                                                                   switch(§§pop())
                                                                                                   {
                                                                                                      case 0:
                                                                                                         _loc3_.itemIconLib = "gui_resources_icons";
                                                                                                         if(!(_loc7_ && Boolean(param1)))
                                                                                                         {
                                                                                                            _loc3_.itemIcon = "ressource_" + param1.goodConfig.gfxId + "_medium";
                                                                                                            if(!(_loc7_ && Boolean(param2)))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            _loc3_.type = RewardItemComponentVo.TYPE_SPECIAL_PERMISSION;
                                                                                                            if(!(_loc7_ && Boolean(param2)))
                                                                                                            {
                                                                                                               addr0b3b:
                                                                                                               if(param1.configPlayfieldItem.isPremium)
                                                                                                               {
                                                                                                                  if(_loc6_ || Boolean(_loc3_))
                                                                                                                  {
                                                                                                                     §§goto(addr0b54);
                                                                                                                  }
                                                                                                                  §§goto(addr0cab);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_PERMISSSON;
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§goto(addr0b80);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1012);
                                                                                                            }
                                                                                                            §§goto(addr0ebe);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0973:
                                                                                                            _loc3_.itemIcon = "large_" + param1.goodConfig.gfxId;
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0cab);
                                                                                                      case 1:
                                                                                                         _loc3_.itemIconLib = "gui_popups_largeGoodIcons";
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§goto(addr0973);
                                                                                                         }
                                                                                                         §§goto(addr0d12);
                                                                                                   }
                                                                                                   _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
                                                                                                   if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      _loc3_.size = param2;
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr0a85:
                                                                                                         _loc3_.useNew = false;
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            _loc3_.price = param1.amount;
                                                                                                            if(_loc7_ && QuestGUIProxy)
                                                                                                            {
                                                                                                               addr0b54:
                                                                                                               _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_CONSTRUCTED;
                                                                                                               if(_loc6_ || Boolean(param1))
                                                                                                               {
                                                                                                                  addr0b80:
                                                                                                                  _loc3_.itemIconLib = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(param1.configPlayfieldItem);
                                                                                                                  if(_loc6_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     §§push(param2);
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr0bf9:
                                                                                                                           §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr0c05:
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || Boolean(param1))
                                                                                                                                    {
                                                                                                                                       addr0c1f:
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          addr0c87:
                                                                                                                                          if(_loc6_ || Boolean(param2))
                                                                                                                                          {
                                                                                                                                             addr0c97:
                                                                                                                                             switch(§§pop())
                                                                                                                                             {
                                                                                                                                                case 0:
                                                                                                                                                   _loc3_.itemIcon = "FieldItem_" + param1.configPlayfieldItem.gfxId + "_small";
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0f8d);
                                                                                                                                                case 1:
                                                                                                                                                   _loc3_.itemIcon = "FieldItem_" + param1.configPlayfieldItem.gfxId + "_level1_big";
                                                                                                                                                   if(!(_loc7_ && Boolean(param1)))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0cbe);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0cab);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0ffe);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0ffc);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0d86);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                                                                    if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                    {
                                                                                                                                       addr0c3f:
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          addr0c47:
                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                             {
                                                                                                                                                addr0c59:
                                                                                                                                                §§push(1);
                                                                                                                                                if(!(_loc7_ && Boolean(param1)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0c87);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0ffc);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0f96);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(2);
                                                                                                                                             if(_loc6_ || Boolean(_loc3_))
                                                                                                                                             {
                                                                                                                                                §§goto(addr0c87);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr0ffc);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0ddc);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr0fde);
                                                                                                                              }
                                                                                                                              §§goto(addr0ddc);
                                                                                                                           }
                                                                                                                           §§goto(addr0fde);
                                                                                                                        }
                                                                                                                        §§goto(addr0fe4);
                                                                                                                     }
                                                                                                                     §§goto(addr0ed2);
                                                                                                                  }
                                                                                                                  §§goto(addr109b);
                                                                                                               }
                                                                                                               §§goto(addr1092);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr107f);
                                                                                                      }
                                                                                                      §§goto(addr0cbe);
                                                                                                   }
                                                                                                   §§goto(addr0d67);
                                                                                                }
                                                                                                §§goto(addr0f96);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr0448:
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc6_ || Boolean(param1))
                                                                                                   {
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§goto(addr0480);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0599:
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§goto(addr05a1);
                                                                                                               }
                                                                                                               addr0834:
                                                                                                               switch(§§pop())
                                                                                                               {
                                                                                                                  case 0:
                                                                                                                     _loc3_.itemIconLib = "gui_resources_icons";
                                                                                                                     if(!(_loc7_ && QuestGUIProxy))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr0cbe);
                                                                                                                  case 1:
                                                                                                                     _loc3_.itemIconLib = "gui_popups_largeGoodIcons";
                                                                                                                     if(!(_loc6_ || Boolean(param1)))
                                                                                                                     {
                                                                                                                        §§goto(addr0a85);
                                                                                                                     }
                                                                                                               }
                                                                                                               _loc3_.price = param1.amount;
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§goto(addr0b3b);
                                                                                                               }
                                                                                                               §§goto(addr107f);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0f96);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(2);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§goto(addr0480);
                                                                                                         }
                                                                                                         addr0a3e:
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§goto(addr0a46);
                                                                                                         }
                                                                                                         §§goto(addr0e14);
                                                                                                      }
                                                                                                   }
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr082c:
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§goto(addr0834);
                                                                                                         }
                                                                                                         §§goto(addr0c97);
                                                                                                      }
                                                                                                      §§goto(addr0bf9);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                                      if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(_loc6_ || Boolean(param2))
                                                                                                               {
                                                                                                                  §§push(1);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§goto(addr082c);
                                                                                                                  }
                                                                                                                  §§goto(addr0c87);
                                                                                                               }
                                                                                                               §§goto(addr0c1f);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(2);
                                                                                                               if(_loc6_ || Boolean(param1))
                                                                                                               {
                                                                                                                  §§goto(addr082c);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr0a3e);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr082c);
                                                                                                         }
                                                                                                         §§goto(addr0d9a);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0fde);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0c05);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(4);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         §§goto(addr0e0c);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr0c59);
                                                                                                   }
                                                                                                   §§goto(addr0ffe);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(5);
                                                                                                   if(_loc6_ || Boolean(param1))
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0c87);
                                                                                       }
                                                                                       §§goto(addr0448);
                                                                                    }
                                                                                    §§goto(addr0f8e);
                                                                                    break;
                                                                                 default:
                                                                                    break loop8;
                                                                              }
                                                                           }
                                                                           §§goto(addr0834);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(1);
                                                                           if(!(_loc7_ && QuestGUIProxy))
                                                                           {
                                                                              addr037c:
                                                                              if(_loc6_)
                                                                              {
                                                                                 switch(§§pop())
                                                                                 {
                                                                                    case 0:
                                                                                       _loc3_.itemIcon = "xp_icon_medium";
                                                                                       if(_loc6_)
                                                                                       {
                                                                                       }
                                                                                       break loop8;
                                                                                    case 1:
                                                                                       _loc3_.itemIcon = "ressource_xp_big";
                                                                                       if(_loc6_ || QuestGUIProxy)
                                                                                       {
                                                                                       }
                                                                                       break loop8;
                                                                                    default:
                                                                                       break loop8;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr05a1);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr082c);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(RewardItemComponentVo.SIZE_BIG);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc6_ || Boolean(_loc3_))
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc6_ || Boolean(_loc3_))
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§goto(addr0144);
                                                                                    }
                                                                                    §§goto(addr0e0c);
                                                                                 }
                                                                                 §§goto(addr040a);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(2);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§goto(addr0144);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr037c);
                                                                                 }
                                                                                 §§goto(addr1092);
                                                                              }
                                                                           }
                                                                           else if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(1);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§goto(addr0599);
                                                                                 }
                                                                                 §§goto(addr0c87);
                                                                              }
                                                                              §§goto(addr0d86);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(2);
                                                                              if(!(_loc7_ && Boolean(param2)))
                                                                              {
                                                                                 §§goto(addr0599);
                                                                              }
                                                                              §§goto(addr082c);
                                                                           }
                                                                           §§goto(addr082c);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!(_loc7_ && Boolean(param1)))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc6_ || QuestGUIProxy)
                                                                                    {
                                                                                       §§goto(addr0a3e);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0a20:
                                                                                    §§push(1);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§goto(addr0a3e);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0ffc);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                 if(_loc6_ || Boolean(param1))
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(!(_loc7_ && Boolean(param1)))
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§goto(addr0a20);
                                                                                          }
                                                                                          §§goto(addr0c59);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(2);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§goto(addr0a3e);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0c87);
                                                                                    }
                                                                                    §§goto(addr0d9a);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0c3f);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr0fba);
                                                                  }
                                                                  §§goto(addr0c47);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(2);
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  addr0689:
                                                               }
                                                               §§goto(addr0c87);
                                                            }
                                                            §§goto(addr0402);
                                                            break;
                                                         case 1:
                                                            _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_VC;
                                                            if(_loc6_ || QuestGUIProxy)
                                                            {
                                                               §§push(param2);
                                                               if(_loc6_ || Boolean(param2))
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc6_ || Boolean(_loc3_))
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc7_ && QuestGUIProxy)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr0258:
                                                                                 if(_loc6_ || Boolean(_loc3_))
                                                                                 {
                                                                                    switch(§§pop())
                                                                                    {
                                                                                       case 0:
                                                                                          _loc3_.itemIcon = "vc_icon_medium";
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             break loop8;
                                                                                          }
                                                                                          break;
                                                                                       case 1:
                                                                                          _loc3_.itemIcon = "ressource_cc_big";
                                                                                          if(_loc6_ || Boolean(param1))
                                                                                          {
                                                                                             break loop8;
                                                                                          }
                                                                                          §§goto(addr0b23);
                                                                                       default:
                                                                                          break loop8;
                                                                                    }
                                                                                    §§goto(addr0b80);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr0384);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr051b:
                                                                                 §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(!(_loc7_ && Boolean(param1)))
                                                                                    {
                                                                                       addr0537:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr0541:
                                                                                          §§push(0);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§goto(addr0599);
                                                                                          }
                                                                                          §§goto(addr0a3e);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                          if(!(_loc7_ && QuestGUIProxy))
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§goto(addr0569);
                                                                                             }
                                                                                             §§goto(addr0ddc);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0faa);
                                                                                    }
                                                                                    §§goto(addr0ddc);
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(RewardItemComponentVo.SIZE_BIG);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(!(_loc7_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(1);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§goto(addr0258);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr0599);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0c59);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(2);
                                                                                       if(_loc6_ || Boolean(param1))
                                                                                       {
                                                                                          §§goto(addr0258);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr0480);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0258);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr0537);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr0fde);
                                                                        }
                                                                        §§goto(addr0a16);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§goto(addr06e9);
                                                                           }
                                                                        }
                                                                        addr06e1:
                                                                     }
                                                                     §§goto(addr0d9a);
                                                                  }
                                                                  §§goto(addr0573);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr03f3);
                                                            }
                                                            §§goto(addr0f8e);
                                                         case 2:
                                                            _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_XP;
                                                            if(!(_loc7_ && Boolean(param1)))
                                                            {
                                                               §§push(param2);
                                                               if(!_loc7_)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  if(!(_loc7_ && Boolean(param1)))
                                                                  {
                                                                     §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!(_loc7_ && Boolean(_loc3_)))
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc7_ && Boolean(param2)))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr037c);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr0541);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(RewardItemComponentVo.SIZE_BIG);
                                                                              if(!(_loc7_ && Boolean(param2)))
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(_loc6_ || Boolean(param1))
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§goto(addr0356);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(1);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§goto(addr0a3e);
                                                                                          }
                                                                                          addr0650:
                                                                                       }
                                                                                       §§goto(addr0e14);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(2);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§goto(addr037c);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0c87);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr0569);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr0416);
                                                                              }
                                                                           }
                                                                           §§goto(addr0c87);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr0537);
                                                                        }
                                                                     }
                                                                     §§goto(addr0d92);
                                                                  }
                                                                  §§goto(addr0a20);
                                                               }
                                                               addr078e:
                                                               _loc5_ = §§pop();
                                                               if(!(_loc7_ && Boolean(param1)))
                                                               {
                                                                  §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                  if(_loc6_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  §§goto(addr0fde);
                                                               }
                                                               §§goto(addr0c59);
                                                            }
                                                            §§goto(addr0f02);
                                                         case 3:
                                                            _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_PP;
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr03f3);
                                                            }
                                                            §§goto(addr0a62);
                                                         case 4:
                                                            _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_EP;
                                                            if(_loc6_)
                                                            {
                                                               _loc3_.itemIcon = "ep_icon_medium";
                                                               if(_loc6_ || Boolean(param1))
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc6_)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr051b);
                                                                     }
                                                                     §§goto(addr0fcc);
                                                                  }
                                                                  §§goto(addr0f8e);
                                                               }
                                                               else
                                                               {
                                                                  addr0991:
                                                                  §§push(param2);
                                                                  if(_loc6_ || Boolean(param2))
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     if(_loc6_ || Boolean(param1))
                                                                     {
                                                                        §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                        if(!(_loc7_ && Boolean(param1)))
                                                                        {
                                                                           §§goto(addr09c4);
                                                                        }
                                                                        §§goto(addr0c3f);
                                                                     }
                                                                     §§goto(addr0bf9);
                                                                  }
                                                               }
                                                               §§goto(addr0d76);
                                                            }
                                                            §§goto(addr0b3b);
                                                      }
                                                      §§push(param2);
                                                      if(_loc6_ || Boolean(param2))
                                                      {
                                                         §§goto(addr078e);
                                                      }
                                                      §§goto(addr0ed2);
                                                   }
                                                   §§goto(addr0c97);
                                                }
                                                continue loop0;
                                                addr0719:
                                             }
                                             §§goto(addr0ffc);
                                          }
                                       }
                                       §§goto(addr0bf9);
                                    }
                                    else
                                    {
                                       §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                       if(!_loc7_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc6_ || Boolean(param2))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc7_ && QuestGUIProxy))
                                                {
                                                   §§goto(addr0650);
                                                }
                                                §§goto(addr0bf9);
                                             }
                                             else
                                             {
                                                §§push(ServerResConst.RESOURCE_EXPERIENCE);
                                                if(!(_loc7_ && Boolean(param2)))
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc7_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc6_ || Boolean(param2))
                                                         {
                                                            §§goto(addr0689);
                                                         }
                                                         §§goto(addr0da4);
                                                      }
                                                      else
                                                      {
                                                         §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                         if(_loc6_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc6_ || Boolean(_loc3_))
                                                            {
                                                               addr06b0:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc6_ || Boolean(param2))
                                                                  {
                                                                     §§push(3);
                                                                     if(!(_loc7_ && Boolean(param1)))
                                                                     {
                                                                        §§goto(addr0719);
                                                                     }
                                                                     §§goto(addr0c87);
                                                                  }
                                                                  §§goto(addr06f3);
                                                               }
                                                               else
                                                               {
                                                                  §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr06e1);
                                                                  }
                                                               }
                                                               §§goto(addr09c4);
                                                            }
                                                            §§goto(addr0d9a);
                                                         }
                                                      }
                                                      §§goto(addr0a06);
                                                   }
                                                   §§goto(addr0d9a);
                                                }
                                             }
                                             §§goto(addr0c3f);
                                          }
                                          §§goto(addr0ddc);
                                       }
                                    }
                                    §§goto(addr0d92);
                                 }
                                 §§goto(addr06b0);
                              }
                              §§push(_loc5_);
                              if(_loc6_ || Boolean(param2))
                              {
                                 §§goto(addr07ba);
                              }
                              else
                              {
                                 §§goto(addr0a16);
                              }
                           }
                           §§goto(addr0d86);
                        }
                        §§goto(addr0ed2);
                     }
                     §§goto(addr0063);
                  }
                  §§goto(addr05c6);
               }
               §§goto(addr0058);
            }
            else
            {
               §§push(param1.goodConfig);
               if(!(_loc7_ && QuestGUIProxy))
               {
                  if(§§pop() != null)
                  {
                     if(_loc6_)
                     {
                        _loc3_.cid = param1.goodConfig.id;
                        if(!(_loc7_ && QuestGUIProxy))
                        {
                           §§push(param1.goodConfig);
                           if(_loc6_)
                           {
                              addr08a4:
                              §§push(§§pop().isEventGood);
                              if(!(_loc7_ && QuestGUIProxy))
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       addr08bf:
                                       _loc3_.type = RewardItemComponentVo.TYPE_EVENT_GOOD;
                                       if(!(_loc7_ && Boolean(param1)))
                                       {
                                          §§goto(addr0991);
                                       }
                                       §§goto(addr0b80);
                                    }
                                    else
                                    {
                                       addr0ac6:
                                       _loc3_.cid = param1.configPlayfieldItem.id;
                                       if(_loc6_ || Boolean(param2))
                                       {
                                          addr0ade:
                                          _loc3_.type = RewardItemComponentVo.TYPE_NORMAL_PERMISSION;
                                          if(_loc6_ || Boolean(_loc3_))
                                          {
                                             addr0af6:
                                             §§push(param1.configPlayfieldItem);
                                             if(_loc6_ || Boolean(param1))
                                             {
                                                addr0b08:
                                                §§push(§§pop().specialHighlighting);
                                                if(_loc6_ || QuestGUIProxy)
                                                {
                                                   addr0b19:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr0b23);
                                                      }
                                                      §§goto(addr1092);
                                                   }
                                                   §§goto(addr0b3b);
                                                }
                                                §§goto(addr0b42);
                                             }
                                             §§goto(addr0b3f);
                                          }
                                          §§goto(addr0cf2);
                                       }
                                    }
                                    §§goto(addr0d12);
                                 }
                                 else
                                 {
                                    addr08df:
                                    §§push(param1.goodConfig.isSpecialGood);
                                    if(!_loc7_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             addr08f2:
                                             _loc3_.type = RewardItemComponentVo.TYPE_SPECIAL_GOOD;
                                             if(!(_loc7_ && Boolean(param2)))
                                             {
                                                §§goto(addr0991);
                                             }
                                             §§goto(addr0a85);
                                          }
                                          §§goto(addr0f02);
                                       }
                                       else
                                       {
                                          _loc3_.type = RewardItemComponentVo.TYPE_NORMAL_GOOD;
                                          if(_loc6_ || QuestGUIProxy)
                                          {
                                             §§goto(addr0991);
                                          }
                                          else
                                          {
                                             §§goto(addr0ade);
                                          }
                                       }
                                       §§goto(addr0991);
                                    }
                                 }
                                 §§goto(addr0b42);
                              }
                              §§goto(addr0b19);
                           }
                           §§goto(addr08df);
                        }
                        §§goto(addr08bf);
                     }
                     §§goto(addr08f2);
                  }
                  else
                  {
                     §§push(param1.configPlayfieldItem);
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              §§goto(addr0ac6);
                           }
                           §§goto(addr0af6);
                        }
                        else if(param1.improvementConfig != null)
                        {
                           if(_loc6_)
                           {
                              §§goto(addr0cf2);
                           }
                           §§goto(addr0f8d);
                        }
                        else
                        {
                           §§push(param1.assistConfig);
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              if(§§pop() != null)
                              {
                                 if(!(_loc7_ && Boolean(param1)))
                                 {
                                    §§goto(addr0ebe);
                                 }
                                 addr1092:
                                 return new RewardItemComponentVo(_loc3_);
                              }
                              §§goto(addr107f);
                           }
                        }
                        §§goto(addr0ec2);
                     }
                  }
                  §§goto(addr0b08);
               }
               §§goto(addr08a4);
            }
         }
         §§goto(addr0035);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.onRegister();
            if(_loc2_ || _loc2_)
            {
               this._questProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
               if(_loc2_ || _loc2_)
               {
                  this._playerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  if(!_loc1_)
                  {
                     addr0070:
                     this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                     if(!(_loc1_ && _loc2_))
                     {
                        this._stockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                        if(!_loc1_)
                        {
                           addr00ae:
                           this._serverStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
                           if(_loc2_ || Boolean(this))
                           {
                              addr00ce:
                              this._questDetailsDict = new Dictionary();
                           }
                        }
                        return;
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr00ce);
               }
            }
         }
         §§goto(addr0070);
      }
      
      public function getQuestDetailViewVo(param1:Number, param2:Boolean = false) : QuestDetailViewVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            if(param1)
            {
               if(_loc4_)
               {
                  if(!param2)
                  {
                     if(_loc4_)
                     {
                        addr0043:
                        this.updateQuestTasks(this._questDetailsDict[param1]);
                        if(!_loc3_)
                        {
                           §§goto(addr0056);
                        }
                     }
                     §§goto(addr005f);
                  }
                  addr0056:
                  return this._questDetailsDict[param1];
               }
            }
            addr005f:
            return null;
         }
         §§goto(addr0043);
      }
      
      private function updateQuestTasks(param1:QuestDetailViewVo) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:QuestTaskVo = null;
         for each(_loc2_ in param1.tasks)
         {
            if(!(_loc5_ && Boolean(this)))
            {
               if(_loc2_.isDepositTask)
               {
                  if(_loc6_ || Boolean(this))
                  {
                     this.setDepositTaskValues(_loc2_);
                     if(!_loc6_)
                     {
                        continue;
                     }
                  }
               }
            }
            _loc2_.currentRealCurrency = this._playerResourceProxy.realCurrency;
         }
      }
      
      public function getQuestSideDetailVo() : Vector.<QuestDetailViewVo>
      {
         §§push(false);
         var _loc27_:Boolean = true;
         var _loc28_:* = §§pop();
         var _loc2_:QuestDetailViewVo = null;
         var _loc3_:Array = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc9_:* = false;
         var _loc10_:QuestTaskVo = null;
         var _loc11_:* = false;
         var _loc12_:QuestPlayerVo = null;
         var _loc13_:QuestDetailViewVo = null;
         var _loc14_:QuestDetailViewVo = null;
         var _loc15_:QuestTaskDTO = null;
         var _loc16_:QuestVirtualTaskVo = null;
         var _loc17_:IQuestTaskItemDTO = null;
         var _loc18_:QuestTaskDTO = null;
         var _loc19_:IQuestTaskItemDTO = null;
         var _loc20_:Number = NaN;
         var _loc1_:Vector.<QuestDetailViewVo> = new Vector.<QuestDetailViewVo>(0);
         var _loc21_:* = 0;
         var _loc22_:* = this._questProxy.currentQuests;
         while(true)
         {
            §§push(§§hasnext(_loc22_,_loc21_));
            if(_loc28_)
            {
               break;
            }
            if(!§§pop())
            {
               if(_loc27_ || Boolean(_loc2_))
               {
                  if(_loc27_ || Boolean(_loc2_))
                  {
                     if(_loc27_)
                     {
                        §§push(0);
                        if(!_loc28_)
                        {
                           _loc21_ = §§pop();
                           if(_loc27_ || Boolean(_loc1_))
                           {
                              addr0ab3:
                              _loc22_ = _loc1_;
                              addr0b7a:
                              §§push(§§hasnext(_loc22_,_loc21_));
                              if(_loc28_ && Boolean(_loc1_))
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 _loc13_ = §§nextvalue(_loc21_,_loc22_);
                                 if(_loc27_)
                                 {
                                    var _loc23_:int = 0;
                                    if(_loc27_)
                                    {
                                       var _loc24_:* = this._serverStorageProxy.uiDataDTO.viewedQuest;
                                       if(_loc27_)
                                       {
                                          addr0b21:
                                          if(!(§§hasnext(_loc24_,_loc23_)))
                                          {
                                             addr0b2a:
                                             if(_loc27_)
                                             {
                                                addr0b32:
                                                if(this._questDetailsDict[_loc13_.questID] != null)
                                                {
                                                   if(!_loc28_)
                                                   {
                                                      if(QuestDetailViewVo(this._questDetailsDict[_loc13_.questID]).checkChanged(_loc13_))
                                                      {
                                                         if(_loc27_ || Boolean(_loc2_))
                                                         {
                                                            addr0b74:
                                                            _loc13_.changed = true;
                                                         }
                                                      }
                                                      §§goto(addr0b7a);
                                                   }
                                                   §§goto(addr0b74);
                                                }
                                             }
                                             §§goto(addr0b7a);
                                          }
                                       }
                                       §§goto(addr0b1b);
                                    }
                                    §§goto(addr0b2a);
                                 }
                                 §§goto(addr0b32);
                              }
                              if(!(_loc28_ && Boolean(_loc2_)))
                              {
                                 if(_loc27_ || Boolean(_loc3_))
                                 {
                                    §§goto(addr0bad);
                                 }
                                 §§goto(addr0bd4);
                              }
                              addr0c02:
                              §§goto(addr0c04);
                           }
                           addr0bad:
                           §§goto(addr0c06);
                        }
                        §§goto(addr0bb7);
                     }
                     addr0c06:
                     if(!_loc28_)
                     {
                        addr0bb7:
                        _loc21_ = 0;
                        addr0c04:
                        if(_loc27_ || Boolean(this))
                        {
                           addr0bd4:
                           _loc22_ = _loc1_;
                           §§push(§§hasnext(_loc22_,_loc21_));
                           break;
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0ab3);
               }
               §§goto(addr0c02);
            }
            else
            {
               _loc12_ = §§nextvalue(_loc21_,_loc22_);
               if(_loc27_ || Boolean(_loc2_))
               {
                  _loc11_ = false;
               }
               _loc3_ = [];
               _loc2_ = new QuestDetailViewVo();
               if(!(_loc28_ && Boolean(_loc2_)))
               {
                  §§push(_loc2_);
                  §§push(LocaUtils);
                  §§push("rcl.quest");
                  §§push("rcl.quest.header.");
                  if(!_loc28_)
                  {
                     §§push(§§pop() + _loc12_.config.localizationIdentifier);
                  }
                  §§pop().questHeader = §§pop().getString(§§pop(),§§pop());
               }
               for each(_loc15_ in _loc12_.tasks)
               {
                  §§push(_loc15_.taskConfig);
                  if(_loc27_)
                  {
                     if(§§pop().gfxId == QuestGFXIDLayerConstants.INTRODUCTION)
                     {
                        if(!_loc28_)
                        {
                           §§push(true);
                           if(!(_loc28_ && Boolean(_loc3_)))
                           {
                              _loc11_ = §§pop();
                              if(!(_loc28_ && Boolean(this)))
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr047e:
                              §§pop();
                              if(!(_loc28_ && Boolean(_loc3_)))
                              {
                                 addr048d:
                                 §§push(_loc15_.taskConfig);
                                 if(!(_loc28_ && Boolean(_loc1_)))
                                 {
                                    addr04a0:
                                    §§push(§§pop().questElementSubType == QuestSystemTypeConstants.SUB_TYPE_DEPOSIT_RESOURCE);
                                    if(!_loc28_)
                                    {
                                       addr04b0:
                                       §§push(§§pop());
                                       if(_loc27_ || Boolean(_loc1_))
                                       {
                                          _loc9_ = §§pop();
                                          if(_loc27_)
                                          {
                                             §§push(_loc12_.state);
                                             if(_loc27_)
                                             {
                                                if(§§pop() == QuestSystemStateConst.DONE)
                                                {
                                                   if(_loc27_)
                                                   {
                                                      §§push(true);
                                                      if(_loc27_ || Boolean(this))
                                                      {
                                                         addr04f1:
                                                         _loc8_ = §§pop();
                                                         if(!_loc28_)
                                                         {
                                                            §§push(false);
                                                            if(!_loc28_)
                                                            {
                                                               addr0500:
                                                               _loc7_ = §§pop();
                                                               if(_loc27_ || Boolean(_loc3_))
                                                               {
                                                                  addr0510:
                                                                  addr0515:
                                                                  if(_loc15_.taskConfig.questElementSubType == QuestSystemTypeConstants.RESOURCE_PLAYER)
                                                                  {
                                                                     if(!_loc28_)
                                                                     {
                                                                        addr052a:
                                                                        var _loc25_:* = 0;
                                                                        addr0528:
                                                                        if(!_loc28_)
                                                                        {
                                                                           var _loc26_:* = _loc15_.taskConfig.questTaskTarget.questTaskItem;
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc26_,_loc25_));
                                                                              addr0571:
                                                                              while(§§pop())
                                                                              {
                                                                                 _loc17_ = §§nextvalue(_loc25_,_loc26_);
                                                                                 if(_loc17_.questTaskItemType == ServerResConst.RESOURCE_POPULATION)
                                                                                 {
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       _loc15_.currentValue = this._playerResourceProxy.population;
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              addr0575:
                                                                           }
                                                                        }
                                                                        addr0577:
                                                                        if(_loc27_)
                                                                        {
                                                                           addr057f:
                                                                           addr0581:
                                                                           if(_loc8_)
                                                                           {
                                                                              if(!(_loc28_ && Boolean(_loc2_)))
                                                                              {
                                                                                 addr0593:
                                                                                 _loc15_.currentValue = _loc15_.taskConfig.questTaskTarget.target;
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    addr05a9:
                                                                                    §§push(QuestTextFactory);
                                                                                    §§push(LocaUtils);
                                                                                    §§push("rcl.quest");
                                                                                    §§push("rcl.quest.task.header.");
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc15_.taskConfig.localizationIdentifier);
                                                                                    }
                                                                                    §§push(§§pop().replaceWildCards(§§pop().getString(§§pop(),§§pop()),_loc15_));
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc27_ || Boolean(this))
                                                                                       {
                                                                                          addr05ef:
                                                                                          _loc4_ = §§pop();
                                                                                          if(_loc27_ || Boolean(this))
                                                                                          {
                                                                                             addr05ff:
                                                                                             §§push(QuestTextFactory);
                                                                                             §§push(LocaUtils);
                                                                                             §§push("rcl.quest");
                                                                                             §§push("rcl.quest.task.header.");
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                §§push(§§pop() + _loc15_.taskConfig.localizationIdentifier);
                                                                                             }
                                                                                             §§push(§§pop().replaceWildCards(§§pop().getString(§§pop(),§§pop()),_loc15_,true));
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   addr0630:
                                                                                                   _loc5_ = §§pop();
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      addr066b:
                                                                                                      addr0638:
                                                                                                      §§push(QuestTextFactory);
                                                                                                      §§push(LocaUtils);
                                                                                                      §§push("rcl.quest");
                                                                                                      §§push("rcl.quest.task.flavor.");
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc15_.taskConfig.localizationIdentifier);
                                                                                                      }
                                                                                                      §§push(§§pop().replaceWildCards(§§pop().getString(§§pop(),§§pop()),_loc15_));
                                                                                                      if(_loc27_ || Boolean(_loc1_))
                                                                                                      {
                                                                                                         addr066a:
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      _loc6_ = §§pop();
                                                                                                   }
                                                                                                   addr066d:
                                                                                                   _loc10_ = new QuestTaskVo();
                                                                                                   _loc10_.taskDTO = _loc15_;
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      _loc10_.questSubType = _loc12_.questDto.config.questElementSubType;
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         _loc10_.questId = _loc12_.questDto.id;
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            _loc10_.gfxId = _loc15_.taskConfig.gfxId;
                                                                                                            if(!(_loc28_ && Boolean(this)))
                                                                                                            {
                                                                                                               addr06c7:
                                                                                                               _loc10_.taskText = _loc4_;
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  _loc10_.flavour = _loc6_;
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     _loc10_.finishedTaskText = _loc5_;
                                                                                                                     if(!(_loc28_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        _loc10_.linkParameter = this.configureLinkParameter(_loc15_);
                                                                                                                        if(!(_loc28_ && Boolean(_loc1_)))
                                                                                                                        {
                                                                                                                           _loc10_.isActive = _loc7_;
                                                                                                                           if(!(_loc28_ && Boolean(_loc3_)))
                                                                                                                           {
                                                                                                                              _loc10_.isCompleted = _loc8_;
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 addr0732:
                                                                                                                                 _loc10_.instantFinishCosts = calculateCurrentSkipCosts(_loc15_);
                                                                                                                                 if(_loc27_ || Boolean(_loc3_))
                                                                                                                                 {
                                                                                                                                    _loc10_.currentRealCurrency = this._playerResourceProxy.realCurrency;
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       addr0762:
                                                                                                                                       _loc10_.isVirtual = false;
                                                                                                                                       if(_loc28_ && Boolean(_loc2_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr0782:
                                                                                                                                    this.setDepositTaskValues(_loc10_);
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr0790:
                                                                                                                              _loc3_.push(_loc10_);
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr0782);
                                                                                                                     }
                                                                                                                     §§goto(addr0790);
                                                                                                                  }
                                                                                                                  §§goto(addr0762);
                                                                                                               }
                                                                                                               §§goto(addr0782);
                                                                                                            }
                                                                                                            §§goto(addr0732);
                                                                                                         }
                                                                                                         §§goto(addr06c7);
                                                                                                      }
                                                                                                      §§goto(addr0762);
                                                                                                   }
                                                                                                   §§goto(addr0782);
                                                                                                }
                                                                                                §§goto(addr066a);
                                                                                             }
                                                                                             §§goto(addr066b);
                                                                                          }
                                                                                          §§goto(addr0638);
                                                                                       }
                                                                                       §§goto(addr0630);
                                                                                    }
                                                                                    §§goto(addr05ef);
                                                                                 }
                                                                                 §§goto(addr05ff);
                                                                              }
                                                                              §§goto(addr066d);
                                                                           }
                                                                        }
                                                                        §§goto(addr05a9);
                                                                     }
                                                                     §§goto(addr0593);
                                                                  }
                                                                  §§goto(addr057f);
                                                               }
                                                               §§goto(addr0638);
                                                            }
                                                            §§goto(addr0581);
                                                         }
                                                         §§goto(addr0638);
                                                      }
                                                      §§goto(addr0500);
                                                   }
                                                   §§goto(addr0593);
                                                }
                                                §§goto(addr0510);
                                             }
                                             §§goto(addr0630);
                                          }
                                          §§goto(addr05ff);
                                       }
                                       §§goto(addr0581);
                                    }
                                    §§goto(addr04f1);
                                 }
                                 §§goto(addr0515);
                              }
                              §§goto(addr0528);
                           }
                           §§goto(addr066d);
                        }
                        else
                        {
                           addr0405:
                           §§push(_loc15_.elementState == QuestSystemStateConst.DONE);
                           if(!_loc28_)
                           {
                              addr0417:
                              §§push(§§pop());
                              if(_loc27_ || Boolean(_loc3_))
                              {
                                 addr0426:
                                 _loc8_ = §§pop();
                                 if(_loc27_ || Boolean(this))
                                 {
                                    §§push(_loc15_.elementState == QuestSystemStateConst.ACTIVE);
                                    if(!_loc28_)
                                    {
                                       addr0448:
                                       _loc7_ = §§pop();
                                       if(_loc27_)
                                       {
                                          addr0450:
                                          §§push(_loc15_.taskConfig);
                                          if(_loc27_)
                                          {
                                             §§push(§§pop().questElementSubType == QuestSystemTypeConstants.SUB_TYPE_DEPOSIT_GOOD);
                                             if(!(_loc28_ && Boolean(this)))
                                             {
                                                var _temp_36:* = §§pop();
                                                addr0474:
                                                §§push(_temp_36);
                                                if(!_temp_36)
                                                {
                                                   if(_loc27_)
                                                   {
                                                      §§goto(addr047e);
                                                   }
                                                   §§goto(addr04f1);
                                                }
                                             }
                                             §§goto(addr04b0);
                                          }
                                          §§goto(addr04a0);
                                       }
                                       §§goto(addr0510);
                                    }
                                    §§goto(addr04f1);
                                 }
                                 §§goto(addr0638);
                              }
                              §§goto(addr0500);
                           }
                        }
                        §§goto(addr047e);
                     }
                     else
                     {
                        §§push(_loc15_.taskConfig);
                        if(_loc27_ || Boolean(this))
                        {
                           if(§§pop().questElementSubType == QuestSystemTypeConstants.SCREEN)
                           {
                              continue;
                           }
                           if(!_loc28_)
                           {
                              if(this._questProxy.virtualTaskDescriptor.virtualTasks[_loc15_.taskConfig.localizationIdentifier] != null)
                              {
                                 if(_loc27_ || Boolean(this))
                                 {
                                    §§push(0);
                                    if(_loc27_)
                                    {
                                       _loc25_ = §§pop();
                                       if(!_loc28_)
                                       {
                                          _loc26_ = this._questProxy.virtualTaskDescriptor.virtualTasks[_loc15_.taskConfig.localizationIdentifier];
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc26_,_loc25_));
                                             if(!(_loc27_ || Boolean(_loc3_)))
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                if(!_loc28_)
                                                {
                                                   if(!_loc28_)
                                                   {
                                                      addr03c3:
                                                      if(!_loc28_)
                                                      {
                                                         addr03cb:
                                                         §§push(_loc15_.elementState == QuestSystemStateConst.VALID);
                                                         if(!_loc28_)
                                                         {
                                                            var _temp_40:* = §§pop();
                                                            §§push(_temp_40);
                                                            §§push(_temp_40);
                                                            if(_loc27_ || Boolean(_loc3_))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!(_loc28_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§goto(addr0405);
                                                                     }
                                                                     §§goto(addr048d);
                                                                  }
                                                                  §§goto(addr0426);
                                                               }
                                                               §§goto(addr0417);
                                                            }
                                                            §§goto(addr0474);
                                                         }
                                                         §§goto(addr0448);
                                                      }
                                                      §§goto(addr0593);
                                                   }
                                                   §§goto(addr0577);
                                                }
                                                §§goto(addr0575);
                                             }
                                             else
                                             {
                                                _loc16_ = §§nextvalue(_loc25_,_loc26_);
                                                if(_loc27_)
                                                {
                                                   §§push(LocaUtils);
                                                   §§push("rcl.quest");
                                                   §§push("rcl.quest.task.header.");
                                                   if(!(_loc28_ && Boolean(this)))
                                                   {
                                                      §§push(§§pop() + _loc16_.localeId);
                                                   }
                                                   §§push(§§pop().getString(§§pop(),§§pop()));
                                                   if(!(_loc28_ && Boolean(_loc1_)))
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc28_ && Boolean(_loc3_)))
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(!(_loc28_ && Boolean(_loc3_)))
                                                         {
                                                            addr024f:
                                                            addr0220:
                                                            §§push(LocaUtils);
                                                            §§push("rcl.quest");
                                                            §§push("rcl.quest.task.flavor.");
                                                            if(!(_loc28_ && Boolean(_loc1_)))
                                                            {
                                                               §§push(§§pop() + _loc16_.localeId);
                                                            }
                                                            §§push(§§pop().getString(§§pop(),§§pop()));
                                                            if(_loc27_ || Boolean(_loc1_))
                                                            {
                                                               addr024e:
                                                               §§push(§§pop());
                                                            }
                                                            _loc6_ = §§pop();
                                                            if(!(_loc28_ && Boolean(_loc2_)))
                                                            {
                                                               §§push(_loc16_.isCompleted);
                                                               if(_loc27_ || Boolean(_loc1_))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc28_ && Boolean(_loc1_)))
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     if(!_loc28_)
                                                                     {
                                                                        addr029d:
                                                                        §§push(_loc16_.isActive);
                                                                        if(!(_loc28_ && Boolean(this)))
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        _loc7_ = §§pop();
                                                                     }
                                                                     addr029f:
                                                                     _loc10_ = new QuestTaskVo();
                                                                     _loc10_.taskDTO = _loc15_;
                                                                     if(_loc27_ || Boolean(_loc1_))
                                                                     {
                                                                        _loc10_.questSubType = _loc12_.questDto.config.questElementSubType;
                                                                        if(!(_loc28_ && Boolean(_loc2_)))
                                                                        {
                                                                           _loc10_.questId = _loc12_.questDto.id;
                                                                           if(_loc27_)
                                                                           {
                                                                              _loc10_.configQuestId = _loc12_.questDto.config.id;
                                                                              if(!_loc28_)
                                                                              {
                                                                                 _loc10_.gfxId = _loc16_.gfxId;
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    addr0313:
                                                                                    _loc10_.taskText = _loc4_;
                                                                                    if(!(_loc28_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       _loc10_.finishedTaskText = _loc4_;
                                                                                       if(!(_loc28_ && Boolean(_loc1_)))
                                                                                       {
                                                                                          addr033d:
                                                                                          _loc10_.flavour = _loc6_;
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr034a:
                                                                                          _loc10_.linkParameter = this.configureLinkParameter(_loc15_);
                                                                                          if(_loc27_ || Boolean(_loc2_))
                                                                                          {
                                                                                             addr0364:
                                                                                             _loc10_.isActive = _loc7_;
                                                                                             if(_loc27_ || Boolean(this))
                                                                                             {
                                                                                                addr0379:
                                                                                                _loc10_.isCompleted = _loc8_;
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr0386:
                                                                                                _loc10_.isVirtual = true;
                                                                                                if(_loc28_ && Boolean(_loc3_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                             _loc3_.push(_loc10_);
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr0379);
                                                                                       }
                                                                                       §§goto(addr0364);
                                                                                    }
                                                                                    §§goto(addr034a);
                                                                                 }
                                                                                 §§goto(addr033d);
                                                                              }
                                                                              §§goto(addr0364);
                                                                           }
                                                                        }
                                                                        §§goto(addr0313);
                                                                     }
                                                                     §§goto(addr0386);
                                                                  }
                                                               }
                                                               §§goto(addr029d);
                                                            }
                                                         }
                                                         §§goto(addr029f);
                                                      }
                                                      §§goto(addr024f);
                                                   }
                                                   §§goto(addr024e);
                                                }
                                                §§goto(addr0220);
                                             }
                                          }
                                          §§goto(addr0571);
                                       }
                                       §§goto(addr03c3);
                                    }
                                    §§goto(addr052a);
                                 }
                                 §§goto(addr0450);
                              }
                              §§goto(addr03cb);
                           }
                           §§goto(addr05a9);
                        }
                     }
                  }
                  §§goto(addr04a0);
               }
               if(!(_loc28_ && Boolean(this)))
               {
                  if(!_loc28_)
                  {
                     §§push(_loc11_);
                     if(_loc27_)
                     {
                        if(§§pop())
                        {
                           if(!_loc28_)
                           {
                              continue;
                           }
                           addr083e:
                           §§push(_loc2_);
                           §§push(LocaUtils);
                           §§push("rcl.quest");
                           §§push("rcl.quest.avatar.");
                           if(!(_loc28_ && Boolean(_loc1_)))
                           {
                              §§push(§§pop() + _loc12_.config.questElementSubType.toLowerCase());
                           }
                           §§pop().avatarName = §§pop().getString(§§pop(),§§pop());
                           if(_loc27_)
                           {
                              §§push(_loc2_);
                              if(_loc27_)
                              {
                                 if(_loc2_.isQuestComplete)
                                 {
                                    addr087e:
                                    §§push(LocaUtils);
                                    §§push("rcl.quest");
                                    §§push("rcl.quest.completed.");
                                    if(_loc27_ || Boolean(_loc3_))
                                    {
                                       §§push(§§pop() + _loc12_.config.localizationIdentifier);
                                    }
                                    §§push(§§pop().getString(§§pop(),§§pop()));
                                    if(_loc27_)
                                    {
                                       §§push(§§pop());
                                       if(_loc28_)
                                       {
                                          addr08d1:
                                          §§push(§§pop());
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(LocaUtils);
                                    §§push("rcl.quest");
                                    §§push("rcl.quest.flavor.");
                                    if(!_loc28_)
                                    {
                                       §§push(§§pop() + _loc12_.config.localizationIdentifier);
                                    }
                                    §§push(§§pop().getString(§§pop(),§§pop()));
                                    if(!_loc28_)
                                    {
                                       §§goto(addr08d1);
                                    }
                                 }
                                 §§pop().bubbleText = §§pop();
                                 if(_loc27_ || Boolean(_loc2_))
                                 {
                                    _loc2_.questGfxId = _loc12_.config.gfxId;
                                    if(_loc27_ || Boolean(_loc2_))
                                    {
                                       addr08fc:
                                       _loc2_.lastUpdated = _loc12_.lastUpdated;
                                       if(_loc27_ || Boolean(_loc1_))
                                       {
                                          addr0913:
                                          §§push(_loc2_);
                                          if(_loc27_)
                                          {
                                             if(_loc2_.isQuestComplete)
                                             {
                                                addr0922:
                                                §§push("reward");
                                                if(_loc27_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§push("quest");
                                             }
                                             §§pop().polaroid = §§pop();
                                             if(_loc27_ || Boolean(_loc2_))
                                             {
                                                _loc2_.questID = _loc12_.id;
                                                if(_loc27_ || Boolean(_loc3_))
                                                {
                                                   addr0959:
                                                   §§push(_loc12_.config);
                                                   if(!_loc28_)
                                                   {
                                                      §§push(§§pop().gfxId == GFXID_PRODUCTION_TASK);
                                                      if(_loc27_ || Boolean(_loc1_))
                                                      {
                                                         var _temp_70:* = §§pop();
                                                         §§push(_temp_70);
                                                         if(!_temp_70)
                                                         {
                                                            if(!_loc28_)
                                                            {
                                                               addr0983:
                                                               §§pop();
                                                               if(!_loc28_)
                                                               {
                                                                  addr0995:
                                                                  addr098e:
                                                                  addr098a:
                                                                  if(_loc12_.config.gfxId == GFXID_SELLING_TASK)
                                                                  {
                                                                     if(_loc27_ || Boolean(this))
                                                                     {
                                                                        _loc23_ = 0;
                                                                        if(_loc27_ || Boolean(_loc3_))
                                                                        {
                                                                           for each(_loc18_ in _loc12_.tasks)
                                                                           {
                                                                              for each(_loc19_ in _loc18_.taskConfig.questTaskTarget.questTaskItem)
                                                                              {
                                                                                 if(_loc19_.questTaskItemType == QuestSystemTaskTargetTypeConstants.GOOD)
                                                                                 {
                                                                                    if(_loc27_ || Boolean(_loc1_))
                                                                                    {
                                                                                       _loc2_.targetGoodGfxId = this._configProxy.goods[_loc19_.questTaskItemID].gfxId;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr0a3c:
                                                                        if(!(_loc28_ && Boolean(this)))
                                                                        {
                                                                           addr0a4c:
                                                                           _loc2_.questGiverGfxId = _loc12_.questGiverGfxId;
                                                                           if(_loc28_ && Boolean(_loc2_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr0a63:
                                                                     _loc1_.push(_loc2_);
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr0a4c);
                                                            }
                                                         }
                                                         §§goto(addr0995);
                                                      }
                                                      §§goto(addr0983);
                                                   }
                                                   §§goto(addr098e);
                                                }
                                             }
                                             §§goto(addr098a);
                                          }
                                          §§goto(addr0922);
                                       }
                                       §§goto(addr0959);
                                    }
                                    §§goto(addr0a4c);
                                 }
                                 §§goto(addr0a63);
                              }
                              §§goto(addr087e);
                           }
                           §§goto(addr0a4c);
                        }
                        else
                        {
                           checkTasks(_loc12_,_loc3_);
                           if(_loc27_ || Boolean(_loc2_))
                           {
                              addr07e5:
                              _loc2_.tasks = _loc3_;
                              if(!_loc27_)
                              {
                                 continue;
                              }
                              _loc2_.rewards = getQuestRewards(_loc12_);
                              if(!(_loc28_ && Boolean(_loc2_)))
                              {
                                 _loc2_.drops = getQuestDrops(_loc12_);
                                 if(_loc27_)
                                 {
                                    _loc2_.isQuestComplete = _loc12_.state == QuestSystemStateConst.DONE;
                                    if(_loc27_ || Boolean(_loc3_))
                                    {
                                       §§goto(addr083e);
                                    }
                                    §§goto(addr0913);
                                 }
                                 §§goto(addr098a);
                              }
                              §§goto(addr0a4c);
                           }
                        }
                        §§goto(addr08fc);
                     }
                     §§goto(addr0995);
                  }
                  §§goto(addr07e5);
               }
               §§goto(addr0a3c);
            }
         }
         while(§§pop())
         {
            _loc14_ = §§nextvalue(_loc21_,_loc22_);
            if(!_loc28_)
            {
               this._questDetailsDict[_loc14_.questID] = _loc14_;
            }
            §§push(§§hasnext(_loc22_,_loc21_));
         }
         §§goto(addr0c02);
      }
      
      private function configureLinkParameter(param1:QuestTaskDTO) : Array
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:ConfigPlayfieldItemDTO = null;
         var _loc4_:IQuestTaskItemDTO = null;
         var _loc2_:Array = [];
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            if(param1.taskConfig.questTaskTarget)
            {
               addr0040:
               var _loc5_:int = 0;
               var _loc6_:* = param1.taskConfig.questTaskTarget.questTaskItem;
               for each(_loc5_ in _loc6_)
               {
                  var _temp_3:* = _loc5_;
                  _loc4_ = _loc5_;
                  if(_loc4_.questTaskItemType != QuestSystemTaskTargetTypeConstants.PLAYFIELDITEM)
                  {
                     continue;
                  }
                  _loc3_ = this._configProxy.config.items[_loc4_.questTaskItemID];
                  if(_loc8_)
                  {
                     §§push(Boolean(_loc3_));
                     if(_loc8_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(_loc8_ || Boolean(_loc2_))
                           {
                              §§pop();
                              if(!_loc8_)
                              {
                                 break;
                              }
                              addr00d8:
                              §§push(_loc3_.isUpgrade);
                              if(_loc8_ || Boolean(param1))
                              {
                                 addr00d7:
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    addr00e2:
                                    _loc2_.push(_loc3_.id);
                                 }
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr00d7);
                        }
                        §§goto(addr00d8);
                     }
                     §§goto(addr00d7);
                  }
                  §§goto(addr00e2);
               }
            }
            return _loc2_;
         }
         §§goto(addr0040);
      }
      
      private function setDepositTaskValues(param1:QuestTaskVo) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:ConfigGoodDTO = null;
         var _loc3_:ConfigResourceDTO = null;
         var _loc4_:IQuestTaskItemDTO = null;
         for each(_loc4_ in param1.taskDTO.taskConfig.questTaskTarget.questTaskItem)
         {
            §§push(_loc4_.questTaskItemType);
            if(!_loc8_)
            {
               §§push(QuestSystemTaskTargetTypeConstants.GOOD);
               if(_loc7_ || Boolean(_loc3_))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc8_ && Boolean(_loc3_)))
                     {
                        §§push(this._configProxy);
                        if(_loc7_ || Boolean(this))
                        {
                           §§push(§§pop().config);
                           if(!(_loc8_ && Boolean(this)))
                           {
                              _loc2_ = §§pop().goods[_loc4_.questTaskItemID];
                              if(_loc8_)
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                        }
                        else
                        {
                           addr00dd:
                           §§push(§§pop().config);
                        }
                        _loc3_ = §§pop().resources[_loc4_.questTaskItemID];
                        if(!(_loc7_ || Boolean(param1)))
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     addr00cc:
                     §§push(this._configProxy);
                     §§goto(addr00dd);
                  }
                  else
                  {
                     addr00c8:
                     addr00c2:
                     if(_loc4_.questTaskItemType != QuestSystemTaskTargetTypeConstants.RESOURCE)
                     {
                        continue;
                     }
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr00c8);
            }
            §§goto(addr00c2);
         }
         if(!_loc8_)
         {
            if(_loc2_)
            {
               if(!(_loc8_ && Boolean(this)))
               {
                  param1.depositGood = _loc2_;
                  if(_loc7_)
                  {
                     param1.currentDepositStock = this._stockProxy.getGoodByConfigId(_loc2_.id).playerStock;
                     if(!_loc7_)
                     {
                        §§goto(addr0178);
                     }
                     §§goto(addr01a3);
                  }
                  §§goto(addr0178);
               }
               §§goto(addr01b9);
            }
            else if(_loc3_)
            {
               if(_loc7_ || Boolean(_loc3_))
               {
                  param1.depositResource = _loc3_;
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     addr0178:
                     param1.currentDepositStock = this._playerResourceProxy.getResourceAmountByConstant(_loc3_.type);
                     if(_loc7_ || Boolean(param1))
                     {
                        addr01a3:
                        if(param1.isCompleted)
                        {
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              addr01b9:
                              param1.taskDTO.currentValue = param1.taskDTO.taskConfig.questTaskTarget.target;
                           }
                        }
                     }
                     §§goto(addr01cd);
                  }
                  addr01cd:
                  return;
               }
               §§goto(addr0178);
            }
         }
         §§goto(addr01a3);
      }
   }
}

