package net.bigpoint.cityrama.view.homeImprovement.improvementStore
{
   import com.greensock.TweenLite;
   import flash.events.Event;
   import flash.geom.Point;
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.common.vo.RewardImprovementItemComponentVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementStoreAnimationLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.Events.ImprovementStoreItemRendererEvent;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.ImprovementStoreAnimationGrid;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.ImprovementStoreDataGrid;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.skins.ImprovementStoreRewardSkinClass;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ImprovementStoreAnimationMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ImprovementStoreAnimationMediator";
      
      private static const START:String = "START";
      
      private static const ANIMATION:String = "ANIMATION";
      
      private static const SPAWN:String = "SPAWN";
      
      private static const IDLE:String = "IDLE";
      
      private static const LINEID_0:uint = 0;
      
      private static const LINEID_1:uint = 1;
      
      private static const animationDelay:Number = 1;
      
      private static const animationDuration:Number = 0.5;
      
      private static const spawnDelay:Number = 0.5;
      
      public static const spawnDuration:Number = 0.5;
      
      private static const scrollDuration:Number = 0.3;
      
      private static const scrollDelay:Number = 1;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         NAME = "ImprovementStoreAnimationMediator";
         if(!(_loc1_ && _loc2_))
         {
            START = "START";
            if(!_loc1_)
            {
               addr0040:
               ANIMATION = "ANIMATION";
               if(_loc2_ || _loc2_)
               {
                  SPAWN = "SPAWN";
                  if(!_loc1_)
                  {
                     addr0064:
                     IDLE = "IDLE";
                     if(!(_loc1_ && ImprovementStoreAnimationMediator))
                     {
                        LINEID_0 = 0;
                        if(_loc2_)
                        {
                           §§goto(addr0091);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr00a6);
                  }
                  addr0091:
                  LINEID_1 = 1;
                  if(_loc2_ || _loc2_)
                  {
                     addr00a6:
                     animationDelay = 1;
                     if(!(_loc1_ && _loc1_))
                     {
                        animationDuration = 0.5;
                        if(_loc2_ || _loc2_)
                        {
                           addr00d0:
                           spawnDelay = 0.5;
                           if(_loc2_ || _loc1_)
                           {
                              spawnDuration = 0.5;
                              if(!(_loc1_ && ImprovementStoreAnimationMediator))
                              {
                                 addr0104:
                                 scrollDuration = 0.3;
                                 if(!_loc1_)
                                 {
                                    addr0111:
                                    scrollDelay = 1;
                                 }
                              }
                              §§goto(addr0119);
                           }
                           §§goto(addr0104);
                        }
                     }
                     §§goto(addr0111);
                  }
                  addr0119:
                  return;
               }
               §§goto(addr0064);
            }
            §§goto(addr0104);
         }
         §§goto(addr0064);
      }
      §§goto(addr0040);
      
      private const ANIMATIONSTEPS:Array;
      
      private var _data:ImprovementStoreAnimationLayerVo;
      
      private var _component:ImprovementStoreAnimationGrid;
      
      private var _nextAnimationStep:int;
      
      private var _improvementAnimationDelay:TweenLite;
      
      private var _spawnAnimationStopDelay:TweenLite;
      
      private var _pageScrollDelay:TweenLite;
      
      private var _baseCount:int;
      
      private var _currentPage:int;
      
      public function ImprovementStoreAnimationMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.ANIMATIONSTEPS = [START,ANIMATION,SPAWN,IDLE];
            if(_loc2_ || _loc2_)
            {
               addr0043:
               super(NAME,param1);
            }
            return;
         }
         §§goto(addr0043);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1 is ImprovementStoreAnimationLayerVo)
            {
               if(!_loc3_)
               {
                  addr0032:
                  this._data = param1 as ImprovementStoreAnimationLayerVo;
                  if(_loc2_)
                  {
                     this.setInitialValues();
                     if(_loc2_)
                     {
                        addr004b:
                        this.setupListeners();
                     }
                     §§goto(addr0051);
                  }
               }
               §§goto(addr004b);
            }
            addr0051:
            return;
         }
         §§goto(addr0032);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_)
         {
            §§push(ApplicationNotificationConstants.REALCURRENCY_CHANGED);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(0);
                        if(_loc4_ && Boolean(_loc2_))
                        {
                        }
                     }
                     else
                     {
                        addr008f:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr00a7);
                  }
                  else
                  {
                     §§goto(addr008b);
                  }
               }
               addr008b:
               §§goto(addr008a);
            }
            addr008a:
            if(ApplicationNotificationConstants.INGAMECURRENCY_CHANGED === _loc2_)
            {
               §§goto(addr008f);
            }
            else
            {
               §§push(2);
            }
            addr00a7:
            switch(§§pop())
            {
               case 0:
               case 1:
                  this.checkResources();
                  if(_loc4_)
                  {
                  }
            }
            return;
         }
         §§goto(addr008f);
      }
      
      private function setInitialValues() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(this._component);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     this._component = new ImprovementStoreAnimationGrid();
                     if(_loc3_ || Boolean(this))
                     {
                        addr0051:
                        §§push(this._component);
                        if(_loc3_ || _loc2_)
                        {
                           addr0062:
                           §§push(ImprovementStoreItemRendererEvent.ITEM_OUT);
                           if(_loc3_ || _loc3_)
                           {
                              §§pop().addEventListener(§§pop(),this.component_ITEM_OUTHandler);
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0094:
                                 this._component.addEventListener(ImprovementStoreItemRendererEvent.ITEM_OVER,this.component_ITEM_OVERHandler);
                                 addr008e:
                                 addr008a:
                                 if(!_loc4_)
                                 {
                                    addr00a2:
                                    if(facade.hasMediator(UserInterfaceInfoLayerMediator.NAME + NAME))
                                    {
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          addr00c2:
                                          facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + NAME);
                                          if(_loc3_)
                                          {
                                             addr00d5:
                                             facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this._component.uiInfolayerAlignmentLineTop,this._component.uiInfolayerAlignmentLineBottom],this));
                                             if(_loc3_ || _loc2_)
                                             {
                                                this._baseCount = ImprovementStoreRewardSkinClass.calculateRequestColumnCount(this._data.rewards.length);
                                                addr011a:
                                             }
                                          }
                                       }
                                       var _loc1_:Vector.<RewardImprovementItemComponentVo> = new Vector.<RewardImprovementItemComponentVo>(this._data.rewards.length);
                                       var _loc2_:int = 0;
                                       loop0:
                                       do
                                       {
                                          §§push(_loc2_);
                                          loop1:
                                          while(true)
                                          {
                                             §§push(this._baseCount);
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   _loc1_[_loc2_] = this._data.rewards.shift();
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      _loc1_[_loc2_].animationDelay = -1;
                                                      if(_loc3_ || Boolean(_loc1_))
                                                      {
                                                         §§goto(addr0190);
                                                      }
                                                      §§goto(addr0250);
                                                   }
                                                   addr0190:
                                                   §§push(_loc2_);
                                                   if(_loc4_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(this._baseCount);
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   if(§§pop() + §§pop() >= _loc1_.length)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      _loc1_[_loc2_ + this._baseCount] = this._data.rewards.splice(2 - _loc2_ % 3,1)[0];
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      _loc1_[_loc2_ + this._baseCount].animationDelay = -1;
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr0250:
                                                      addr0250:
                                                      this.container.contentGroup.addElement(this._component);
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         addr026d:
                                                         this._nextAnimationStep = 0;
                                                         if(_loc3_)
                                                         {
                                                            addr0278:
                                                            this.nextAnimationStep();
                                                         }
                                                         §§goto(addr027d);
                                                      }
                                                      §§goto(addr0278);
                                                   }
                                                   this._component.data = this._data;
                                                   §§goto(addr0232);
                                                }
                                                §§goto(addr0232);
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       while(_loc2_++, _loc3_ || _loc3_);
                                       
                                       this._data.rewards = _loc1_;
                                       if(!_loc4_)
                                       {
                                          this.checkResources();
                                          if(!_loc4_)
                                          {
                                             addr0232:
                                             if(!_loc4_)
                                             {
                                                §§goto(addr0250);
                                             }
                                             addr027d:
                                             return;
                                          }
                                          §§goto(addr026d);
                                       }
                                       §§goto(addr0250);
                                    }
                                    §§goto(addr00d5);
                                 }
                                 §§goto(addr00c2);
                              }
                              §§goto(addr00a2);
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr011a);
               }
               §§goto(addr0051);
            }
            §§goto(addr0062);
         }
         §§goto(addr008a);
      }
      
      private function setupListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._component);
            if(_loc1_ || _loc2_)
            {
               §§push(ImprovementStoreDataGrid.BUY_PACK);
               if(_loc1_ || Boolean(this))
               {
                  §§pop().addEventListener(§§pop(),this.handleBuy);
                  if(_loc1_)
                  {
                     addr0046:
                     §§push(this._component);
                     if(_loc1_ || Boolean(this))
                     {
                        §§push(ImprovementStoreDataGrid.OPEN_CURRENCY_REAL);
                        if(_loc1_ || Boolean(this))
                        {
                           addr0074:
                           §§pop().addEventListener(§§pop(),this.handleOpenTreasury);
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(this._component);
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§goto(addr00b6);
                                 }
                                 §§goto(addr00cc);
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr00c2);
                        }
                        addr00b6:
                        §§pop().addEventListener(§§pop(),this.handleOpenTreasury);
                        if(!_loc2_)
                        {
                           addr00cc:
                           this._component.addEventListener(ImprovementStoreAnimationGrid.SKIP_ANIMATION,this.handleSkip);
                           addr00c6:
                           addr00c2:
                        }
                        return;
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr0074);
            }
            §§goto(addr00c6);
         }
         §§goto(addr0046);
      }
      
      private function handleBuy(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            param1.stopPropagation();
         }
         var _loc2_:* = this._data.boosterpackVo.currencyType == ServerResConst.RESOURCE_REALCURRENCY;
         if(!(_loc3_ && Boolean(param1)))
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_IMPROVEMENT_BOOSTER_BUY,{
               "boosterId":this._data.boosterpackVo.config.id,
               "real":_loc2_
            });
            if(!_loc3_)
            {
               addr0077:
               if(_loc2_)
               {
                  if(_loc4_ || Boolean(this))
                  {
                     StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                  }
               }
            }
            return;
         }
         §§goto(addr0077);
      }
      
      private function handleOpenTreasury(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            param1.stopPropagation();
            if(!_loc3_)
            {
               if(param1.type == ImprovementStoreDataGrid.OPEN_CURRENCY_REAL)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005a:
                     sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
                     if(_loc3_)
                     {
                        addr0084:
                        sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_VIRTUALCURRENCY);
                     }
                  }
               }
               else if(param1.type == ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0084);
                  }
               }
               return;
            }
         }
         §§goto(addr005a);
      }
      
      private function showPage(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:int = 1;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * 3));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               §§push(this._baseCount);
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc5_ && Boolean(this))
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        §§push(_loc3_);
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc5_ && Boolean(param1))
                              {
                                 addr0156:
                                 (this._component.itemList.dataProvider as ArrayCollection).refresh();
                                 break;
                              }
                           }
                           else
                           {
                              §§push(_loc4_);
                              if(_loc6_)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 if(§§pop() < §§pop() + 3)
                                 {
                                    if(_loc6_ || Boolean(this))
                                    {
                                       §§push(this._data);
                                       if(_loc6_)
                                       {
                                          §§pop().rewards[_loc4_].animationDelay = _loc2_ * spawnDelay + scrollDuration;
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(_loc4_);
                                          if(_loc5_ && _loc3_)
                                          {
                                             continue loop1;
                                          }
                                          addr00c1:
                                          §§push(this._baseCount);
                                          if(_loc5_ && Boolean(this))
                                          {
                                             continue;
                                          }
                                          addr00d3:
                                          if(§§pop() + §§pop() < this._data.rewards.length)
                                          {
                                             if(!_loc5_)
                                             {
                                                addr00eb:
                                                this._data.rewards[_loc4_ + this._baseCount].animationDelay = (4 + _loc4_ % 3) * spawnDelay + scrollDuration;
                                                if(_loc5_ && Boolean(param1))
                                                {
                                                   break;
                                                }
                                                addr0119:
                                                _loc2_++;
                                                if(!_loc6_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             addr0121:
                                             _loc4_++;
                                             if(!(_loc6_ || _loc3_))
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr0119);
                                       }
                                       §§goto(addr00eb);
                                    }
                                    else
                                    {
                                       §§goto(addr0156);
                                    }
                                 }
                                 §§goto(addr0121);
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr0121);
                        }
                        §§goto(addr00d3);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr0156);
               }
               break;
            }
            break;
         }
      }
      
      private function handleSkip(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            param1.stopPropagation();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < this._data.rewards.length)
            {
               this._data.rewards[_loc2_].animationDelay = -2;
               if(_loc4_)
               {
                  _loc2_++;
                  if(_loc3_ && Boolean(_loc2_))
                  {
                     break;
                  }
               }
               continue;
            }
            if(!_loc4_)
            {
               break;
            }
            §§push(this._component);
            if(_loc4_)
            {
               (§§pop().itemList.dataProvider as ArrayCollection).refresh();
               if(!_loc3_)
               {
                  §§push(this._spawnAnimationStopDelay);
                  if(_loc4_)
                  {
                     if(!§§pop())
                     {
                        break;
                     }
                     if(_loc4_ || Boolean(this))
                     {
                        addr00a7:
                        this._spawnAnimationStopDelay.kill();
                        if(!_loc3_)
                        {
                           break;
                        }
                        addr010c:
                        this._component.ShowBuyButton();
                        addr0110:
                        return;
                        addr0108:
                     }
                     addr00e3:
                     §§push(this._component);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        addr00f5:
                        §§pop().enableScrolling(true);
                        if(_loc4_ || Boolean(param1))
                        {
                           §§goto(addr0108);
                        }
                        §§goto(addr0110);
                     }
                     §§goto(addr010c);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr00e3);
            }
            §§goto(addr00f5);
         }
         §§push(this._pageScrollDelay);
         if(!(_loc3_ && Boolean(param1)))
         {
            if(§§pop())
            {
               if(!_loc3_)
               {
                  addr00ce:
                  this._pageScrollDelay.kill();
                  if(!_loc3_)
                  {
                     §§goto(addr00e3);
                  }
               }
               §§goto(addr0110);
            }
            §§goto(addr00e3);
         }
         §§goto(addr00ce);
      }
      
      private function removeListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._component);
            if(_loc2_ || _loc2_)
            {
               §§push(ImprovementStoreDataGrid.BUY_PACK);
               if(_loc2_ || _loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.handleBuy);
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(this._component);
                     if(_loc2_)
                     {
                        §§push(ImprovementStoreDataGrid.OPEN_CURRENCY_REAL);
                        if(!_loc1_)
                        {
                           §§goto(addr0075);
                        }
                        §§goto(addr00d5);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr00cb);
               }
               addr0075:
               §§pop().removeEventListener(§§pop(),this.handleOpenTreasury);
               if(_loc2_ || Boolean(this))
               {
                  §§push(this._component);
                  if(_loc2_ || Boolean(this))
                  {
                     addr009a:
                     §§push(ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL);
                     if(_loc2_ || Boolean(this))
                     {
                        §§pop().removeEventListener(§§pop(),this.handleOpenTreasury);
                        if(!(_loc1_ && _loc1_))
                        {
                           addr00d5:
                           this._component.removeEventListener(ImprovementStoreAnimationGrid.SKIP_ANIMATION,this.handleSkip);
                           addr00cf:
                           addr00cb:
                        }
                        §§goto(addr00dd);
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr00cf);
               }
               addr00dd:
               return;
            }
            §§goto(addr009a);
         }
         §§goto(addr00cb);
      }
      
      private function nextAnimationStep() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:String = this.ANIMATIONSTEPS[this._nextAnimationStep];
         if(!_loc4_)
         {
            var _loc2_:* = this;
            §§push(_loc2_._nextAnimationStep);
            if(_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || Boolean(_loc1_))
            {
               _loc2_._nextAnimationStep = _loc3_;
            }
         }
         _loc2_ = _loc1_;
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            §§push(START);
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               §§push(_loc2_);
               if(_loc5_ || Boolean(_loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || Boolean(this))
                     {
                        addr01d0:
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr0206:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ANIMATION);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(_loc2_);
                        if(_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§goto(addr0206);
                              }
                              else
                              {
                                 addr0238:
                                 §§push(2);
                                 if(_loc4_ && Boolean(this))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(SPAWN);
                              if(!_loc4_)
                              {
                                 §§push(_loc2_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr0238);
                                       }
                                       else
                                       {
                                          addr0254:
                                          §§push(3);
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                       §§goto(addr026c);
                                    }
                                    else
                                    {
                                       §§goto(addr0250);
                                    }
                                 }
                                 addr0250:
                                 §§goto(addr024f);
                              }
                              addr024f:
                              if(IDLE === _loc2_)
                              {
                                 §§goto(addr0254);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr026c);
                           }
                           §§goto(addr026c);
                        }
                        §§goto(addr0250);
                     }
                     §§goto(addr024f);
                  }
                  addr026c:
                  loop0:
                  while(true)
                  {
                     switch(§§pop())
                     {
                        case 0:
                           this._improvementAnimationDelay = TweenLite.delayedCall(animationDelay,this.showImprovementpackAnimation);
                           if(!_loc4_)
                           {
                              §§push(this._component);
                              if(!_loc4_)
                              {
                                 §§push(false);
                                 if(_loc5_)
                                 {
                                    §§pop().enableScrolling(§§pop());
                                    if(_loc5_)
                                    {
                                    }
                                    break loop0;
                                 }
                                 addr016f:
                                 §§pop().enableScrolling(§§pop());
                                 if(!_loc4_)
                                 {
                                    this._nextAnimationStep = 0;
                                    if(_loc5_)
                                    {
                                    }
                                 }
                                 break loop0;
                              }
                              break;
                           }
                           break loop0;
                        case 1:
                           this._improvementAnimationDelay = TweenLite.delayedCall(animationDuration,this.stopImprovementpackAnimation);
                           if(_loc4_ && _loc3_)
                           {
                           }
                           break loop0;
                        case 2:
                           this._currentPage = 0;
                           if(_loc5_)
                           {
                              this.showPage(this._currentPage);
                              if(!_loc5_)
                              {
                                 break loop0;
                              }
                           }
                           §§push(this._baseCount);
                           if(_loc5_ || Boolean(this))
                           {
                              if(§§pop() <= 3)
                              {
                                 §§push(this);
                                 §§push(TweenLite);
                                 §§push(this._data.rewards.length * spawnDelay);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + spawnDuration);
                                 }
                                 §§pop()._spawnAnimationStopDelay = §§pop().delayedCall(§§pop(),this.stopSpawnAimation);
                                 if(_loc4_)
                                 {
                                 }
                                 break loop0;
                              }
                              if(!_loc5_)
                              {
                                 break loop0;
                              }
                              §§push(this);
                              §§push(TweenLite);
                              §§push(6 * spawnDelay);
                           }
                           continue;
                           if(!_loc4_)
                           {
                              §§push(spawnDuration);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc5_)
                                 {
                                    addr0115:
                                    addr0112:
                                    §§push(§§pop() + scrollDelay);
                                 }
                                 §§pop()._pageScrollDelay = §§pop().delayedCall(§§pop(),this.scrollToNextPage);
                                 if(_loc5_)
                                 {
                                 }
                                 break loop0;
                              }
                              §§goto(addr0115);
                           }
                           §§goto(addr0112);
                           break;
                        case 3:
                           §§push(this._component);
                           break;
                        default:
                           break loop0;
                     }
                     §§goto(addr016f);
                  }
                  return;
               }
               §§goto(addr0250);
            }
            §§goto(addr024f);
         }
         §§goto(addr01d0);
      }
      
      private function showImprovementpackAnimation() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._improvementAnimationDelay.kill();
            if(!(_loc1_ && _loc2_))
            {
               addr0035:
               this._component.startItemAnimation();
               if(!_loc1_)
               {
                  this.nextAnimationStep();
               }
            }
            return;
         }
         §§goto(addr0035);
      }
      
      private function stopImprovementpackAnimation() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this._component.RemoveItemAnimation(null);
            if(_loc1_)
            {
               addr002c:
               this.nextAnimationStep();
            }
            return;
         }
         §§goto(addr002c);
      }
      
      private function stopSpawnAimation() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.nextAnimationStep();
         }
      }
      
      public function get container() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.onRemove();
            if(_loc2_)
            {
               this.removeListeners();
               if(!_loc1_)
               {
                  §§goto(addr0033);
               }
               §§goto(addr007a);
            }
            addr0033:
            §§push(this._component);
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(§§pop());
               if(!(_loc1_ && _loc1_))
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  §§push(_temp_5);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           if(!(_loc1_ && _loc2_))
                           {
                              addr007a:
                              §§push(this.container);
                              if(_loc2_)
                              {
                                 §§push(§§pop().contentGroup);
                                 if(!_loc1_)
                                 {
                                    §§goto(addr0097);
                                 }
                                 §§goto(addr00a1);
                              }
                              §§goto(addr00c3);
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr00a1);
                     }
                     addr0097:
                     var _temp_7:* = §§pop();
                     §§goto(addr0098);
                  }
                  addr0098:
                  §§push(_temp_7);
                  if(_temp_7)
                  {
                     if(!_loc1_)
                     {
                        addr00a1:
                        §§pop();
                        if(_loc2_)
                        {
                           §§goto(addr00b6);
                        }
                        §§goto(addr00bf);
                     }
                  }
                  addr00b6:
                  §§goto(addr00ab);
               }
               §§goto(addr00a1);
            }
            addr00ab:
            if(this._component.parent == this.container.contentGroup)
            {
               if(!_loc1_)
               {
                  addr00c3:
                  this.container.contentGroup.removeElement(this._component);
                  addr00bf:
               }
            }
            return;
         }
         §§goto(addr00bf);
      }
      
      private function checkResources() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = false;
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         if(_loc4_ || _loc1_)
         {
            if(this._data.boosterpackVo.currencyType == ServerResConst.RESOURCE_REALCURRENCY)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0061:
                  §§push(_loc2_.realCurrency);
                  if(!_loc3_)
                  {
                     §§push(§§pop() >= Math.abs(this._data.boosterpackVo.defaultCostAmount));
                     if(_loc4_ || _loc3_)
                     {
                        _loc1_ = §§pop();
                        if(_loc4_)
                        {
                           addr00c3:
                           this._component.hasEnoughResources(_loc1_);
                        }
                     }
                     else
                     {
                        addr00b4:
                        _loc1_ = §§pop();
                        if(_loc4_ || _loc1_)
                        {
                           §§goto(addr00c3);
                        }
                     }
                     return;
                  }
                  addr00a3:
                  §§push(§§pop() >= Math.abs(this._data.boosterpackVo.defaultCostAmount));
                  §§goto(addr00b4);
               }
               §§goto(addr00c3);
            }
            else
            {
               §§push(_loc2_.ingameCurrency);
            }
            §§goto(addr00a3);
         }
         §§goto(addr0061);
      }
      
      private function scrollToNextPage() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(this._component);
            if(_loc4_ || Boolean(this))
            {
               §§pop().scrollToNextPage();
               if(_loc4_)
               {
                  var _loc1_:* = this;
                  §§push(_loc1_._currentPage);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc2_:* = §§pop();
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_._currentPage = _loc2_;
                  }
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     this.showPage(this._currentPage);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr007e);
                     }
                     §§goto(addr008f);
                  }
                  addr007e:
                  addr0082:
                  if(this._component.hasNextPage)
                  {
                     if(!_loc3_)
                     {
                        addr008f:
                        §§push(this);
                        §§push(TweenLite);
                        §§push(scrollDuration);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§push(§§pop() * 2);
                           if(!_loc3_)
                           {
                              §§push(spawnDelay);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop() * 6);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr00e0:
                                       §§push(spawnDuration);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr00f0);
                                       }
                                       §§goto(addr00f9);
                                    }
                                    §§goto(addr00f6);
                                 }
                                 addr00f0:
                                 §§push(§§pop() + §§pop());
                                 if(!_loc3_)
                                 {
                                    addr00f9:
                                    addr00f6:
                                    §§push(§§pop() + scrollDelay);
                                 }
                                 §§pop()._pageScrollDelay = §§pop().delayedCall(§§pop(),this.scrollToNextPage);
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr016f);
                              }
                              §§goto(addr00f9);
                           }
                        }
                        §§goto(addr00e0);
                     }
                  }
                  else
                  {
                     §§push(this);
                     §§push(TweenLite);
                     §§push(scrollDuration);
                     if(_loc4_ || Boolean(_loc1_))
                     {
                        §§push(§§pop() * 2);
                        if(_loc4_)
                        {
                           addr012d:
                           §§push(spawnDelay);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() * 6);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr0163);
                              }
                           }
                           §§goto(addr0162);
                        }
                        addr0163:
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           addr0162:
                           §§push(§§pop() + spawnDuration);
                        }
                        §§pop()._spawnAnimationStopDelay = §§pop().delayedCall(§§pop(),this.stopSpawnAimation);
                        §§goto(addr016f);
                     }
                     §§goto(addr012d);
                  }
               }
               §§goto(addr016f);
            }
            §§goto(addr0082);
         }
         addr016f:
      }
      
      private function component_ITEM_OUTHandler(param1:ImprovementStoreItemRendererEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function component_ITEM_OVERHandler(param1:ImprovementStoreItemRendererEvent) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         §§push(ImprovementStoreRewardSkinClass.calculateRequestColumnCount(this._data.rewards.length));
         if(!(_loc7_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc6_)
         {
            if(param1.elementIndex < _loc2_)
            {
               §§goto(addr0044);
            }
            else
            {
               §§push(LINEID_1);
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr0075);
               }
            }
            §§goto(addr007c);
         }
         addr0044:
         §§push(LINEID_0);
         if(!_loc7_)
         {
            §§push(§§pop());
            if(_loc7_)
            {
            }
            addr007c:
            §§push(§§pop());
         }
         else
         {
            addr0075:
            §§push(§§pop());
            if(_loc6_)
            {
               §§goto(addr007c);
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.selectedConfigID);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:Point = param1.target.localToGlobal(new Point());
         _loc5_.x += param1.target.width / 2;
         if(!(_loc7_ && _loc2_))
         {
            sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
               "cid":_loc4_,
               "lineId":_loc3_,
               "pt":_loc5_
            },NAME);
         }
      }
   }
}

