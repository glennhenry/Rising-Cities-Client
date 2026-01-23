package net.bigpoint.cityrama.model.rewards
{
   import flash.utils.Dictionary;
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.level.vo.LevelUpVo;
   import net.bigpoint.cityrama.model.rewards.vo.RewardDataVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigRewardDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class RewardLayerProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "RewardLayerProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "RewardLayerProxy";
      }
      
      private var _configProxy:GameConfigProxy;
      
      private var _paymentPackDetails:Dictionary;
      
      public function RewardLayerProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
            if(_loc3_ || Boolean(this))
            {
               addr004e:
               this._configProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
               if(!(_loc4_ && Boolean(this)))
               {
                  this._paymentPackDetails = new Dictionary();
               }
            }
            return;
         }
         §§goto(addr004e);
      }
      
      public static function getRewardVoForLevelUp(param1:LevelUpVo) : RewardDataVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:RewardDataVo = new RewardDataVo();
         if(!(_loc4_ && Boolean(param1)))
         {
            _loc2_.styleName = "rewardLevel";
            if(_loc3_ || _loc3_)
            {
               _loc2_.rewardType = RewardDataVo.LEVELUP;
               if(_loc3_ || RewardLayerProxy)
               {
                  _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.levelUp.button");
                  §§goto(addr0059);
               }
               §§goto(addr00e1);
            }
            §§goto(addr00cd);
         }
         addr0059:
         if(_loc3_ || RewardLayerProxy)
         {
            _loc2_.title = LocaUtils.getString("rcl.booklayer.levelUp","rcl.booklayer.levelUp.title");
            if(_loc3_ || Boolean(param1))
            {
               _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.levelUp","rcl.booklayer.levelUp.congratText",[param1.level]);
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr00cd:
                  _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.level.button");
                  if(_loc3_)
                  {
                     addr00e1:
                     _loc2_.receivedItems = param1.rewards;
                     if(_loc3_)
                     {
                        _loc2_.drops = param1.rewardDrops;
                     }
                  }
               }
               §§goto(addr00f6);
            }
            §§goto(addr00e1);
         }
         addr00f6:
         return _loc2_;
      }
      
      public static function getRewardVoByOutputDTO(param1:ConfigOutputDTO, param2:String = "smallskin", param3:Boolean = false, param4:ConfigCityWheelBuffDTO = null) : RewardItemComponentVo
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc6_:BriskDynaVo = null;
         var _loc5_:Object = new Object();
         _loc5_.size = param2;
         if(_loc9_)
         {
            _loc5_.useNew = param3;
            if(_loc9_ || Boolean(param2))
            {
               addr0044:
               if(param1 is ConfigRewardDTO)
               {
                  if(!_loc10_)
                  {
                     _loc5_.factor = (param1 as ConfigRewardDTO).doubled ? 2 : 1;
                  }
               }
            }
            var _loc7_:* = 1;
            if(_loc9_ || Boolean(param1))
            {
               if(param4)
               {
                  if(_loc9_ || param3)
                  {
                     _loc5_.buffGFX = param4.gfxId;
                     if(!_loc10_)
                     {
                        addr00a7:
                        §§push(param4.multiplier);
                        if(_loc9_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        if(_loc9_)
                        {
                           addr00bb:
                           _loc5_.price = param1.outputAmount / _loc7_;
                           if(!(_loc10_ && Boolean(param2)))
                           {
                              addr00d6:
                              if(param1.resourceConfig)
                              {
                                 if(!(_loc10_ && RewardLayerProxy))
                                 {
                                    addr00ec:
                                    _loc5_.type = RewardItemComponentVo.TYPE_RESOURCE;
                                    if(!_loc10_)
                                    {
                                       _loc5_.cid = param1.resourceConfig.id;
                                    }
                                 }
                                 addr06a1:
                                 §§push(param1.resourceConfig.type);
                                 if(!_loc10_)
                                 {
                                    var _loc8_:* = §§pop();
                                    if(!_loc10_)
                                    {
                                       while(true)
                                       {
                                          §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                          if(_loc9_)
                                          {
                                             §§push(_loc8_);
                                             if(!_loc10_)
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc9_ || param3)
                                                      {
                                                         §§push(0);
                                                         if(_loc10_)
                                                         {
                                                         }
                                                         loop4:
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               loop8:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_RC;
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(param2);
                                                                        if(_loc9_ || param3)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(_loc9_ || Boolean(param2))
                                                                           {
                                                                              §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          break loop1;
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(!(_loc9_ || Boolean(param2)))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr0202:
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          loop9:
                                                                                          switch(§§pop())
                                                                                          {
                                                                                             case 0:
                                                                                                _loc5_.itemIcon = "rc_icon_medium";
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   break loop8;
                                                                                                }
                                                                                                addr0ea7:
                                                                                                _loc5_.type = RewardItemComponentVo.TYPE_ASSIST;
                                                                                                if(!(_loc10_ && param3))
                                                                                                {
                                                                                                   addr0ec0:
                                                                                                   _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr0f35:
                                                                                                      _loc8_ = param2;
                                                                                                      addr0f34:
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr0f3d:
                                                                                                         §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                                                         if(_loc9_ || RewardLayerProxy)
                                                                                                         {
                                                                                                            addr0f51:
                                                                                                            §§push(_loc8_);
                                                                                                            if(!(_loc10_ && Boolean(param2)))
                                                                                                            {
                                                                                                               addr0f61:
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     addr0f6b:
                                                                                                                     §§push(0);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr0f83:
                                                                                                                     §§push(1);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr0f9d:
                                                                                                                  switch(§§pop())
                                                                                                                  {
                                                                                                                     case 0:
                                                                                                                        §§push(§§findproperty(BriskDynaVo));
                                                                                                                        §§push("gui_popups_rentCollector");
                                                                                                                        §§push("rentCollector_small_");
                                                                                                                        if(_loc9_ || param3)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + param1.assistConfig.gfxId);
                                                                                                                        }
                                                                                                                        _loc6_ = new §§pop().BriskDynaVo(§§pop(),§§pop());
                                                                                                                        if(!(_loc10_ && RewardLayerProxy))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        break loop9;
                                                                                                                     case 1:
                                                                                                                        §§push(§§findproperty(BriskDynaVo));
                                                                                                                        §§push("gui_popups_rentCollector");
                                                                                                                        §§push("rentCollector_big_");
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + param1.assistConfig.gfxId);
                                                                                                                        }
                                                                                                                        _loc6_ = new §§pop().BriskDynaVo(§§pop(),§§pop());
                                                                                                                  }
                                                                                                                  addr0fb9:
                                                                                                                  _loc5_.itemIconLib = _loc6_.dynaLibName;
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     _loc5_.itemIcon = _loc6_.dynaBmpName;
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  addr0f9b:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0f7f:
                                                                                                                  addr0f7d:
                                                                                                                  if(RewardItemComponentVo.SIZE_BIG === _loc8_)
                                                                                                                  {
                                                                                                                     §§goto(addr0f83);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(2);
                                                                                                                  }
                                                                                                                  §§goto(addr0f9b);
                                                                                                               }
                                                                                                               §§goto(addr0f83);
                                                                                                            }
                                                                                                            §§goto(addr0f7f);
                                                                                                         }
                                                                                                         §§goto(addr0f7d);
                                                                                                      }
                                                                                                      §§goto(addr0f6b);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0fb9);
                                                                                             case 1:
                                                                                                _loc5_.itemIcon = "ressource_rc_big";
                                                                                                if(_loc9_ || RewardLayerProxy)
                                                                                                {
                                                                                                   break loop8;
                                                                                                }
                                                                                                break;
                                                                                             default:
                                                                                                break loop8;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0547:
                                                                                          switch(§§pop())
                                                                                          {
                                                                                             case 0:
                                                                                                _loc5_.itemIcon = "pp_icon_medium";
                                                                                                if(!(_loc10_ && Boolean(param2)))
                                                                                                {
                                                                                                   break loop8;
                                                                                                }
                                                                                                addr09fb:
                                                                                                _loc5_.itemIcon = "ressource_" + param1.goodConfig.gfxId + "_medium";
                                                                                                if(!(_loc10_ && param3))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr0e96:
                                                                                                _loc5_.cid = param1.assistConfig.id;
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §§goto(addr0ea7);
                                                                                                }
                                                                                                addr100c:
                                                                                                return null;
                                                                                                addr100b:
                                                                                                break;
                                                                                             case 1:
                                                                                                _loc5_.itemIcon = "ressource_pp_big";
                                                                                                if(_loc9_ || Boolean(param1))
                                                                                                {
                                                                                                   break loop8;
                                                                                                }
                                                                                                addr0e26:
                                                                                                _loc5_.itemIconLib = _loc6_.dynaLibName;
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr0e35:
                                                                                                   _loc5_.itemIcon = _loc6_.dynaBmpName;
                                                                                                   if(_loc10_ && param3)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                _loc5_.quality = param1.improvementConfig.quality;
                                                                                                break;
                                                                                             default:
                                                                                                break loop8;
                                                                                          }
                                                                                       }
                                                                                       addr0fed:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc9_ || Boolean(param1))
                                                                                          {
                                                                                             §§goto(addr1001);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr100b);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                       if(_loc9_ || param3)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(!(_loc10_ && RewardLayerProxy))
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc9_ || param3)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§goto(addr0202);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr0537:
                                                                                                      if(_loc9_ || RewardLayerProxy)
                                                                                                      {
                                                                                                         §§goto(addr0547);
                                                                                                      }
                                                                                                      addr0b04:
                                                                                                      switch(§§pop())
                                                                                                      {
                                                                                                         case 0:
                                                                                                            _loc5_.itemIconLib = "gui_resources_icons";
                                                                                                            if(_loc9_ || RewardLayerProxy)
                                                                                                            {
                                                                                                               §§goto(addr09fb);
                                                                                                            }
                                                                                                            §§goto(addr0fb9);
                                                                                                         case 1:
                                                                                                            _loc5_.itemIconLib = "gui_popups_largeGoodIcons";
                                                                                                            if(_loc9_ || Boolean(param1))
                                                                                                            {
                                                                                                               _loc5_.itemIcon = "large_" + param1.goodConfig.gfxId;
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr0ec0);
                                                                                                      }
                                                                                                      §§goto(addr0fed);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(2);
                                                                                                      if(_loc9_ || param3)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                   }
                                                                                                   addr0744:
                                                                                                }
                                                                                                §§goto(addr0f9b);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(2);
                                                                                                if(!(_loc10_ && param3))
                                                                                                {
                                                                                                   §§goto(addr0202);
                                                                                                }
                                                                                                addr0e02:
                                                                                                if(!(_loc10_ && RewardLayerProxy))
                                                                                                {
                                                                                                   addr0e12:
                                                                                                   switch(§§pop())
                                                                                                   {
                                                                                                      case 0:
                                                                                                         _loc6_ = ImprovementLayerProxy.improvementGfx(param1.improvementConfig);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§goto(addr0e26);
                                                                                                         }
                                                                                                         §§goto(addr0e35);
                                                                                                      case 1:
                                                                                                         _loc6_ = ImprovementLayerProxy.improvementGfx(param1.improvementConfig,ImprovementLayerProxy.SIZE_BIG);
                                                                                                         §§goto(addr0e26);
                                                                                                      default:
                                                                                                         §§goto(addr0e26);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr0f9d);
                                                                                                }
                                                                                                §§goto(addr0fed);
                                                                                             }
                                                                                          }
                                                                                          addr0dd2:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!(_loc10_ && RewardLayerProxy))
                                                                                             {
                                                                                                addr0de4:
                                                                                                §§push(1);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§goto(addr0e02);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr0f9b);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr0f83);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(2);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§goto(addr0e02);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr0f9b);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0f9b);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0d90:
                                                                                          §§push(_loc8_);
                                                                                          if(_loc9_ || Boolean(param1))
                                                                                          {
                                                                                             addr0da0:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr0daa:
                                                                                                   §§push(0);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§goto(addr0e02);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr0f9b);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr0de4);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                                if(!(_loc10_ && param3))
                                                                                                {
                                                                                                   addr0dca:
                                                                                                   §§push(_loc8_);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§goto(addr0dd2);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr0f61);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0f7d);
                                                                                             }
                                                                                             §§goto(addr0f9b);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0f61);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr04d5:
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc9_ || Boolean(param2))
                                                                                       {
                                                                                          addr04e7:
                                                                                          §§push(0);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr0537);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr064e:
                                                                                          §§push(1);
                                                                                          if(!(_loc10_ && Boolean(param2)))
                                                                                          {
                                                                                             addr067c:
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                switch(§§pop())
                                                                                                {
                                                                                                   case 0:
                                                                                                      _loc5_.itemIcon = "ep_icon_medium";
                                                                                                      if(_loc10_ && Boolean(param2))
                                                                                                      {
                                                                                                      }
                                                                                                      break loop8;
                                                                                                   case 1:
                                                                                                      _loc5_.itemIcon = "ressource_ep_big";
                                                                                                      if(_loc9_ || RewardLayerProxy)
                                                                                                      {
                                                                                                         break loop8;
                                                                                                      }
                                                                                                      §§goto(addr1001);
                                                                                                   default:
                                                                                                      break loop8;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0f9d);
                                                                                          }
                                                                                          §§goto(addr0e02);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr04ff:
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr0507:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc9_ || Boolean(param1))
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§goto(addr0537);
                                                                                                   }
                                                                                                   addr08e3:
                                                                                                   if(!(_loc10_ && Boolean(param1)))
                                                                                                   {
                                                                                                      addr08f3:
                                                                                                      loop15:
                                                                                                      switch(§§pop())
                                                                                                      {
                                                                                                         case 0:
                                                                                                            _loc5_.itemIconLib = "gui_resources_icons";
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr097e:
                                                                                                            _loc5_.type = RewardItemComponentVo.TYPE_EVENT_GOOD;
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               addr0a57:
                                                                                                               §§push(param2);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr0a5e:
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  if(!(_loc10_ && Boolean(param1)))
                                                                                                                  {
                                                                                                                     addr0a6e:
                                                                                                                     §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        addr0a7a:
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           if(§§pop() === §§pop())
                                                                                                                           {
                                                                                                                              if(_loc9_ || Boolean(param2))
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    addr0af4:
                                                                                                                                    if(_loc9_ || Boolean(param1))
                                                                                                                                    {
                                                                                                                                       §§goto(addr0b04);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr0e12);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0caf:
                                                                                                                                    if(!(_loc10_ && Boolean(param2)))
                                                                                                                                    {
                                                                                                                                       switch(§§pop())
                                                                                                                                       {
                                                                                                                                          case 0:
                                                                                                                                             _loc5_.itemIcon = "FieldItem_" + param1.playfieldItemConfig.gfxId + "_small";
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                break loop15;
                                                                                                                                             }
                                                                                                                                             §§goto(addr0f34);
                                                                                                                                             break;
                                                                                                                                          case 1:
                                                                                                                                             _loc5_.itemIcon = "FieldItem_" + param1.playfieldItemConfig.gfxId + "_level1_big";
                                                                                                                                             if(_loc9_ || Boolean(param1))
                                                                                                                                             {
                                                                                                                                                break loop15;
                                                                                                                                             }
                                                                                                                                             §§goto(addr100b);
                                                                                                                                          default:
                                                                                                                                             break loop15;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr0f9d);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr0de4);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 addr0aac:
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(!(_loc10_ && Boolean(param2)))
                                                                                                                                 {
                                                                                                                                    addr0abc:
                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc10_ && RewardLayerProxy))
                                                                                                                                       {
                                                                                                                                          §§push(1);
                                                                                                                                          if(!(_loc10_ && RewardLayerProxy))
                                                                                                                                          {
                                                                                                                                             §§goto(addr0af4);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr0caf);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0f6b);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(2);
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr0af4);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr0caf);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr0caf);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr0dd2);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr0f51);
                                                                                                                        }
                                                                                                                        §§goto(addr0f7f);
                                                                                                                     }
                                                                                                                     §§goto(addr0aac);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr0daa);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0f35);
                                                                                                            }
                                                                                                            §§goto(addr0e26);
                                                                                                            break;
                                                                                                         case 1:
                                                                                                            _loc5_.itemIconLib = "gui_popups_largeGoodIcons";
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr0fb9);
                                                                                                      }
                                                                                                      §§goto(addr0fed);
                                                                                                   }
                                                                                                   §§goto(addr0f9d);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0c21:
                                                                                                   §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                                                   if(_loc9_ || Boolean(param1))
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(_loc9_ || param3)
                                                                                                      {
                                                                                                         addr0c45:
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               addr0c4f:
                                                                                                               §§push(0);
                                                                                                               if(_loc9_ || RewardLayerProxy)
                                                                                                               {
                                                                                                                  §§goto(addr0caf);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr0de4);
                                                                                                            }
                                                                                                            §§goto(addr0f9b);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                                            if(!(_loc10_ && param3))
                                                                                                            {
                                                                                                               addr0c77:
                                                                                                               §§push(_loc8_);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc10_ && RewardLayerProxy))
                                                                                                                     {
                                                                                                                        addr0c91:
                                                                                                                        §§push(1);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§goto(addr0caf);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr0daa);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(2);
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§goto(addr0caf);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0f9b);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr0da0);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr0d90);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0f61);
                                                                                                      }
                                                                                                      §§goto(addr0dd2);
                                                                                                   }
                                                                                                   §§goto(addr0dca);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(2);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §§goto(addr0537);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0f9b);
                                                                                          }
                                                                                          §§goto(addr0dd2);
                                                                                       }
                                                                                       addr08ab:
                                                                                       §§push(_loc8_);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr08bd:
                                                                                                §§push(1);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§goto(addr08e3);
                                                                                                }
                                                                                                §§goto(addr0f9b);
                                                                                             }
                                                                                             §§goto(addr0f83);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(2);
                                                                                             if(!(_loc10_ && param3))
                                                                                             {
                                                                                                §§goto(addr08e3);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0e02);
                                                                                       }
                                                                                       §§goto(addr0dd2);
                                                                                    }
                                                                                    §§goto(addr0f9b);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0c77);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr02eb:
                                                                              §§push(1);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr0311:
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    switch(§§pop())
                                                                                    {
                                                                                       case 0:
                                                                                          _loc5_.itemIcon = "vc_icon_medium";
                                                                                          if(_loc10_ && Boolean(param2))
                                                                                          {
                                                                                          }
                                                                                          break loop8;
                                                                                       case 1:
                                                                                          _loc5_.itemIcon = "ressource_cc_big";
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             break loop8;
                                                                                          }
                                                                                          addr04aa:
                                                                                          §§push(param2);
                                                                                          if(!(_loc10_ && param3))
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§goto(addr04d5);
                                                                                                   }
                                                                                                   §§goto(addr0f61);
                                                                                                }
                                                                                                §§goto(addr0d90);
                                                                                             }
                                                                                             addr0865:
                                                                                             §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                                             if(_loc9_ || RewardLayerProxy)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(_loc9_ || param3)
                                                                                                {
                                                                                                   addr0889:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr0893:
                                                                                                         §§push(0);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§goto(addr08e3);
                                                                                                         }
                                                                                                         §§goto(addr0e02);
                                                                                                      }
                                                                                                      §§goto(addr0a6e);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§goto(addr08ab);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr0dca);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0f61);
                                                                                                }
                                                                                                §§goto(addr0abc);
                                                                                             }
                                                                                             §§goto(addr0dca);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0d74:
                                                                                             _loc8_ = §§pop();
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr0d7c:
                                                                                                §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                                                if(_loc9_ || Boolean(param2))
                                                                                                {
                                                                                                   §§goto(addr0d90);
                                                                                                }
                                                                                                §§goto(addr0dca);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0de4);
                                                                                          break;
                                                                                       default:
                                                                                          break loop8;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr08f3);
                                                                              }
                                                                           }
                                                                           §§goto(addr067c);
                                                                        }
                                                                        addr0e86:
                                                                        if(§§pop() == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              §§goto(addr0e96);
                                                                           }
                                                                           §§goto(addr0ec0);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(null);
                                                                           if(!_loc10_)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              §§goto(addr0fed);
                                                                           }
                                                                        }
                                                                        §§goto(addr100c);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0581:
                                                                        _loc5_.itemIcon = "ep_icon_medium";
                                                                        if(!_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(param2);
                                                                        if(_loc9_ || Boolean(param2))
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                              if(_loc10_)
                                                                              {
                                                                                 break loop4;
                                                                              }
                                                                              §§push(_loc8_);
                                                                              if(!(_loc10_ && Boolean(param1)))
                                                                              {
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc10_ && param3))
                                                                                    {
                                                                                       addr0614:
                                                                                       §§push(0);
                                                                                       if(_loc10_ && Boolean(param1))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr067c);
                                                                                    }
                                                                                    §§goto(addr0de4);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                    if(_loc9_ || RewardLayerProxy)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§goto(addr064e);
                                                                                             }
                                                                                             §§goto(addr0c91);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(2);
                                                                                             if(!(_loc9_ || Boolean(param2)))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr067c);
                                                                                       }
                                                                                       §§goto(addr0889);
                                                                                    }
                                                                                    §§goto(addr0a7a);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr0da0);
                                                                              }
                                                                              §§goto(addr0f7d);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr0d7c);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr0a5e);
                                                                  case 1:
                                                                     _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_VC;
                                                                     if(!(_loc10_ && RewardLayerProxy))
                                                                     {
                                                                        §§push(param2);
                                                                        if(_loc9_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc9_ || Boolean(param2))
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc9_ || param3)
                                                                                          {
                                                                                             §§goto(addr0311);
                                                                                          }
                                                                                          §§goto(addr067c);
                                                                                       }
                                                                                       §§goto(addr0893);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                       if(_loc9_ || Boolean(param1))
                                                                                       {
                                                                                          addr02d1:
                                                                                          §§push(_loc8_);
                                                                                          if(_loc9_ || Boolean(param2))
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§goto(addr02eb);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr0614);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(2);
                                                                                                if(_loc9_ || RewardLayerProxy)
                                                                                                {
                                                                                                   §§goto(addr0311);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0caf);
                                                                                          }
                                                                                          §§goto(addr04d5);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0aac);
                                                                                 }
                                                                                 §§goto(addr0abc);
                                                                              }
                                                                              §§goto(addr02d1);
                                                                           }
                                                                           §§goto(addr0893);
                                                                        }
                                                                        §§goto(addr0a5e);
                                                                     }
                                                                     §§goto(addr0fed);
                                                                  case 2:
                                                                     _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_XP;
                                                                     if(_loc9_ || param3)
                                                                     {
                                                                        §§push(param2);
                                                                        if(_loc9_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(RewardItemComponentVo.SIZE_SMALL);
                                                                              if(_loc9_ || Boolean(param1))
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc9_ || RewardLayerProxy)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!(_loc9_ || Boolean(param1)))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr0430:
                                                                                       if(!(_loc10_ && param3))
                                                                                       {
                                                                                          switch(§§pop())
                                                                                          {
                                                                                             case 0:
                                                                                                _loc5_.itemIcon = "xp_icon_medium";
                                                                                                if(_loc10_ && Boolean(param2))
                                                                                                {
                                                                                                }
                                                                                                break loop8;
                                                                                             case 1:
                                                                                                _loc5_.itemIcon = "ressource_xp_big";
                                                                                                if(_loc9_ || Boolean(param2))
                                                                                                {
                                                                                                   break loop8;
                                                                                                }
                                                                                                break;
                                                                                             default:
                                                                                                break loop8;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr0547);
                                                                                       }
                                                                                       §§goto(addr0fed);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr04e7);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(RewardItemComponentVo.SIZE_BIG);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc9_ || Boolean(param1))
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   if(_loc9_ || param3)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   §§goto(addr0af4);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr0d7c);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(ServerResConst.RESOURCE_EXPERIENCE);
                                                                                                if(_loc9_ || param3)
                                                                                                {
                                                                                                   break loop4;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(_loc9_ || Boolean(param2))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(4);
                                                                                                               if(_loc9_ || param3)
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               §§goto(addr0caf);
                                                                                                            }
                                                                                                            addr07ae:
                                                                                                         }
                                                                                                         §§goto(addr0f3d);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(5);
                                                                                                         if(_loc9_ || Boolean(param1))
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr0abc);
                                                                                                   }
                                                                                                   §§goto(addr0caf);
                                                                                                }
                                                                                                addr0794:
                                                                                             }
                                                                                             §§goto(addr0af4);
                                                                                          }
                                                                                       }
                                                                                       break loop1;
                                                                                       addr06f1:
                                                                                    }
                                                                                    §§push(_loc8_);
                                                                                    if(!(_loc10_ && param3))
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(1);
                                                                                             if(!(_loc10_ && Boolean(param1)))
                                                                                             {
                                                                                                §§goto(addr0430);
                                                                                             }
                                                                                             §§goto(addr0caf);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr0c21);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(2);
                                                                                          if(!(_loc10_ && Boolean(param1)))
                                                                                          {
                                                                                             §§goto(addr0430);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr0507);
                                                                                    }
                                                                                    §§goto(addr0f9b);
                                                                                    §§goto(addr0abc);
                                                                                 }
                                                                                 §§goto(addr0f9d);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr04ff);
                                                                              }
                                                                           }
                                                                           §§goto(addr0893);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr0d74);
                                                                        }
                                                                     }
                                                                     §§goto(addr0fed);
                                                                  case 3:
                                                                     _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_PP;
                                                                     if(_loc10_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr04aa);
                                                                     break;
                                                                  case 4:
                                                                     _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_EP;
                                                                     if(!(_loc10_ && Boolean(param1)))
                                                                     {
                                                                        §§goto(addr0581);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr092f:
                                                                        _loc5_.cid = param1.goodConfig.id;
                                                                        if(_loc9_ || Boolean(param2))
                                                                        {
                                                                           _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(param1.goodConfig);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr0963:
                                                                                 §§push(§§pop().isEventGood);
                                                                                 if(_loc9_ || RewardLayerProxy)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§goto(addr097e);
                                                                                       }
                                                                                       §§goto(addr09fb);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0997:
                                                                                       §§push(param1.goodConfig.isSpecialGood);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr09a0:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc10_ && param3))
                                                                                             {
                                                                                                _loc5_.type = RewardItemComponentVo.TYPE_SPECIAL_GOOD;
                                                                                                if(_loc9_ || param3)
                                                                                                {
                                                                                                   §§goto(addr0a57);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0ced:
                                                                                                   _loc5_.cid = param1.improvementConfig.id;
                                                                                                   if(_loc9_ || Boolean(param2))
                                                                                                   {
                                                                                                      _loc5_.type = RewardItemComponentVo.TYPE_IMPROVEMENT;
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr0d17:
                                                                                                         _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
                                                                                                         if(_loc9_ || Boolean(param2))
                                                                                                         {
                                                                                                            addr0d6d:
                                                                                                            §§push(param2);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§goto(addr0d74);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr0e86);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0e26);
                                                                                                      }
                                                                                                      §§goto(addr0d6d);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr100b);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0b62:
                                                                                                _loc5_.priceIcon = RewardItemComponentVo.PRICE_ICON_CONSTRUCTED;
                                                                                                if(!(_loc10_ && RewardLayerProxy))
                                                                                                {
                                                                                                   addr0b82:
                                                                                                   addr0b7f:
                                                                                                   if(param1.playfieldItemConfig.specialHighlighting)
                                                                                                   {
                                                                                                      if(_loc9_ || param3)
                                                                                                      {
                                                                                                         addr0b94:
                                                                                                         _loc5_.type = RewardItemComponentVo.TYPE_SPECIAL_PERMISSION;
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr0ba5:
                                                                                                            _loc5_.itemIconLib = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(param1.playfieldItemConfig);
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§push(param2);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  if(_loc9_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     §§goto(addr0c21);
                                                                                                                  }
                                                                                                                  §§goto(addr0c91);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr0d74);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr0fb9);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0e72:
                                                                                                            addr0e76:
                                                                                                            §§push(param1.assistConfig.type);
                                                                                                            if(!(_loc10_ && Boolean(param2)))
                                                                                                            {
                                                                                                               §§goto(addr0e86);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0f35);
                                                                                                      }
                                                                                                      §§goto(addr0ec0);
                                                                                                   }
                                                                                                   §§goto(addr0ba5);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0fed);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc5_.type = RewardItemComponentVo.TYPE_NORMAL_GOOD;
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§goto(addr0a57);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0ea7);
                                                                                       }
                                                                                       §§goto(addr0b82);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr09a0);
                                                                              }
                                                                              §§goto(addr0997);
                                                                           }
                                                                           §§goto(addr0a57);
                                                                        }
                                                                     }
                                                                     §§goto(addr0fed);
                                                               }
                                                               §§push(param2);
                                                               if(!(_loc10_ && Boolean(param1)))
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  if(_loc9_ || param3)
                                                                  {
                                                                     §§goto(addr0865);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0c91);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr0e86);
                                                               }
                                                               §§goto(addr100c);
                                                            }
                                                            §§goto(addr0e12);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc9_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§goto(addr0744);
                                                                  }
                                                                  §§goto(addr0c4f);
                                                               }
                                                               else
                                                               {
                                                                  §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                                  if(!(_loc10_ && param3))
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc9_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(3);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§goto(addr07ea);
                                                                              }
                                                                              §§goto(addr0caf);
                                                                           }
                                                                           §§goto(addr08bd);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§goto(addr0794);
                                                                           }
                                                                        }
                                                                        §§goto(addr0dca);
                                                                     }
                                                                     §§goto(addr0c45);
                                                                  }
                                                               }
                                                               §§goto(addr08ab);
                                                            }
                                                            §§goto(addr0abc);
                                                         }
                                                         addr07ea:
                                                         break;
                                                      }
                                                      §§goto(addr07ae);
                                                   }
                                                   else
                                                   {
                                                      §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                      if(!_loc10_)
                                                      {
                                                         §§goto(addr06f1);
                                                      }
                                                   }
                                                   §§goto(addr0aac);
                                                }
                                                continue;
                                             }
                                             §§goto(addr0dd2);
                                          }
                                          §§goto(addr0dca);
                                       }
                                    }
                                    §§goto(addr0893);
                                 }
                                 §§goto(addr0d74);
                              }
                              else
                              {
                                 §§push(param1.goodConfig);
                                 if(!_loc10_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc10_ && Boolean(param2)))
                                       {
                                          §§goto(addr092f);
                                       }
                                       §§goto(addr0d17);
                                    }
                                    else
                                    {
                                       §§push(param1.playfieldItemConfig);
                                       if(_loc9_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc9_ || param3)
                                             {
                                                _loc5_.cid = param1.playfieldItemConfig.id;
                                                if(_loc9_)
                                                {
                                                   _loc5_.type = RewardItemComponentVo.TYPE_NORMAL_PERMISSION;
                                                   if(_loc9_)
                                                   {
                                                      §§goto(addr0b62);
                                                   }
                                                   §§goto(addr0b94);
                                                }
                                                §§goto(addr0fb9);
                                             }
                                             else
                                             {
                                                §§goto(addr0d17);
                                             }
                                          }
                                          else if(param1.improvementConfig)
                                          {
                                             if(!(_loc10_ && Boolean(param2)))
                                             {
                                                §§goto(addr0ced);
                                             }
                                             §§goto(addr0d17);
                                          }
                                          else
                                          {
                                             §§push(param1.assistConfig);
                                             if(!_loc10_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§goto(addr0e72);
                                                   }
                                                   addr1001:
                                                   return new RewardItemComponentVo(_loc5_);
                                                }
                                                §§goto(addr0fed);
                                             }
                                             §§goto(addr0e76);
                                          }
                                          §§goto(addr0e76);
                                       }
                                    }
                                    §§goto(addr0b7f);
                                 }
                              }
                              §§goto(addr0963);
                           }
                           §§goto(addr06a1);
                        }
                        §§goto(addr00ec);
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr00bb);
            }
            §§goto(addr00d6);
         }
         §§goto(addr0044);
      }
      
      public static function generateDropInfo(param1:ConfigOutputDTO) : DropInfoVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            if(param1.resourceConfig != null)
            {
               if(!_loc2_)
               {
                  return new DropInfoVo(param1.resourceConfig.type);
               }
            }
            if(param1.goodConfig != null)
            {
               if(_loc3_ || Boolean(param1))
               {
                  return new DropInfoVo(ServerOutputConstants.GOOD,param1.goodConfig.gfxId);
               }
            }
            else
            {
               if(param1.improvementConfig != null)
               {
                  if(!_loc2_)
                  {
                     return new DropInfoVo(ServerImprovementConstants.IMPROVEMENT,0);
                  }
                  addr00cd:
                  §§push(param1.assistConfig);
               }
               else
               {
                  §§push(param1.assistConfig);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop() != null)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr00cd);
                        }
                        §§goto(addr00e2);
                     }
                     §§goto(addr00f0);
                  }
               }
               if(§§pop().type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr00e2);
                  }
               }
            }
            addr00f0:
            return null;
         }
         addr00e2:
         return new DropInfoVo(param1.assistConfig.type);
      }
      
      public static function sortRewardList(param1:ArrayCollection) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:SortField = new SortField();
         if(_loc4_)
         {
            _loc2_.name = "sortint";
            if(!(_loc5_ && RewardLayerProxy))
            {
               addr0046:
               _loc2_.numeric = true;
            }
            var _loc3_:Sort = new Sort();
            if(!_loc5_)
            {
               _loc3_.fields = [_loc2_];
               if(!(_loc5_ && RewardLayerProxy))
               {
                  param1.sort = _loc3_;
                  if(!_loc5_)
                  {
                     param1.refresh();
                  }
               }
            }
            return;
         }
         §§goto(addr0046);
      }
      
      public function getRewardForPaymentPack(param1:Number, param2:String) : RewardDataVo
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc4_:RewardDataVo = null;
         var _loc5_:ArrayCollection = null;
         var _loc6_:ConfigOutputDTO = null;
         var _loc7_:RewardItemComponentVo = null;
         var _loc8_:Vector.<DropInfoVo> = null;
         var _loc9_:DropInfoVo = null;
         var _loc3_:ConfigPaymentPackDTO = this._configProxy.config.paymentPacks[param1];
         if(!(_loc13_ && Boolean(_loc3_)))
         {
            if(_loc3_)
            {
               addr005b:
               _loc4_ = this.fillUpDetails(_loc3_);
               if(_loc4_)
               {
                  _loc5_ = new ArrayCollection();
                  _loc8_ = new Vector.<DropInfoVo>();
                  var _loc10_:* = 0;
                  var _loc11_:* = _loc3_.resources;
                  while(true)
                  {
                     §§push(§§hasnext(_loc11_,_loc10_));
                     if(!_loc12_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        if(_loc12_)
                        {
                           if(_loc12_)
                           {
                              if(!_loc13_)
                              {
                                 §§push(0);
                                 if(_loc12_ || Boolean(param2))
                                 {
                                    _loc10_ = §§pop();
                                    if(_loc12_ || Boolean(this))
                                    {
                                       _loc11_ = _loc3_.permissions;
                                       loop1:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc11_,_loc10_));
                                          if(!(_loc12_ || Boolean(this)))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             _loc6_ = §§nextvalue(_loc10_,_loc11_);
                                             _loc7_ = getRewardVoByOutputDTO(_loc6_,param2);
                                             _loc9_ = null;
                                             if(_loc12_ || Boolean(param1))
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc12_)
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc5_.addItem(_loc7_);
                                             continue;
                                          }
                                          if(!(_loc13_ && Boolean(this)))
                                          {
                                             addr01a7:
                                             if(!(_loc13_ && Boolean(param1)))
                                             {
                                                if(!(_loc13_ && Boolean(param1)))
                                                {
                                                   §§push(0);
                                                   if(_loc12_)
                                                   {
                                                      _loc10_ = §§pop();
                                                      if(_loc12_ || Boolean(param2))
                                                      {
                                                         _loc11_ = _loc3_.goods;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc11_,_loc10_));
                                                            if(_loc12_ || Boolean(param2))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!(_loc13_ && Boolean(param2)))
                                                                  {
                                                                     §§goto(addr0342);
                                                                  }
                                                                  addr0332:
                                                                  if(!(_loc13_ && Boolean(this)))
                                                                  {
                                                                     addr0342:
                                                                     addr027b:
                                                                     if(!_loc13_)
                                                                     {
                                                                        addr0283:
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc12_)
                                                                           {
                                                                              addr0293:
                                                                              _loc10_ = §§pop();
                                                                              if(_loc12_)
                                                                              {
                                                                                 addr029b:
                                                                                 _loc11_ = _loc3_.improvements;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc11_,_loc10_));
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       break loop1;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 loop3:
                                                                                 while(§§pop())
                                                                                 {
                                                                                    _loc6_ = §§nextvalue(_loc10_,_loc11_);
                                                                                    §§push(_loc6_.assistConfig);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          var _temp_13:* = §§pop();
                                                                                          §§push(_temp_13);
                                                                                          if(_temp_13)
                                                                                          {
                                                                                             if(_loc12_ || Boolean(_loc3_))
                                                                                             {
                                                                                                addr0395:
                                                                                                §§pop();
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   addr03aa:
                                                                                                   addr03a1:
                                                                                                   if(_loc6_.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
                                                                                                   {
                                                                                                      addr03ae:
                                                                                                      _loc7_ = getRewardVoByOutputDTO(_loc6_,param2);
                                                                                                      _loc9_ = null;
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               addr03d5:
                                                                                                               _loc5_.addItem(_loc7_);
                                                                                                            }
                                                                                                            _loc9_ = generateDropInfo(_loc6_);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(!(_loc13_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  _loc8_.push(_loc9_);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§hasnext(_loc11_,_loc10_));
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         addr0405:
                                                                                                      }
                                                                                                      §§goto(addr03d5);
                                                                                                   }
                                                                                                   §§goto(addr0405);
                                                                                                }
                                                                                                §§goto(addr03ae);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr03aa);
                                                                                       }
                                                                                       §§goto(addr0395);
                                                                                    }
                                                                                    §§goto(addr03a1);
                                                                                 }
                                                                                 addr0408:
                                                                                 addr040c:
                                                                                 addr0317:
                                                                              }
                                                                              addr040e:
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§goto(addr0425);
                                                                              }
                                                                              §§goto(addr0434);
                                                                           }
                                                                           addr0354:
                                                                           _loc10_ = §§pop();
                                                                           if(!_loc13_)
                                                                           {
                                                                              addr035c:
                                                                              _loc11_ = _loc3_.assists;
                                                                              §§goto(addr0405);
                                                                           }
                                                                           §§goto(addr040e);
                                                                        }
                                                                        addr0352:
                                                                        §§goto(addr0354);
                                                                        §§push(0);
                                                                     }
                                                                     if(!(_loc13_ && Boolean(this)))
                                                                     {
                                                                        §§goto(addr0352);
                                                                     }
                                                                     §§goto(addr0425);
                                                                  }
                                                                  §§goto(addr035c);
                                                               }
                                                               else
                                                               {
                                                                  _loc6_ = §§nextvalue(_loc10_,_loc11_);
                                                                  _loc7_ = getRewardVoByOutputDTO(_loc6_,param2);
                                                                  _loc9_ = null;
                                                                  if(_loc12_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!(_loc13_ && Boolean(param2)))
                                                                        {
                                                                           addr0230:
                                                                           _loc5_.addItem(_loc7_);
                                                                        }
                                                                        _loc9_ = generateDropInfo(_loc6_);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              _loc8_.push(_loc9_);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr0230);
                                                               }
                                                            }
                                                            §§goto(addr0408);
                                                         }
                                                      }
                                                      §§goto(addr035c);
                                                   }
                                                   §§goto(addr0293);
                                                }
                                                addr0425:
                                                sortRewardList(_loc5_);
                                                if(_loc12_)
                                                {
                                                   addr0434:
                                                   _loc4_.receivedItems = _loc5_;
                                                   if(_loc12_ || Boolean(param1))
                                                   {
                                                      _loc4_.drops = _loc8_;
                                                      if(!_loc12_)
                                                      {
                                                         §§goto(addr0459);
                                                      }
                                                   }
                                                }
                                                return _loc4_;
                                             }
                                             §§goto(addr0283);
                                          }
                                          §§goto(addr027b);
                                       }
                                       break;
                                    }
                                    §§goto(addr035c);
                                 }
                                 §§goto(addr0293);
                              }
                              §§goto(addr0352);
                           }
                           §§goto(addr029b);
                        }
                        §§goto(addr01a7);
                     }
                     else
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        _loc7_ = getRewardVoByOutputDTO(_loc6_,param2);
                        _loc9_ = null;
                        if(!_loc13_)
                        {
                           if(_loc7_)
                           {
                              if(!(_loc13_ && Boolean(param2)))
                              {
                                 addr00cd:
                                 _loc5_.addItem(_loc7_);
                              }
                              _loc9_ = generateDropInfo(_loc6_);
                              if(_loc9_)
                              {
                                 if(!_loc13_)
                                 {
                                    _loc8_.push(_loc9_);
                                 }
                              }
                           }
                           continue;
                        }
                        §§goto(addr00cd);
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc13_ && Boolean(param1)))
                        {
                           §§goto(addr0332);
                        }
                        §§goto(addr040c);
                     }
                     else
                     {
                        _loc6_ = §§nextvalue(_loc10_,_loc11_);
                        _loc7_ = getRewardVoByOutputDTO(_loc6_,param2);
                        _loc9_ = null;
                        if(!(_loc13_ && Boolean(param1)))
                        {
                           if(_loc7_)
                           {
                              if(!(_loc13_ && Boolean(param1)))
                              {
                                 addr02e7:
                                 _loc5_.addItem(_loc7_);
                              }
                              _loc9_ = generateDropInfo(_loc6_);
                              if(_loc9_)
                              {
                                 if(!(_loc13_ && Boolean(param1)))
                                 {
                                    _loc8_.push(_loc9_);
                                 }
                              }
                           }
                           §§goto(addr0317);
                        }
                        §§goto(addr02e7);
                     }
                  }
               }
            }
            addr0459:
            return null;
         }
         §§goto(addr005b);
      }
      
      private function fillUpDetails(param1:ConfigPaymentPackDTO) : RewardDataVo
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:RewardDataVo = null;
         if(_loc5_ || Boolean(this))
         {
            if(this._paymentPackDetails[param1.id])
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  return this._paymentPackDetails[param1.id];
               }
            }
         }
         _loc2_ = new RewardDataVo();
         var _loc3_:* = param1.type;
         if(_loc5_)
         {
            §§push(ServerPaymentPackConst.STARTERPACK);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               §§push(_loc3_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr042b:
                        §§push(1);
                        if(_loc5_ || Boolean(_loc3_))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ServerPaymentPackConst.AID_PACK);
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr042b);
                              }
                              else
                              {
                                 addr04a5:
                                 §§push(3);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ServerPaymentPackConst.PREMIUMPACK_A);
                              if(_loc5_ || Boolean(param1))
                              {
                                 §§push(_loc3_);
                                 if(!(_loc4_ && Boolean(_loc3_)))
                                 {
                                    addr0462:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_ || Boolean(this))
                                       {
                                          addr0474:
                                          §§push(2);
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr04d1:
                                          §§push(4);
                                          if(_loc5_)
                                          {
                                          }
                                       }
                                       §§goto(addr04e9);
                                    }
                                    else
                                    {
                                       §§push(ServerPaymentPackConst.EVOUCHER);
                                       if(_loc5_)
                                       {
                                          addr048c:
                                          §§push(_loc3_);
                                          if(_loc5_ || Boolean(_loc3_))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr04a5);
                                                }
                                                else
                                                {
                                                   §§goto(addr04d1);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr04cd);
                                             }
                                             §§goto(addr04d1);
                                          }
                                          addr04cd:
                                       }
                                       §§goto(addr04cc);
                                    }
                                 }
                                 §§goto(addr04cd);
                              }
                              addr04cc:
                              if(ServerPaymentPackConst.EXPANSION_REFUND === _loc3_)
                              {
                                 §§goto(addr04d1);
                              }
                              else
                              {
                                 §§push(5);
                              }
                              §§goto(addr04e9);
                           }
                           §§goto(addr04e9);
                        }
                        §§goto(addr0462);
                     }
                     §§goto(addr04cc);
                  }
                  addr04e9:
                  switch(§§pop())
                  {
                     case 0:
                        _loc2_.styleName = "rewardStarter";
                        if(_loc5_ || Boolean(this))
                        {
                           _loc2_.rewardType = RewardDataVo.PAYMENTPACK;
                           if(!(_loc5_ || Boolean(_loc2_)))
                           {
                              break;
                           }
                           _loc2_.title = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.starterPack.title");
                           if(!_loc4_)
                           {
                              _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.starterPack.flavour");
                              if(_loc5_ || Boolean(_loc2_))
                              {
                                 _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.starterPack.button");
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.starter.button");
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       break;
                                    }
                                    addr032c:
                                    _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.starterPack.button");
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    addr0379:
                                    _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.default.flavour");
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.default.button.capital");
                                 if(_loc5_ || Boolean(this))
                                 {
                                    addr03ad:
                                    _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.default.button.tooltip");
                                    if(_loc5_)
                                    {
                                    }
                                 }
                              }
                              break;
                           }
                           addr0363:
                           _loc2_.title = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.default.title.capital");
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§goto(addr0379);
                        }
                        else
                        {
                           addr0167:
                           _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.level.button");
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                        §§goto(addr0363);
                     case 1:
                        _loc2_.styleName = "rewardStarter";
                        if(!_loc4_)
                        {
                           _loc2_.rewardType = RewardDataVo.PAYMENTPACK;
                           if(!_loc4_)
                           {
                              _loc2_.title = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.aid.title");
                              if(_loc5_)
                              {
                                 _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.aid.flavour");
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.starterPack.button");
                                    if(!_loc4_)
                                    {
                                       §§goto(addr0167);
                                    }
                                    else
                                    {
                                       addr02e3:
                                       _loc2_.title = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.refund.title");
                                       if(!(_loc4_ && Boolean(_loc3_)))
                                       {
                                          _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.refund.flavour");
                                          if(_loc5_)
                                          {
                                             addr0317:
                                             _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.starterPack.button");
                                             if(!_loc4_)
                                             {
                                                §§goto(addr032c);
                                             }
                                          }
                                          else
                                          {
                                             addr0353:
                                             _loc2_.rewardType = RewardDataVo.PAYMENTPACK;
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             §§goto(addr0363);
                                          }
                                          §§goto(addr0379);
                                       }
                                    }
                                    §§goto(addr0363);
                                 }
                                 §§goto(addr03ad);
                              }
                              §§goto(addr0379);
                           }
                           else
                           {
                              addr01d9:
                              _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.premium.button");
                              if(!_loc4_)
                              {
                                 _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.premium.button");
                                 if(_loc5_ || Boolean(this))
                                 {
                                 }
                                 break;
                              }
                           }
                           §§goto(addr02e3);
                        }
                        else
                        {
                           addr029c:
                           _loc2_.buttonTooltip = LocaUtils.getString("rcl.tooltips.rewardLayer","rcl.tooltips.rewardLayer.starterPack.button");
                           if(!(_loc4_ && Boolean(this)))
                           {
                              break;
                           }
                        }
                        §§goto(addr0363);
                     case 2:
                        _loc2_.styleName = "rewardStarter";
                        if(!(_loc4_ && Boolean(this)))
                        {
                           _loc2_.rewardType = RewardDataVo.PAYMENTPACK;
                           if(_loc5_)
                           {
                              _loc2_.title = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.premium.title");
                              if(_loc4_)
                              {
                                 break;
                              }
                              _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.premium.flavour");
                              if(_loc4_ && Boolean(this))
                              {
                                 break;
                              }
                              §§goto(addr01d9);
                           }
                           else
                           {
                              addr0261:
                              _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.evoucher.flavour");
                              if(!(_loc5_ || Boolean(this)))
                              {
                                 break;
                              }
                              _loc2_.buttonText = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.starterPack.button");
                              if(!(_loc5_ || Boolean(_loc2_)))
                              {
                                 break;
                              }
                              §§goto(addr029c);
                           }
                           §§goto(addr0363);
                        }
                        else
                        {
                           addr0236:
                           _loc2_.title = LocaUtils.getString("rcl.booklayer.rewardLayer","rcl.booklayer.rewardLayer.evoucher.title");
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              §§goto(addr0261);
                           }
                           else
                           {
                              addr02cb:
                              _loc2_.rewardType = RewardDataVo.PAYMENTPACK;
                              if(_loc5_ || Boolean(this))
                              {
                                 §§goto(addr02e3);
                              }
                              §§goto(addr0317);
                           }
                        }
                        §§goto(addr0261);
                     case 3:
                        _loc2_.styleName = "rewardStarter";
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           _loc2_.rewardType = RewardDataVo.EVOUCHER;
                           if(_loc5_)
                           {
                              §§goto(addr0236);
                           }
                           §§goto(addr0363);
                        }
                        §§goto(addr029c);
                     case 4:
                        _loc2_.styleName = "rewardStarter";
                        if(!_loc4_)
                        {
                           §§goto(addr02cb);
                        }
                        §§goto(addr0353);
                     default:
                        _loc2_.styleName = "rewardStarter";
                        if(_loc5_)
                        {
                           §§goto(addr0353);
                        }
                        §§goto(addr03ad);
                  }
                  return _loc2_;
               }
               §§goto(addr04cd);
            }
            §§goto(addr048c);
         }
         §§goto(addr0474);
      }
   }
}

